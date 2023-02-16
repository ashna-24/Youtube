<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <title>YouTube</title> 
    </head>
    <body class="body">
        <cfoutput>
            <cfinclude  template="header.cfm">
            <div class="contview">
                <div class="flex">
                    <div class="viewvideo">
                        <cfinvoke  method="getinsert" component="components/create" returnVariable="uploadVideo">
                        <!--- <cfloop query="uploadVideo"> --->
                            <div class="video1">
                                <span class="videoset">
                                    <video width="860px" controls muted height="500px" class="upviewvideo" id="upvideo" onclick="openFullscreen()">
                                        <source src="assets/uploadedfile/#uploadVideo.FileUpload#" type="video/mp4">
                                        <track src="video.en.vtt" kind="subtitles" label="English Subtitles" srclang="en">
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
                                        <p class="dtlslistupload">subscribers</p>
                                    </div>
                                    <div class="subscribe">
                                        <button name="subscribe" id="subscribe" class="viewsub pointer">Subscribe</button>
                                    </div>
                                    <div class="viewlike flex">
                                        <div class="viewlikeimg pointer">
                                            <img src="assets/like.png" alt="Not found" class="width viewimg">
                                            <img src="assets/dislike.png" alt="Not found" class="width">
                                        </div>
                                        <div class="viewlikeimg pointer viewshare flex">
                                            <img src="assets/share.png" alt="Not found" class="viewwidth">
                                            <p class="viewtext">Share</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="viewcomments">
                                <div class="viewcomttop">
                                </div>
                                <div class="viewcomt flex">
                                    <cfinvoke method="getUser" component="components/user" returnvariable="userpage">
                                    <span class="videoimg">
                                        <cfset local.userimage = userpage.Profile>
                                        <img src="assets/file/#local.userimage#" name="myImage" class="videoimg">
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
                                            <cfinvoke  method="getcomment" component="components/comment">
                                            <cfset structClear(form)>
                                        </cfif>
                                    </div>
                                </div>
                                    <cfinvoke  method="getcommentlist" component="components/comment" returnvariable="commentlist">
                                <cfloop query="commentlist">
                                <div class="flex">
                                    <span class="videoimg">
                                        <cfset local.userimage = userpage.Profile>
                                        <img src="assets/file/#local.userimage#" name="myImage" class="videoimg">
                                    </span>
                                    <div class="commentdtls">
                                        <p class="comtchannel">#userpage.FullName#</p>
                                        <p class="comttxt">#commentlist.Comment#</p>
                                    </div>
                                </div>
                                </cfloop>
                            </div>
                        <!--- </cfloop> --->
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