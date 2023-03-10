<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <title>Library-YouTube</title> 
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
                        <a href="library.cfm" class="link"><div class="home library selected flex padding pointer">
                            <img src="assets/library.png" alt="Not found" class="width">
                            <span class="text">Library</span>
                        </div></a>
                        <a href="history.cfm" class="link"><div class="home flex padding pointer">
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
                <div class="content flex">
                    <div class="libcont">
                        <div class="libhistory">
                            <a href="history.cfm" class="link">
                                <div class="history flex pointer">
                                    <img src="assets/history.png" alt="Not found" class="width">
                                    <span class="libtext">History</span>
                                </div>
                            </a>
                            <p class="libp">Videos you watch will show up here. <a href="homepage.cfm" class="link browse">Browse videos</a></p>
                        </div>
                        <div class="libhistory">
                            <a href="watchlater.cfm" class="link">
                                <div class="history flex pointer">
                                    <img src="assets/watchlater.png" alt="Not found" class="width">
                                    <span class="libtext">Watch Later</span>
                                </div>
                            </a>
                            <p class="libp">Save videos to watch later. Your list shows up right here.</p>
                        </div>
                        <div class="libhistory">
                            <a href="likevideos.cfm" class="link">
                                <div class="history flex pointer">
                                    <img src="assets/like.png" alt="Not found" class="width">
                                    <span class="libtext">Like Videos</span>
                                </div>
                            </a>
                            <p class="libp">Use the thumbs up icon to like videos. Your list shows up right here.</p>
                        </div>
                    </div>
                    <div class="libside">
                        <div class="libletter">
                            <cfinvoke method="getUser" component="components/user" returnvariable="userpage">
                            <span>
                                <cfset local.userimage = userpage.Profile>
                                <img src="assets/file/#local.userimage#" name="myImage" class="libletter">
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>