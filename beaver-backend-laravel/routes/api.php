<?php

use App\Http\Controllers\CourseController;
use App\Http\Controllers\CourseInstructorController;
use App\Http\Controllers\CourseObjectiveController;
use App\Http\Controllers\ExamController;
use App\Http\Controllers\ExamFormatController;
use App\Http\Controllers\ExamObjectiveController;
use App\Http\Controllers\ExamTypeController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\QaFeedbackController;
use App\Http\Controllers\StudentEnrolmentController;
use App\Http\Controllers\StudentPerformanceController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VerificationController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// login route
Route::post('login',[UserController::class,'login']);
Route::post('register',[UserController::class,'store']);

Route::get('email/verify',function (){
    return response()
        ->json([
            'status' => 'error',
            'message' => 'Email not verified. Check your email for verification link.'
        ]);
})->name('verification.notice');

Route::get('email/verify/{id}/{hash}',[VerificationController::class,'verify'])
//    ->middleware(['signed','throttle:6,1'])
    ->name('verification.verify');

Route::post('email/resend',[VerificationController::class,'resendVerificationEmail'])
    ->middleware(['throttle:6,1'])
    ->name('verification.resend');

Route::post('forgot-password',[UserController::class,'forgotPassword'])
    ->middleware('guest')
    ->name('password.email');

Route::get('reset-password/{token}',[UserController::class,'resetPassword'])
    ->middleware('guest')
    ->name('password.reset');

Route::post('update-password',[UserController::class,'updatePassword'])
    ->middleware('guest')
    ->name('password.update');

Route::middleware(['auth:sanctum','verified'])->group(function() {
    Route::resource('courses', CourseController::class);
    Route::resource('course-instructors', CourseInstructorController::class);
    Route::resource('users', UserController::class)
        ->except('store','login','logout','changePassword');
    Route::get('deactivate-user/{user}',[UserController::class,'deactivateUser']);
    Route::resource('course-objectives', CourseObjectiveController::class);
    Route::resource('exams', ExamController::class);
    Route::resource('student-enrolments', StudentEnrolmentController::class);
    Route::resource('student-performances', StudentPerformanceController::class);
    Route::get('student-performances-aggregation',[StudentPerformanceController::class,'getAverageStudentPerformanceByCourse']);

    Route::resource('exam-objectives', ExamObjectiveController::class);

    Route::get('chat-messages/{sender_id}/{receiver_id}', [MessageController::class,'index']);
    Route::post('chat-messages',[MessageController::class,'store']);

    Route::resource('tickets', TicketController::class);
    Route::get('toggle-ticket-status/{ticket}',[TicketController::class,'toggleTicketStatus']);
    Route::resource('qa-feedback', QaFeedbackController::class);

    Route::get('exam-types',[ExamTypeController::class,'index']);
    Route::get('exam-formats',[ExamFormatController::class,'index']);

    Route::post('change-password',[UserController::class,'changePassword']);
    Route::post('logout',[UserController::class,'logout']);
});
