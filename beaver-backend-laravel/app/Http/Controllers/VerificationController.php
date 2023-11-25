<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class VerificationController extends Controller
{
    //
    public function verify($user_id, Request $request): \Illuminate\Http\RedirectResponse
    {
        // get the request url
        if (!$request->hasValidSignature()) {
            return redirect()
                ->to(getenv('APP_UI_URL').'/failed-email-verification');
        }

        $user = User::findOrFail($user_id);

        if (!$user->hasVerifiedEmail()) {
            $user->markEmailAsVerified();
        }

        return redirect()->to(getenv('APP_UI_URL').'/login');
    }

    public function resendVerificationEmail(Request $request): \Illuminate\Http\JsonResponse
    {
        // validate request
        $rules = [
            'email' => 'required|email|exists:users,email',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()){
            return response()
                ->json([
                    'status' => 'error',
                    'message' =>implode(",",$validator->errors()->all()),
                    'errors' => $validator->errors()
                ], 422);
        }

        $user = User::where('email','=',$request->email)->first();

        if ($user->hasVerifiedEmail()) {
            return response()
                ->json([
                    'status' => 'error',
                    'message'=>'User already have verified email!',
                    'data' => null
                ], 400);
        }

        $user->sendEmailVerificationNotification();

        return response()
            ->json([
                'status' => 'success',
                'message'=>'Email verification link sent on your email id',
                'data' => null
            ], 200);
    }
}
