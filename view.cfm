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
                                    <div class="viewlike">
                                        <span>
                                            <img src="assets/like.png" alt="Not found" class="width viewlikeimg">
                                        </span>
                                    </div>
                                </div>
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