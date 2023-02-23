function viewvideo(message){
    $.ajax({
        url:'components/viewvideo.cfc?method=getviewData',
        type:'post',
        data:{
            method:'getviewData',
            Email: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#videoview').html(obj.TITLE);
            /* $('likes').html(obj.LIKES); */
            /* $('#videoview').html(obj.TITLE); */
            var videofile = document.createElement('source');
            videofile.src="assets/uploadedfile/"+obj.FILEUPLOAD;
            videofile.type="video/mp4";
            videofile.className="setclass";
            $('#upvideo').html(videofile);
            $('#viewimg').show();
            $('#historyvideo').html(videofile);
            $('#viewhistory').show();
        }
    });
}