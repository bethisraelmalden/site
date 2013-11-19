<?php
  header('Content-type: application/json');

  require_once('Mail.php');

  $status = 'ok';
  $from = 'Congregation Beth Israel <no-reply@bethisraelmalden.org>';
  $to = 'Malden Mikvah <mikvah@bethisralemalden.org>';
  $appt_name = substr(filter_input(INPUT_POST, 'appt-name', FILTER_SANITIZE_EMAIL), 0, 40);
  $appt_phone = substr(filter_input(INPUT_POST, 'appt-phone', FILTER_SANITIZE_EMAIL), 0, 15);
  $appt_date = substr(filter_input(INPUT_POST, 'appt-date', FILTER_SANITIZE_URL), 0, 10);

  $subject = 'Mikvah - ' . $appt_name;
  $body = "Name: $appt_name\r\nDate: $appt_date\r\nPhone: $appt_phone\r\n";

  $headers = array(
      'From' => $from
    , 'To' => $to
    , 'Subject' => $subject
  );

  $sendmail = Mail::factory('sendmail');
  $mail = $sendmail->send($to, $headers, $body);

  if (PEAR::isError($mail)) { $status = $mail->getMessage(); }

  echo json_encode(array(
    'status' => $status
    //, 'headers' => $headers
    //, 'body' => $body
  ));
?>
