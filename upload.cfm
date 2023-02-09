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
            <div class="w3-modal-content" style="border-radius: 6px; margin-bottom: 30px; width: 930px;">
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
                    <div class="uploadimage pointer">
                        <img src="assets/uploadimage.png" alt="Not found" onclick="document.getElementById('fileupload').click()">
                    </div>
                    <div class="dragordrop">
                        <p class="drag">Drag and drop files to upload</p>
                        <p class="private">Your videos will be private until you publish them.</p>
                    </div>
                    <form method="post" enctype="multipart/form-data">
                        <input type="file" id="fileupload" name="fileupload" accept="video/*" style="visibility:hidden">
                        <div class="selectfile">
                            <a onclick="document.getElementById('uploadform').style.display='block'">
                                <input type="button" name="videofile" id="videofile" value="SELECT FILES" class="videofile pointer">
                            </a>
                            <!--- <input type="submit" onclick="document.getElementById('upload').click()" name="videofile" id="videofile" class="videofile pointer" value="SELECT FILES"> --->
                        </div>
                    </form>
                    <!--- <div id="upload">
                        <a onclick="document.getElementById('uploadform').style.display='block'">
                            <div id="uploadform" class="w3-modal">
                                <cfinclude template="uploadform.cfm">
                            </div>
                        </a>
                    </div> --->
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
