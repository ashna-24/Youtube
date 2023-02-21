/* function viewvideo(message){
    $.ajax({
        url:'components/viewvideo.cfc?method=getviewData',
        type:'post',
        data:{
            method:'getviewData',
            Email: message,
            datatype: 'json'
        },
        success:function(data){
            console.log(data)
           /*  var obj = JSON.parse(data);
            $('#viewid').html(obj.FIRSTNAME);
            $('#viewlne').html(obj.LASTNAME);
            $('#viewGndr').html(obj.GENDER);
            $('#viewdob').html(obj.DOB);
            $('#viewadd').html(obj.ADDRESS);
            $('#viewsrt').html(obj.STREET);
            $('#viewcty').html(obj.CITY);
            $('#viewste').html(obj.STATE);
            $('#viewmail').html(obj.EMAIL);
            $('#viewnum').html(obj.MOBILENUMBER);
            var imgprofile = document.createElement('img');
            imgprofile.src="aassets/uploadedfile/"+obj.FILEUPLOAD;
            imgprofile.className="setclass";
            $('#viewimg').append(imgprofile);
        }
    });
} */