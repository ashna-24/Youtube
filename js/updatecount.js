function updatecount(message){
    $.ajax({
        url:'components/updatecount.cfc?method=getupdate',
        type:'post',
        data:{
            method:'getupdate',
            name: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#contactId').val(obj.ID);
            $('#clicksub').val(obj.SUBSCRIBERS);
        }
    });
}