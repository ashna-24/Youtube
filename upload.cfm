<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css"> 
        <link rel="icon" href="assets/youtubeicon.png">
        <link rel="stylesheet" href="assets/modal.css">
        <title>Upload-YouTube Studio</title>
    </head>
    <body>
        <cfoutput>
            <div class="w3-modal-content uploadmodal" style="border-radius: 6px; margin-bottom: 30px; width: 930px;">
                <div class="modalhead flex">
                    <span class="uploadvideos">Upload videos</span>
                    <div class="closemodal flex">
                        <img src="assets/feedback.png" alt="Not found" class="width feedback">
                        <div class="close">
                            <a class="closetitle" href="adminpage.cfm">X</a>
                        </div>
                    </div>
                </div>
                <div class="dataupload">
                    <form method="post" enctype="multipart/form-data">
                        <div class="uploadimage pointer">
                            <img src="assets/uploadimage.png" alt="Not found" onclick="document.getElementById('fileupload').click()">
                        </div>
                        <div class="dragordrop">
                            <p class="drag">Drag and drop files to upload</p>
                            <p class="private">Your videos will be private until you publish them.</p>
                        </div>
                        <input type="file" id="fileupload" name="fileupload" accept="video/*" style="visibility:hidden"><br>
                        <div class="flex justify">
                            <span class="titletext">Title</span>
                            <input type="text" id="title" name="title" class="videotitle">
                            <span class="titletext">Description</span>
                            <input type="text" id="description" name="description" class="videotitle">
                        </div>
                        <div class="flex justify">
                            <span class="titletext">Visibility</span>
                            <select class="videotitle" id="visibility" name="visibility">
                                <option></option>
                                <option>Public</option>
                                <option>Private</option>
                                <option>Unlisted</option>
                            </select>
                            <span class="titletext">Date of Publishing</span>
                            <input type="date" name="uploading" id="uploading" class="dateuploading videotitle">
                        </div>
                        <div class="selectfile">
                            <a onclick="document.getElementById('uploadform').style.display='block'">
                                <input type="submit" name="videofile" id="videofile" value="SELECT FILES" class="videofile pointer">
                            </a>
                        </div>
                    </form>
                    <cfif structKeyExists(form, 'videofile')>
                        <cfinvoke method="getupload" component="components/upload">
                        <cfset structClear(form)>
                    </cfif>
                </div>
                <div class="uploadbottom">
                    <p>
                        By submitting your videos to YouTube, you acknowledge that you agree to YouTube's <span class="blue pointer">Terms of Service</span> and <span class="blue pointer">Community Guidelines</span>.<br>
                        Please be sure not to violate others' copyright or privacy rights. <span class="blue pointer">Learn more</span>
                    </p>
                </div>
            </div>
        </cfoutput>
    </body>
</html>
