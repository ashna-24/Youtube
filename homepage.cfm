<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtube.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <title>YouTube</title> 
    </head>
    <body>
        <cfoutput>
            <cfinclude  template="header.cfm">
            <div class="mainbody flex">
                <div class="sidebar">
                    <div class="set">
                        <div class="home selected flex padding">
                            <img src="assets/home.png" alt="Not found" class="width">
                            <span class="text">Home</span>
                        </div>
                        <div class="home subscriptions flex padding">
                            <img src="assets/subscriptions.png" alt="Not found" class="width">
                            <span class="text">Subscriptions</span>
                        </div>
                    </div>
                    <div class="set">
                        <div class="home library flex padding">
                            <img src="assets/videolibrary.png" alt="Not found" class="width">
                            <span class="text">Library</span>
                        </div>
                        <div class="home history flex padding">
                            <img src="assets/history.png" alt="Not found" class="width">
                            <span class="text">History</span>
                        </div>
                        <div class="home watch flex padding">
                            <img src="assets/watchlater.png" alt="Not found" class="width">
                            <span class="text">Watch later</span>
                        </div>
                        <div class="home like flex padding">
                            <img src="assets/like.png" alt="Not found" class="width">
                            <span class="text">Liked videos</span>
                        </div>
                    </div>
                    <div class="set">
                        <span class="">Subscriptions</span>
                        <div class="home flex padding">
                            <img src="" alt="Not found" class="width">
                            <span class="text"></span>
                        </div>
                    </div>
                    <div class="set">
                        <span class="">Explore</span>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Music</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Sports</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Trending</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Gaming</span>
                        </div>
                    </div>
                    <div class="set">
                        <span class="">More from YouTube</span>
                        <div class="home flex padding">
                            <img src="assets/youtubeicon.png" alt="Not found" class="width">
                            <span class="text">YouTube Premium</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Creator Studio</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube Music</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube Kids</span>
                        </div>
                        <div class="home flex padding">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube TV</span>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="list flex">
                        <div class="all">
                            <span class="size">All</span>
                        </div>
                        <div class="all">
                            <span class="size">Music</span>
                        </div>
                        <div class="all">
                            <span class="size">Sports</span>
                        </div>
                        <div class="all">
                            <span class="size">Trending</span>
                        </div>
                        <div class="all">
                            <span class="size">Gaming</span>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>