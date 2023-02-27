function updatereply(message){
    $.ajax({
        url:'components/updatereply.cfc?method=getUpdatereply',
        type:'post',
        data:{
            method:'getUpdatereply',
            Email: message,
            contactid: $('#replyId').val(),
            title: $('#clickreply').val(),
            datatype: 'json'
        },
        success:function(data){
            console.log(data);
        }
    })
}