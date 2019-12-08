<?php

if(empty($_POST)){
    echo 'No...';
    exit;
}
$name = '';
$email = '';
$subject = '';
$message = '';
$recipient = 'yasminamayot@gmail.com';

//some validations
if(isset($_POST['name'])){
    $name = filter_vat($_POST['name'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['email'])){
    $email = str_replace(array("\r", "\n", "%0a", "%0d"), '', $_POST['email']);
    $email = filter_var($email, FILTER_VALIDATE_EMAIL);
}

if(isset($_POST['subject'])){
    $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
}

if(isset($_POST['message'])){
    $message = $_POST['message'];
}

$headers = [
    'From' => 'noreply@test.ca',
    'Reply-To' => $name. '<'.$email. '>'
];

if(mail($recipient, $subject, $message, $headers)){
    echo '<p>Thank you for contacting me,' .$name. '. You will get a reply within 24 hours</p>';
}else{
    echo '<p>We are sorry but the email did not go through</p>';
}

?>