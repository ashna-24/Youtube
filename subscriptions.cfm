<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <script src="js/view.js"></script>
        <title>Subscriptions-YouTube</title> 
    </head>
    <body>
        <cfoutput>
            <cfinclude  template="header.cfm">
            <div class="mainbody flex">
                <div class="sidebar sidescroll">
                    <div class="set">
                        <a href="homepage.cfm" class="link"><div class="home flex padding pointer">
                            <img src="assets/homefill.png" alt="Not found" class="width">
                            <span class="text">Home</span>
                        </div></a>
                        <a href="subscriptions.cfm" class="link"><div class="home subscriptions selected flex padding pointer">
                            <img src="assets/subscribe.png" alt="Not found" class="width">
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
                    <div class="subset1">
                        <p class="subpara">Entertainment</p>
                        <div class="subdiv">
                            <div class="subcribeset">
                                <a href="Channel.cfm" class="link">
                                    <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                                    <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                                    <div class="videosubimg">
                                        <cfset local.profileimage = uploadlogin.Profile>
                                        <img src="assets/file/#local.profileimage#" name="myImage" class="subimg">
                                    </div>
                                    <p class="subdtlsupload">#uploadlogin.FullName#</p>
                                    <p class="subcount">#uploadVideo.Subscribers# subscribers</p>
                                </a>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                        </div>
                    </div>
                    <div class="subset1 subset2">
                        <p class="subpara">Music</p>
                        <div class="subdiv flex">
                            <div class="subcribeset">
                                <div class="videosubimg">
                                    <img src="assets/justin.jpg" name="myImage" class="subimg">
                                </div>
                                <p class="subdtlsupload">Justin Bieber</p>
                                <p class="subcount">71M subscribers</p>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                            <div class="subcribeset">
                                <div class="videosubimg">
                                    <img src="assets/chris.jpg" name="myImage" class="subimg">
                                </div>
                                <p class="subdtlsupload">Chris Brown</p>
                                <p class="subcount">24.7M subscribers</p>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                            <div class="subcribeset">
                                <div class="videosubimg">
                                    <img src="assets/rahman.jpg" name="myImage" class="subimg">
                                </div>
                                <p class="subdtlsupload">A R Rahman</p>
                                <p class="subcount">3.27M subscribers</p>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                            <div class="subcribeset">
                                <div class="videosubimg">
                                    <img src="assets/spb.jpg" name="myImage" class="subimg">
                                </div>
                                <p class="subdtlsupload">S P B</p>
                                <p class="subcount">798k subscribers</p>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                            <div class="subcribeset">
                                <div class="videosubimg">
                                    <img src="assets/chithra.jpg" name="myImage" class="subimg">
                                </div>
                                <p class="subdtlsupload">K S Chithra</p>
                                <p class="subcount">517k subscribers</p>
                                <input type="button" class="subbutton" name="subscribe" id="subscribe" value="Subscribe" onclick="subscribed()">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>