<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <link rel="stylesheet" href="assets/modal.css">
        <title>Channel content-YouTube Studio</title>
    </head>
    <body class="bodycontent">
        <cfoutput>
            <!--- <cfif structKeyExists(session, 'adminflag')> --->
                <div class="adminheader flex">
                    <div class="headerLeft flex">
                        <div class="menu">
                            <img src="assets/menu.png" alt="Not found" class="menuicon">
                        </div>
                        <div class="logo flex">
                            <img src="assets/studiologo.svg" alt="Not found" class="ytblogo">
                        </div>
                    </div>
                    <div class="adminheadmid flex">
                        <div class="adminsrth flex">
                            <div class="adminicon">
                                <img src="assets/search.png" alt="Not found" class="ytbsrth">
                            </div>
                            <div class="adminsearch">
                                <input type="search" name="search" id="search" class="ytbadmin " placeholder="Search accross your channel">
                            </div>
                        </div>
                    </div>
                    <div class="headerRight flex">
                        <div class="help">
                            <img src="assets/help.png" alt="Not found" class="width">
                        </div>
                        <div class="rightcreate flex">
                            <img src="assets/upload.png" alt="Not found" class="width createwidth">
                            <h5 class="msg">CREATE</h5>
                        </div>
                        <div class="account">
                            <span class="letter">A</span>
                        </div>
                    </div>
                </div>

                <div class="adminmainbody flex">
                    <div class="adminsidebar">
                        <div class="setone">
                            <div class="spanletter">
                                <span class="username">A</span>
                            </div>
                            <p class="yours">Your channel</p>
                        </div>
                        <div class="settwo">
                            <div class="listdta">
                                <a href="adminpage.cfm" class="link"><div class="listcontent admin library flex padding pointer">
                                    <img src="assets/library.png" alt="Not found" class="width contentcomments">
                                    <span class="textsize">Content</span>
                                </div></a>
                                <div class="listcontent admin library flex padding pointer selectcomment">
                                    <img src="assets/redcomt.png" alt="Not found" class="width subtitle">
                                    <span class="textcont">Comments</span>
                                </div>
                                <div class="listcontent admin library flex padding pointer">
                                    <img src="assets/subtitle.png" alt="Not found" class="width comments">
                                    <span class="textsize">Subtitles</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <!--- </cfif> --->
        </cfoutput>
    </body>
</html>