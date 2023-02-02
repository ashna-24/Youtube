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
                                <div class="listcontent admin library flex padding pointer selectcomment">
                                    <img src="assets/redcomment.png" alt="Not found" class="width contcomments">
                                    <span class="textcont">Content</span>
                                </div>
                                <div class="listcontent admin library flex padding pointer">
                                    <img src="assets/comment.png" alt="Not found" class="width comments">
                                    <span class="textsize">Comments</span>
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
                                <h3>Channel content</h3>
                            </div>
                            <div class="selectedhead">
                                <div class="videos pointer">
                                    <span class="listvideos">Videos</span>
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
                        <div class="setthree">
                            <div class="video">
                                <table class="video ">
                                    <tr class="conttr">
                                        <td class="checkbox pointer tablepadding">
                                            <input type="checkbox" name="check" id="check" class="check font">
                                            <span class="font color">Video</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="bold font">Date</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="font color ">Views</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="font color">Comments</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="font color">Likes(vs. dislikes)</span>
                                        </td>
                                    </tr>
                                    <tr class="conttr">
                                        <td class="tablepadding">
                                        </td>
                                        <td class="tablepadding">
                                        </td>
                                        <td class="tablepadding">
                                        </td>
                                        <td class="tablepadding">
                                        </td>
                                        <td class="tablepadding">
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="nocontent">
                                <img src="assets/nocontent.svg" alt="Not found" class="pointer nodata">
                                <div class="notavailable">No content available</div>
                                <div class="upload">
                                    <button class="uploadfile pointer" type="submit" onclick="document.getElementById('upload').style.display='block'">UPLOAD VIDEOS</button>
                                    <div id="upload" class="w3-modal">
                                        <cfinclude template="upload.cfm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </cfif>
        </cfoutput>
    </body>
</html>