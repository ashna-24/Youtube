<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <script src="js/videoupload.js"></script>
        <script src="js/updatesub.js"></script>
        <script src="js/upload.js"></script>
        <script src="js/adminprofile.js"></script>
        <script src="js/viewvideo.js"></script>
        <script src="assets/jQuery.js"></script>
        <script src="assets/jQuerymin.js"></script>
        <title>YouTube</title> 
    </head>
    <body class="body">
        <cfoutput>
            <cfif structKeyExists(session, 'adminflag')>
                <cfinclude  template="adminheader.cfm">
                <div class="mainbody flex" id="ytbbody">
                    <div class="sidebar sidescroll">
                        <div class="set">
                            <a href="homepage.cfm" class="link"><div class="home selected flex padding pointer">
                                <img src="assets/home.png" alt="Not found" class="width">
                                <span class="text">Home</span>
                            </div></a>
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
                            <a href="history.cfm" class="link"><div class="home history flex padding pointer">
                                <img src="assets/history.png" alt="Not found" class="width">
                                <span class="text">History</span>
                            </div></a>
                            <a href="adminpage.cfm" target="_blank" class="link">
                                <div class="home watch flex padding pointer">
                                    <img src="assets/slideshow.png" alt="Not found" class="width">
                                    <span class="text">Your videos</span>
                                </div>
                            </a>
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
                        <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                        <div class="list flex">
                            <div class="all pointer">
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
                                <div class="video1">
                                    <span class="videoset">
                                        <a onclick="viewvideo(#uploadVideo.ID#)">
                                            <video width="260px" controls height="150px" class="upvideo" onclick="viewvideo(#uploadVideo.ID#); adminviewdisplay()" id="upvideo">
                                                <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                            </video>
                                        </a>
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
                                </div>
                            </cfloop>
                        </div>
                    </div>
                </div>
                <div class="displayview" id="adminview">
                    <cfinclude template="adminview.cfm">
                </div>
            </cfif>
        </cfoutput>
    </body>
</html>