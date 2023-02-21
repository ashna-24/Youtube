<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <script src="js/upload.js"></script>
        <script src="js/updatelike.js"></script>
        <script src="js/updatelikecount.js"></script>
        <script src="js/likedvideo.js"></script>
        <script src="js/dislikes.js"></script>
        <script src="js/updatesub.js"></script>
        <script src="js/unsubscribe.js"></script>
        <script src="js/updatecount.js"></script>
        <script src="assets/jQuery.js"></script>
        <script src="assets/jQuerymin.js"></script>
        <title>YouTube</title> 
    </head>
    <body class="body">
        <cfoutput>
            <cfinclude template="adminheader.cfm">
            <div class="contview">
                <div class="flex">
                    <div class="viewvideo">
                        <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                        <div class="video1">
                            <span class="videoset">
                                <video width="860px" controls muted height="500px" class="upviewvideo" id="upvideo" onclick="openFullscreen()">
                                    <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                </video>
                            </span>
                            <h3 class="videoviewh3">#uploadVideo.Title#</h3>
                            <div class="videoviewdtls flex">
                                <cfinvoke method="getsignin" component="components/profile" returnVariable="uploadlogin">
                                <span class="videoimg">
                                    <cfset local.profileimage = uploadlogin.Profile>
                                    <img src="assets/file/#local.profileimage#" name="myImage" class="videoimg">
                                </span>
                                <div class="videoviewdiv">
                                    <span class="dtlsviewupload">#uploadlogin.FullName#</span><br>
                                    <p class="dtlslistupload"><input type="text" id="clicksub" class="clicksub" value=""> subscribers</p>
                                </div>
                                <input type="hidden" id="contactId" name="contactId" value="">
                                <div class="subscribe">
                                    <button name="subscribe" id="subscribe" onclick="updatecount('#uploadVideo.Title#'); updatesubscribers()<!--- ; unclick() --->" class="viewsub pointer">Subscribe</button>
                                    <button name="subscribe" id="unsubscribe" onclick="updatecount('#uploadVideo.Title#'); unsubscribe()<!--- ; click() --->" class="viewunsub pointer">Unsubscribe</button>
                                </div>
                                <div class="viewlike flex">
                                    <div class="viewlikeimg pointer">
                                        <div class="flex">
                                            <img src="assets/like.png" alt="Not found" class="width viewimg" id="liked" onclick="likedvideo(); updatelikecount('#uploadVideo.Title#'); updatelikes()">
                                            <input type="text" id="clicklike" class="clickcomt" value="">
                                            <p class="viewlikevdo">Likes</p>
                                            <img src="assets/dislike.png" alt="Not found" class="dislike width" id="disliked" onclick="dislikedvideo(); updatelikecount('#uploadVideo.Title#'); dislikes()">
                                        </div>
                                    </div>
                                    <div class="viewlikeimg pointer viewshare flex">
                                        <img src="assets/share.png" alt="Not found" class="viewwidth">
                                        <p class="viewtext">Share</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="viewcomments">
                            <cfinvoke method="getcountcomt" component="components/comment" returnVariable="countQuery">
                            <div class="viewcomttop">
                                <p>#countQuery.CommentCount# Comments</p>
                            </div>
                            <cfinvoke method="getUser" component="components/user" returnvariable="userpage">
                            <!--- <div class="viewcomt flex">
                                <span class="videoimg">
                                    <img src="assets/file/#local.profileimage#" name="myImage" class="videoimg">
                                </span>
                                <div class="comtinput">
                                    <form method="post" autocomplete="off">
                                        <input type="text" name="comttext" id="comttext" class="comttext" placeholder="Add a comment...">
                                        <div class="commentsubmit flex">
                                            <div class="comtcancel">
                                                <input type="reset" name="comtcncl" id="comtcncl" class="comtcncl pointer" value="Cancel">
                                            </div>
                                            <div class="comtcomment">
                                                <input type="submit" name="comment" id="comment" class="comtcomt pointer" value="Comment">
                                            </div>
                                        </div>
                                    </form>
                                    <cfif structKeyExists(form, 'comment')>
                                        <cfinvoke method="getcomment" component="components/comment">
                                        <cfset structClear(form)>
                                    </cfif>
                                </div>
                            </div> --->
                            <cfinvoke  method="getcommentlist" component="components/comment" returnvariable="commentlist">
                            <cfloop query="commentlist">
                                <div class="flex comtdiv">
                                    <span class="videoimg">
                                        <cfset local.userimage = userpage.Profile>
                                        <img src="assets/file/#local.userimage#" name="myImage" class="videoimg">
                                    </span>
                                    <div class="commentdtls">
                                        <p class="comtchannel">#userpage.FullName#</p>
                                        <p class="comttxt">#commentlist.Comment#</p>
                                    </div>
                                    <div class="comtthreedot">
                                        <button class="filterdotselect" id="filterdot_#commentlist.ID#" style="visibility:hidden">
                                            <a href="components/deletecomment.cfc?method=getdeletecomt&ID=#commentlist.ID#" class="deltcolor decoration">
                                                Delete
                                            </a>
                                        </button>
                                        <img src="assets/more.png" alt="Not found" class="comtdot" onclick="dottext(#commentlist.ID#)">
                                    </div>
                                </div>
                            </cfloop>
                        </div>
                    </div>
                    <div class="viewsidebar">
                        <div class="flex">
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
                        <div class="viewvideolist">
                            <cfloop query="uploadVideo">
                                <div class="uploadviewVideo flex">
                                    <span class="videoviewset">
                                        <video width="170px" controls muted height="100px" class="upview" id="upvideo" onclick="openFullscreen()">
                                            <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                            <track src="video.en.vtt" kind="subtitles" label="English Subtitles" srclang="en">
                                        </video>
                                    </span>
                                    <div class="viewlist">
                                        <h3 class="videoview">#uploadVideo.Title#</h3>
                                        <p class="viewside">#uploadlogin.FullName#</p>
                                    </div>
                                </div>
                            </cfloop>
                        </div>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>