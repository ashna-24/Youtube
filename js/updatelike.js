function updatelikes(message){
    $.ajax({
        url:'components/updatelike.cfc?method=getUpdatelikes',
        type:'post',
        data:{
            method:'getUpdatelikes',
            Email: message,
            contactid: $('#contactId').val(),
            title: $('#clicklike').val(),
            datatype: 'json'
        }
    })
}