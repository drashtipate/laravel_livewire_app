<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Email</title>
</head>
<body>
    <h1>You have received an email</h1>

    <p><strong>Name: </strong>{{ $mailData['name'] }}</p>
    <p><strong>Email: </strong>{{ $mailData['email'] }}</p>
    <p><strong>Subject: </strong>{{ $mailData['subject'] }}</p>
    <p><strong>Message: </strong></p>
    <p> {{ $mailData['message'] }} </p>

    <p><strong>Thanks!!</strong></p>
</body>
</html>