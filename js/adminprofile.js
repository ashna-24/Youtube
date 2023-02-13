function adminProfile(message){
    $.ajax({
        url:'components/profile.cfc?method=getsignin',
        type:'post',
        data:{
            method:'getsignin',
            Email: message,
            datatype: 'json'
        },
        success:function(data){
            console.log(data);
           /*  var obj = JSON.parse(data);
            $('#viewid').html(obj.FIRSTNAME); */
        }
    });
}