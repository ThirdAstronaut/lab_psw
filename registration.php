<?php
        												session_start(); ?>
<!DOCTYPE html>
<html>
   <head>
      <meta charset = "utf-8">
      <title>Registration Form</title>
      <style type = "text/css">
         p       { margin: 0px; }
         .error  { color: red }
         p.head  { font-weight: bold; margin-top: 10px; }
         label   { width: 5em; float: left; }
      </style>
   </head>
   <body>
      <?php
         $login = isset($_POST[ "login" ]) ? $_POST[ "login" ] : "";
         $passwd = isset($_POST[ "passwd" ]) ? $_POST[ "passwd" ] : "";   
         $fname = isset($_POST[ "fname" ]) ? $_POST[ "fname" ] : "";
         $lname = isset($_POST[ "lname" ]) ? $_POST[ "lname" ] : "";
         $email = isset($_POST[ "email" ]) ? $_POST[ "email" ] : "";
         $phone = isset($_POST[ "phone" ]) ? $_POST[ "phone" ] : "";
   
         $iserror = false;
         $formerrors = 
            array( "loginerror" => false,"passwderror" => false,"fnameerror" => false, "lnameerror" => false, 
               "emailerror" => false, "phoneerror" => false );

         $inputlist = array(  "login" => "Login", "passwd" => "Password", "fname" => "First Name",
            "lname" => "Last Name", "email" => "Email",
            "phone" => "Phone" );

         if ( isset( $_POST["submit"] ) )
         {
            if ( ($login == "" || strlen ($login) > 60) && !(isset( $_SESSION['zalogowany'] )) )                   
            {
               $formerrors[ "loginerror" ] = true;
               $iserror = true;                   
            } // end if

            if ( $passwd == "" || strlen ($passwd) > 60)                   
            {
               $formerrors[ "passwderror" ] = true;
               $iserror = true;                   
            } // end if

            if ( $fname == "" || strlen ($fname) > 60 )                   
            {
               $formerrors[ "fnameerror" ] = true;
               $iserror = true;                   
            } // end if

            if ( $lname == "" || strlen ($lname) > 60 ) 
            {
               $formerrors[ "lnameerror" ] = true;
               $iserror = true;
            } // end if

            if ( ($email == "") || strlen ($email) > 60 || !preg_match( '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/', 
            $email ) ) 
            {
               $formerrors[ "emailerror" ] = true;
               $iserror = true;
            } // end if       

            if ( !preg_match( '/^[0-9]{9,11}$/', 
               $phone ) ) 
            {
               $formerrors[ "phoneerror" ] = true;
               $iserror = true;
            } // end if
           if(!($iserror)){
            $mysql_host='localhost';
            $mysql_user='psw';
            $mysql_password='psw';
            $mysql_db='phpmyadmin';
            $sql ="";
            $db= mysqli_connect($mysql_host,$mysql_user,$mysql_password, $mysql_db) or die("Error " . mysqli_error($db));
            if(!($db)) die("<p>could not connect</p>");

            if( !(isset( $_SESSION['zalogowany'] ))){
            $sql="insert into users(login, passwd, fname, lname, email, phone) values('".$login."', '".$passwd."', '".$lname."', '".$fname."', '".$email."', " . 
            "'" . mysqli_real_escape_string($db, $phone ) . 
            "')"; // btw, this query is vulnerable to SQL injection
      } elseif( isset( $_SESSION['zalogowany'] )){
            $sql ="update users set passwd = '".$passwd."', fname = '".$fname."', lname = '".$lname."', 
            email = '".$email."', phone = '". mysqli_real_escape_string($db, $phone ) ."' where login = '".$_SESSION['user']."'";
           
      }
      $result = mysqli_query($db, $sql);
      mysqli_close( $db );
      if(!$result){
            print( "<p>An error occured. Probably your login is already taken</p>" );
            
      } else {

        

         print( "<p class = 'head'>The following information has been 
               changed in our database:</p>
            <p>Login: $login</p>
            <p>Password: $passwd</p>
            <p>Name: $fname $lname</p>
            <p>Email: $email</p>
            <p>Phone: $phone</p>
            <p><a href = 'diagnostic.php'>Click here to view 
               entire database.</a></p>
            </body></html>" );
         die(); // finish the page
      }
}
         }
      if(isset( $_SESSION['zalogowany'] )){
      echo ' <h1>'."Hello ".$_SESSION['user'].'</h1>';

         print( "<h1>Update form</h1>");
            if ( $iserror )                                              
         {                                                            
            print( "<p class = 'error'>Fields with * need to be filled 
               in properly.</p>" );
         } // end if

         print( "<form method = 'post' action = 'registration.php'>" );
         foreach ( $inputlist as $inputname => $inputalt )
         {
               if($inputalt === 'Login') {print( "<div><label>$inputalt:</label><input type = 'text'
                  name = '$inputname' value = '" .$_SESSION['user']. "' disabled>" );
            }else{
            print( "<div><label>$inputalt:</label><input type = 'text'
               name = '$inputname' value = '" . $$inputname . "'>" );
            }
            if ( $formerrors[ ( $inputname )."error" ] == true ) 
               print( "<span class = 'error'>*</span>" );        
            
            print( "</div>" );
         } // end foreach
      } else {
            print( "<h1>Registration Form</h1>");
               if ( $iserror )                                              
            {                                                            
               print( "<p class = 'error'>Fields with * need to be filled 
                  in properly.</p>" );
            } // end if
            
            print( "
               <form method = 'post' action = 'registration.php'>
              " );
            foreach ( $inputlist as $inputname => $inputalt )
            {
               print( "<div><label>$inputalt:</label><input type = 'text'
                  name = '$inputname' value = '" . $$inputname . "'>" );
               
               if ( $formerrors[ ( $inputname )."error" ] == true ) 
                  print( "<span class = 'error'>*</span>" );        
               
               print( "</div>" );
            } // end foreach
                  }
         if ( $formerrors[ "phoneerror" ] ) 
            print( "<p class = 'error'>Must be in the form 
               +4812345689" );
          
         $counter = 0;
        
         print( "<!-- create a submit button -->
            <p class = 'head'><input type = 'submit' name = 'submit'
            value = 'Send'></p></form></body></html>" );
      
   ?><!-- end PHP script -->
 