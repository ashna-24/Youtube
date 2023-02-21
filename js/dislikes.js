function dislikes(message){
    $.ajax({
        url:'components/dislikes.cfc?method=getdislikes',
        type:'post',
        data:{
            method:'getdislikes',
            Email: message,
            contactid: $('#contactId').val(),
            title: $('#clicklike').val(),
            datatype: 'json'
        }
    })
}