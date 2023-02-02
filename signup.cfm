<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <link rel="stylesheet" href="assets/modal.css">
        <script src="js/signup.js"></script>
        <title>YouTube Sign in</title>
    </head>
    <body>
        <cfoutput>
             <div class="w3-modal-content" style="border-radius: 30px; margin-bottom: 30px; width: 950px;">
                <div class="flex">
                    <div class="red">
                        <img src="assets/signup.jpg" class="signupimg">
                    </div>
                    <div class="signupset">
                        <p class="signuptxt">Register</p>
                        <div class="regform">
                            <form method="post" class="signform" autocomplete="off" onsubmit="return validatesignup()">
                                Full Name<span class="colorred">*</span><br>
                                <input type="text" name="fullname" id="fullname" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="fullname_error">Please fill this field!!</span><br>
                                Email<span class="colorred">*</span><br>
                                <input type="text" name="email" id="email" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="email_error">Please fill this field!!</span><br>
                                Phone Number<span class="colorred">*</span><br>
                                <input type="text" name="number" id="number" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="number_error">Please fill this field!!</span><br>
                                User Name<span class="colorred">*</span><br>
                                <input type="text" name="username" id="username" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="username_error">Please fill this field!!</span><br>
                                Password<span class="colorred">*</span><br>
                                <input type="password" name="pswd" id="pswd" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="pwsd_error">Please fill this field!!</span><br>
                                Conform Password<span class="colorred">*</span><br>
                                <input type="password" name="conpswd" id="conpswd" class="inputform" onblur="validatesignup()"><br>
                                <span class="error" id="conpswd_error">Please fill this field!!</span><br>
                                <span class="error" id="conform_error">Doesn't match!!</span>
                                <input type="submit" name="submit" id="submit" value="Register" onclick="document.getElementById('signin').style.display='block'" class="register pointer">
                            </form>
                            <div id="signin" class="w3-modal">
                                <cfinclude template="login.cfm">
                            </div>
                            <cfif structKeyExists(form, 'submit')>
                                <cfinvoke method="getsignup" component="components/signup">
                            </cfif>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>