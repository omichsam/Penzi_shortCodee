<?php
   session_start();
   $_SESSION['sender'] = $_POST['sender'];
   $_SESSION['receiver'] = $_POST['receiver'];
   $_SESSION['message'] = $_POST['message'];
   $_SESSION['$message1'] = "Welcome to our dating service with 6000 potential dating patners! To register sms 
               START#name#age#sex#province#town to 25005 E.G START#Mike#26#Male#COast#malindi";
   $_SESSION['$message2'] = "You were registered for dating with your details your initial details.
                    Enjoy yourself, To search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi";

   $_SESSION['$message3'] = " Thank you. SMS details#level of education#profession#marital_status#religion#tribe to 25005
                    E.G details#diploma#accountant#single#christian#mijikenda";
   $_SESSION['$message4']  = "This is the last stage of registration SMS a brief description of yourself to 25005 starting 
                   with the word MYSELF E.G MYSELF,chocolate, lovely,sexy etc";

  $_SESSION['$message5'] = "You are now registered for dating with your details your initial details. Enjoy yorself, To 
                   search for a MPENZI, SMS Match#age#town to 5001 E.G Match#23-25#Nairobi"; 
  $_SESSION['$message6'] = "You are now registered for dating with your details your initial details. Enjoy yorself, To 
                    search for a MPENZI, SMS Match#age#town to 25005 E.G Match#23-25#Nairobi"; 
  $_SESSION['activate'] = "You are now registered!. Enjoy yourself. To search for a Mpenzi 
                           SMS Match #age#town to 25005, E.G Match#23-25#Nairobi"; 
  $_SESSION['Deactivate'] = "  Hi Andrew! You are due for deactivation from our dating service on Tuesday the 25th To
                        re-activate send ACTIVATE to 25005";

   $getUserOption = (explode("#", $_SESSION['message']));

   $UserOption = strtoupper(($getUserOption[0]));
   $message = $_SESSION['message'];
   $receiver = $_SESSION['receiver'];
   $sender = $_SESSION['sender'];