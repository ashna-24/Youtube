<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <script src="js/videoupload.js"></script>
        <script src="js/adminprofile.js"></script>
        <script src="js/viewvideo.js"></script>
        <script src="assets/jQuery.js"></script>
        <script src="assets/jQuerymin.js"></script>
        <title>YouTube</title> 
    </head>
    <body class="body">
        <cfoutput>
            <cfif structKeyExists(session, 'userflag')>
                <cfinclude  template="header.cfm">
                <div class="mainbody flex" id="mainytbbody">
                    <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                    <div class="sidebar sidescroll">
                        <div class="set">
                            <div class="home selected flex padding pointer">
                                <img src="assets/home.png" alt="Not found" class="width">
                                <span class="text">Home</span>
                            </div>
                            <a href="subscriptions.cfm" class="link"><div class="home subscriptions flex padding pointer">
                                <img src="assets/subscriptions.png" alt="Not found" class="width">
                                <span class="text">Subscriptions</span>
                            </div></a>
                        </div>
                        <div class="set">
                            <a href="library.cfm" class="link"><div class="home library flex padding pointer">
                                <img src="assets/videolibrary.png" alt="Not found" class="width">
                                <span class="text">Library</span>
                            </div></a>
                            <a href="history.cfm" class="link"<!---  onclick="viewvideo(#uploadVideo.ID#); historyview()" --->><div class="home history flex padding pointer">
                                <img src="assets/history.png" alt="Not found" class="width">
                                <span class="text">History</span>
                            </div></a>
                            <a href="watchlater.cfm" class="link"><div class="home watch flex padding pointer">
                                <img src="assets/watchlater.png" alt="Not found" class="width">
                                <span class="text">Watch later</span>
                            </div></a>
                            <a href="likevideos.cfm" class="link"><div class="home like flex padding pointer">
                                <img src="assets/like.png" alt="Not found" class="width">
                                <span class="text">Liked videos</span>
                            </div></a>
                        </div>
                        <div class="set">
                            <div class="title">Subscriptions</div>
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
                        <div class="list flex">
                            <div class="all black">
                                <span class="size pointer">All</span>
                            </div>
                            <div class="all">
                                <span class="size pointer">Music</span>
                            </div>
                            <div class="all">
                                <span class="size pointer">Sports</span>
                            </div>
                            <div class="all">
                                <span class="size pointer">Trending</span>
                            </div>
                            <div class="all">
                                <span class="size pointer">Gaming</span>
                            </div>
                        </div>
                        <div class="youtubehome flex">
                            <cfloop query="uploadVideo">
                                <div class="video1">
                                    <!--- <a href="view.cfm" class="decoration"> --->
                                        <span class="videoset">
                                            <video width="260px" controls height="150px" class="upvideo" id="upload" onclick="viewvideo(#uploadVideo.ID#); viewdisplay()">
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
                                                <h3 class="videoh3">#uploadVideo.Title#</h3>
                                                <span class="dtlsupload">#uploadlogin.FullName#</span>
                                            </div>
                                        </div>
                                    <!--- </a> --->
                                </div>
                            </cfloop>
                        </div>
                    </div>
                </div>
                <div id="view" class="displayview">
                    <cfinclude  template="view.cfm">
                </div>
                <!--- <div class="displayview" id="historyview">
                    <cfinclude  template="history.cfm">
                </div> --->
            </cfif>
        </cfoutput>
    </body>
</html>