<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <script src="js/videoupload.js"></script> 
        <link rel="icon" href="assets/youtubeicon.png">
        <title>YouTube</title>
    </head>
    <body class="body">
        <cfoutput>
            <div class="header flex">
                <div class="headerLeft flex">
                    <div class="menu pointer">
                        <img src="assets/menu.png" alt="Not found" class="menuicon">
                    </div>
                    <div class="logo flex pointer">
                        <img src="assets/youtubelogo.png" alt="Not found" class="ytblogo">
                        <span class="ytbin">IN</span>
                    </div>
                </div>
                <div class="headerMiddle flex">
                    <div class="search flex">
                        <div class="searchinput">
                            <input type="search" name="search" id="search" class="ytbsearch" placeholder="Search">
                        </div>
                        <div class="searchicon pointer">
                            <img src="assets/search.png" alt="Not found" class="ytb">
                        </div>
                    </div>
                    <div class="voice pointer">
                        <img src="assets/mic.png" alt="Not found" class="mic width">
                    </div>
                </div>
                <div class="headerRight flex">
                    <div class="account pointer">
                        <img src="assets/more.png" alt="Not found" class="width">
                    </div>
                    <button onclick="document.getElementById('signin').style.display='block'" class="closetitle rightalign pointer">
                        <div class="right flex">
                            <img src="assets/profile.png" alt="Not found" class="width sign">
                            <span class="signin">Sign in</span>
                        </div>
                    </button>
                    <div id="signin" class="w3-modal">
                        <cfinclude template="login.cfm">
                    </div>
                </div>
            </div>
            <div class="mainbody flex">
                <div class="sidebar sidescroll">
                    <div class="set">
                        <a href="youtube.cfm" class="link"><div class="home selected flex padding pointer">
                            <img src="assets/home.png" alt="Not found" class="width">
                            <span class="text">Home</span>
                        </div></a>
                        <a href="subscriptions.cfm" class="link"><div class="home subscriptions flex padding pointer">
                            <img src="assets/subscriptions.png" alt="Not found" class="width">
                            <span class="text">Subscriptions</span>
                        </div>
                    </div>
                    <div class="set">
                        <a href="library.cfm" class="link"><div class="home library flex padding pointer">
                            <img src="assets/videolibrary.png" alt="Not found" class="width">
                            <span class="text">Library</span>
                        </div>
                        <a href="history.cfm" class="link"><div class="home history flex padding pointer">
                            <img src="assets/history.png" alt="Not found" class="width">
                            <span class="text">History</span>
                        </div>
                    </div>
                    <div class="set">
                        <p class="text align">Sign in to like videos,<br>comment, and subscribe.</p>
                        <button onclick="document.getElementById('signin').style.display='block'" class="closetitle pointer">
                            <div class="right flex side">
                                <img src="assets/profile.png" alt="Not found" class="width sign">
                                <span class="signin">Sign in</span>
                            </div>
                        </button>
                    </div>
                    <div class="set">
                        <div class="title">Explore</div>
                        <div class="home flex padding pointer">
                            <img src="assets/musicpage.jpg" alt="Not found" class="width sub">
                            <span class="text">Music</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/sportspage.jpg" alt="Not found" class="width sub">
                            <span class="text">Sports</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/trending.png" alt="Not found" class="width sub">
                            <span class="text">Trending</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/gamingpage.jpg" alt="Not found" class="width sub">
                            <span class="text">Gaming</span>
                        </div>
                    </div>
                    <div class="set">
                        <div class="home flex padding pointer">
                            <img src="assets/add.png" alt="Not found" class="width">
                            <span class="text">Browse channels</span>
                        </div>
                    </div>
                    <div class="set">
                        <div class="title">More from YouTube</div>
                        <div class="home flex padding pointer">
                            <img src="assets/youtubeicon.png" alt="Not found" class="width">
                            <span class="text">YouTube Premium</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/youtubemusic.png" alt="Not found" class="width">
                            <span class="text">YouTube Music</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/youtubetv.png" alt="Not found" class="width">
                            <span class="text">YouTube TV</span>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                    <div class="list flex">
                        <div class="all pointer black">
                            <span class="size">All</span>
                        </div>
                        <div class="all pointer">
                            <span class="size">Music</span>
                        </div>
                        <div class="all pointer">
                            <span class="size">Sports</span>
                        </div>
                        <div class="all pointer">
                            <span class="size">Trending</span>
                        </div>
                        <div class="all pointer">
                            <span class="size">Gaming</span>
                        </div>
                    </div>
                    <div class="youtubehome flex">
                        <cfloop query="uploadVideo">
                            <!--- <cfinvoke method="getupload" component="components/upload" returnVariable="result"> --->
                            <!--- <cfmediaplayer source="#expandpath(".\assets\uploadedfile\#session.uploadedfile#")#" width="200px" height="150px" name="myImage"> --->
                            <!--- <cfdump var="#result#"> --->
                            <div class="video1">
                                <span class="videoset">
                                    <video width="260px" controls height="150px" class="upvideo" id="upvideo" onclick="openFullscreen()">
                                        <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                    </video>
                                </span>
                                <div class="videodtls flex">
                                    <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                                    <span class="videoimg">
                                        <cfset local.profileimage = uploadlogin.Profile>
                                        <img src="assets/file/#local.profileimage#" name="myImage" class="videoimg">
                                    </span>
                                   <div class="videodiv">
                                            <h3 class="videoh3">#uploadVideo.Title#</h3><br>
                                        </div>
                                    <!--- #uploadVideo.Description# --->
                                </div>
                            </div>
                        </cfloop>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>