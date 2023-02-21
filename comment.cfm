<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <script src="js/upload.js"></script>
        <link rel="stylesheet" href="assets/modal.css">
        <title>Channel content-YouTube Studio</title>
    </head>
    <body class="bodycontent">
        <cfoutput>
            <cfif structKeyExists(session, 'adminflag')>
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
                        <div class="rightcreate createupload" onclick="create()">
                            <img src="assets/upload.png" alt="Not found" class="width createwidth">
                            <h5 class="msg">CREATE</h5>
                            <span class="popup" id="popuptext">
                                <button onclick="document.getElementById('upload').style.display='block'" class="createbutton">
                                    <span class="videocreate">
                                        <img src="assets/uploadarrow.png" alt="Not found" class="uploadarrow">
                                        Upload videos
                                    </span>
                                </button>
                            </span>
                            <div id="upload" class="w3-modal">
                                <cfinclude template="upload.cfm">
                            </div>
                        </div>
                        <div class="account">
                            <span class="letter">A</span>
                        </div>
                    </div>
                </div>

                <div class="adminmainbody flex">
                    <div class="adminsidebar">
                        <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                        <div class="setone">
                            <span class="viewimg">
                                <cfset local.profileimage = uploadlogin.Profile>
                                <img src="assets/file/#local.profileimage#" name="myImage" class="userImg">
                            </span>
                            <p class="yours">Your channel</p>
                            <span class="profiletext">#uploadlogin.FullName#</span>
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
                    <div class="admincontent">
                        <div class="textcontent">
                            <div class="headertext">
                                <h3>Channel comments</h3>
                            </div>
                            <div class="selectedhead">
                                <div class="videoscomments pointer">
                                    <span class="listvideos">Comments</span>
                                </div>
                            </div>
                        </div>
                        <div class="filterset flex">
                            <div class="filterimg pointer">
                                <img src="assets/filter.png" alt="Not found" class="setimg">
                            </div>
                            <div>
                                <input type="search" placeholder="Filter" name="fitler" id="filter" class="filter">
                            </div>
                        </div>
                        <div class="comtsetthree">
                            <cfinvoke method="getUser" component="components/user" returnvariable="userpage">
                            <cfset local.userimage = userpage.Profile>
                            <cfinvoke  method="getcommentlist" component="components/comment" returnvariable="commentlist">
                            <cfloop query="commentlist">
                                <div class="flex comtsetdiv">
                                    <span class="videoimg">
                                        <img src="assets/file/#local.userimage#" name="myImage" class="videoimg">
                                    </span>
                                    <div class="commentdtls">
                                        <p class="comtchannel">#userpage.FullName#</p>
                                        <p class="comttxt">#commentlist.Comment#</p>
                                    </div>
                                    <div class="comtthreedot">
                                        <button class="filterdotselect" id="filterdot_#commentlist.ID#" style="visibility:hidden">
                                            <a href="<!--- components/deletecomment.cfc?method=getdeletecomt&ID=#commentlist.ID# --->" class="deltcolor decoration">
                                                <p class="edit">Edit</p>
                                            </a>
                                            <a href="components/deletecomment.cfc?method=getdeletecomt&ID=#commentlist.ID#" class="deltcolor decoration">
                                                <p class="edit">Delete</p>
                                            </a>
                                        </button>
                                        <img src="assets/more.png" alt="Not found" class="comtdot" onclick="dottext(#commentlist.ID#)">
                                    </div>
                                </div>
                            </cfloop>
                        </div>
                    </div>
                </div>
            </cfif>
        </cfoutput>
    </body>
</html>