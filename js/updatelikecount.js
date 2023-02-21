function updatelikecount(message){
    $.ajax({
        url:'components/updatelikecount.cfc?method=getupdatelikecount',
        type:'post',
        data:{
            method:'getupdatelikecount',
            name: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#contactId').val(obj.ID);
            $('#clicklike').val(obj.LIKES);
        }
    });
}