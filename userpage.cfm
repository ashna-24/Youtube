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
                <div class="right rightalign flex pointer">
                    <img src="assets/profile.png" alt="Not found" class="width sign">
                    <span class="signin">Sign in</span>
                </div>
            </div>
        </div>

        <div class="mainbody flex">
                <div class="sidebar">
                    <div class="set">
                        <div class="home selected flex padding pointer">
                            <img src="assets/home.png" alt="Not found" class="width">
                            <span class="text">Home</span>
                        </div>
                        <div class="home subscriptions flex padding pointer">
                            <img src="assets/subscriptions.png" alt="Not found" class="width">
                            <span class="text">Subscriptions</span>
                        </div>
                    </div>
                    <div class="set">
                        <div class="home library flex padding pointer">
                            <img src="assets/videolibrary.png" alt="Not found" class="width">
                            <span class="text">Library</span>
                        </div>
                        <div class="home history flex padding pointer">
                            <img src="assets/history.png" alt="Not found" class="width">
                            <span class="text">History</span>
                        </div>
                    </div>
                    <div class="set">
                        <p class="text align">Sign in to like videos,<br>comment, and subscribe.</p>
                        <div class="right flex side">
                            <img src="assets/profile.png" alt="Not found" class="width sign">
                            <span class="signin">Sign in</span>
                        </div>
                    </div>
                    <div class="set">
                        <span class="title">Explore</span>
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
                        <span class="title">More from YouTube</span>
                        <div class="home flex padding pointer">
                            <img src="assets/youtubeicon.png" alt="Not found" class="width">
                            <span class="text">YouTube Premium</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">Creator Studio</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube Music</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube Kids</span>
                        </div>
                        <div class="home flex padding pointer">
                            <img src="assets/" alt="Not found" class="width">
                            <span class="text">YouTube TV</span>
                        </div>
                    </div>
                </div>
                <div class="content">
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
                </div>
            </div>
        </cfoutput>
    </body>
</html>