<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <link rel="stylesheet" href="assets/modal.css">
        <script src="js/upload.js"></script>
        <script src="js/videoupload.js"></script>
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
                            <!--- <cfloop query="uploadlogin"> --->
                                <span class="viewimg">
                                    <cfset local.profileimage = uploadlogin.Profile>
                                    <img src="assets/file/#local.profileimage#" name="myImage" class="userImg">
                                </span>
                                <p class="yours">Your channel</p>
                                <span class="profiletext">#uploadlogin.FullName#</span>
                           <!---  </cfloop> --->
                        </div>
                        <div class="settwo">
                            <div class="listdta">
                                <div class="listcontent admin library flex padding pointer selectcomment">
                                    <img src="assets/redcomment.png" alt="Not found" class="width contcomments">
                                    <span class="textcont">Content</span>
                                </div>
                                <a href="comment.cfm" class="decoration"><div class="listcontent admin library flex padding pointer">
                                    <img src="assets/comment.png" alt="Not found" class="width comments">
                                    <span class="textsize">Comments</span>
                                </div></a>
                                <a href="" class="decoration"><div class="listcontent admin library flex padding pointer">
                                    <img src="assets/subtitle.png" alt="Not found" class="width comments">
                                    <span class="textsize">Subtitles</span>
                                </div></a>
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
                        <div class="filterset flex filtersearch" onclick="filter()">
                            <div class="filterimg pointer">
                                <img src="assets/filter.png" alt="Not found" class="setimg">
                            </div>
                            <div>
                                <input type="search" placeholder="Filter" name="fitler" id="filter" class="filter">
                            </div>
                            <span class="filterpopup" id="filtertext">
                                <p class="filterlist">Age restriction</p>
                                <p class="filterlist">Description</p>
                                <p class="filterlist">Title</p>
                                <p class="filterlist">Views</p>
                                <p class="filterlist">Visibility</p>
                            </span>
                        </div>
                        <div class="setthree">
                            <div class="video">
                                <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                                <table class="video ">
                                    <tr class="conttr">
                                        <td class="checkbox pointer tablepadding">
                                            <input type="checkbox" name="check" id="check" class="check font">
                                            <span class="font color">Video</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="font color visibility">Visibility</span>
                                        </td>
                                        <td class="listtd pointer tablepadding">
                                            <span class="font color">Restrictions</span>
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
                                            <span class="font color">Likes</span>
                                        </td>
                                    </tr>
                                    <cfloop query="uploadVideo">
                                        <tr class="conttr">
                                            <td class="tablevideopadding checkbox pointer">
                                                <div class="videotd flex">
                                                    <input type="checkbox" name="check" id="check" class="check font">
                                                    <div class="videouploadfile">
                                                        <video width="150px" controls height="100px" id="upvideo_#uploadVideo.FileUpload#" onclick="openFullscreen(#uploadVideo.FileUpload#)">
                                                            <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                                        </video>
                                                    </div>
                                                    <div class="videouploadtitle">
                                                        <span class="titleupload">#uploadVideo.Title#</span><br>
                                                        <span class="desupload">#uploadVideo.Description#</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="tablevideopadding">
                                                <div class="uploadvisible">#uploadVideo.Visibility#</div>
                                            </td>
                                            <td class="tablevideopadding">
                                            </td>
                                            <td class="tablevideopadding">
                                                <div class="uploadvisible">#uploadVideo.DateOfPublishing#</div>
                                            </td>
                                            <td class="tablevideopadding">
                                            </td>
                                        </tr>
                                    </cfloop>
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