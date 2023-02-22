<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <title>Like videos-YouTube</title> 
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
                    <div class="channelbg">
                        <img src="assets/desktop.jpg" alt="Not found" class="bgimg">
                    </div>
                    <div class="channeldtls flex">
                        <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                        <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                        <div class="channelsubimg">
                            <cfset local.profileimage = uploadlogin.Profile>
                            <img src="assets/file/#local.profileimage#" name="myImage" class="chnlimg">
                        </div>
                        <div class="dtlschannel">
                            <p class="chnldtlsupload">#uploadlogin.FullName#</p>
                            <p class="chnl">#uploadlogin.Email#</p>
                            <p class="chnl">#uploadVideo.Subscribers# subscribers</p>
                        </div>
                    </div>
                    <div class="chnlcont">
                        <div class="contchnldtls flex">
                            <a href="Channel.cfm" class="decoration">
                                <div class="channelhome chnlhome pointer">
                                    <p class="chnlhme">HOME</p>
                                </div>
                            </a>
                            <a href="videos.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme">VIDEOS</p>
                                </div>
                            </a>
                            <a href="shorts.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme">SHORTS</p>
                                </div>
                            </a>
                            <a href="playlists.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme chnlselected">PLAYLISTS</p>
                                </div>
                            </a>
                            <a href="community.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme">COMMUNITY</p>
                                </div>
                            </a>
                            <a href="details.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme">CHANNELS</p>
                                </div>
                            </a>
                            <a href="about.cfm" class="decoration">
                                <div class="chnlhome pointer">
                                    <p class="chnlhme">ABOUT</p>
                                </div>
                            </a>
                        </div>
                        <div class="chnldivvideos">
                            This channel has no playlist!
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>