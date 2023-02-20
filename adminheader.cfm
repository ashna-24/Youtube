<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <title>YouTube</title>
    </head>
    <body class="body">
        <cfoutput>
            <div class="header flex">
                <div class="headerLeft flex">
                    <div class="menu">
                        <img src="assets/menu.png" alt="Not found" class="menuicon">
                    </div>
                    <div class="logo flex displaytext">
                        <img src="assets/youtubelogo.png" alt="Not found" class="ytblogo">
                        <span class="ytbin">IN</span>
                    </div>
                </div>
                <div class="headerMiddle flex">
                    <div class="search flex">
                        <div class="searchinput">
                            <input type="search" name="search" id="search" class="ytbsearch" placeholder="Search">
                        </div>
                        <div class="searchicon">
                            <img src="assets/search.png" alt="Not found" class="ytb"> 
                        </div>
                    </div>
                    <div class="voice">
                        <img src="assets/mic.png" alt="Not found" class="mic width"> 
                    </div>
                </div>
                <div class="headerRight flex">
                    <div class="rightimg flex">
                        <img src="assets/video.png" alt="Not found" class="create width voice">
                        <img src="assets/notifications.png" alt="Not found" class="notification width voice">    
                    </div>
                    <div class="account">
                        <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                        <span>
                            <cfset local.profileimage = uploadlogin.Profile>
                            <img src="assets/file/#local.profileimage#" name="myImage" class="accountimg">
                        </span></a>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>