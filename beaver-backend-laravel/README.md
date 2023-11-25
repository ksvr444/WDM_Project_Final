# Beaver Laravel Backend

### Pre-Requisites
1. Composer
2. Mysql/Postgres
3. PHP

### How to Setup
1. Navigate into the directory
2. Create a copy of the .env.example and name it .env

    `cp .env.example .env`

3. Inside the .env file, define the db connections based on the hosting environment
4. Navigate into the directory

    `cd <your-directory>`

5. Install dependencies to setup the composer project
    
    `composer install`

6. Run the following command to migrate the database
    
    `php artisan migrate`

7. Run the following command to generate key for the laravel project

    `php artisan key:generate`

8. Use the postman collection to test the working of the endpoints

## NOTE
1. To successfully receive requests from the UI, you'll needs to add the 
 react host as an allowable origin in the `CorMiddleware.php` file. 
Access this file `app/Http/Middleware/CorMiddleware.php`, take note of the below line

    `$response->header('Access-Control-Allow-Origin', 'http://localhost:3000');`

Instead of `http://localhost:3000` replace that with the host url on which the react setup is hosted

## ON CPANEL
1. Update the relevant urls and credentials above
2. Copy over all the files onto your remote directory, as you did in the previous vanilla php implementation of the project

## New Details
1. Ensure you setup the ui endpoint on .env accordingly
2. Ensure you setup the various gmail credentials on .env accordingly
3. Use the below link to setup  your gmail account to send mail, (you just need to set app password, and set corresponding credentials in .env,and you are good to go, the rest of the technical stuff I've done it for you)
3. Use this url to setup gmail account to send mail https://www.twilio.com/blog/send-emails-laravel-8-gmail-smtp-server
