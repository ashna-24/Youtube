<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <link rel="stylesheet" href="assets/modal.css">
        <script src="js/login.js"></script>
        <title>YouTube Sign in</title>
    </head>
    <body>
        <cfoutput>
            <div class="w3-modal-content contentmodal">
                <span onclick="document.getElementById('signin').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                <div class="flex">
                    <div class="red">
                        <div class="redicon">
                            <img src="assets/youtubelogo.png" class="redimg">
                        </div>
                        <div class="redbagd">
                            <img src="assets/mobile.png" class="bagdimg">     
                        </div>
                    </div>
                    <div class="signinset">
                        <div class="signintext">
                            <p class="logintxt">LOGIN</p>
                            <div class="signinform">
                                <form method="post" action="homepage.cfm" autocomplete="off" class="loginform" onsubmit="return validatelogin()">
                                    Username<br>
                                    <input type="text" name="username" id="username" class="inputlogin" onblur="validatelogin()"><br>
                                    <span id="uname_error" class="error">Please Enter This Field!!</span><br>
                                    Password<br>
                                    <input type="password" name="pswd" id="pswd" class="inputlogin" onblur="validatelogin()"><br>
                                    <span id="pswd_error" class="error">Please Enter This Field!!</span>
                                    <input type="submit" name="submit" id="submit" value="Login" class="submit pointer">
                                </form>
                            </div>
                            <p class="optional">Don't have an account?<a onclick="document.getElementById('signup').style.display='block'" class="closetitle blue pointer">Register Here</a></p>
                            <div id="signup" class="w3-modal">
                                <cfinclude template="signup.cfm">
                            </div>
                        </div>
                    </div>
                </div>
             </div>
        </cfoutput>
    </body>
</html>