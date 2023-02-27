function likereplycount(message){
    console.log(message);
    $.ajax({
        url:'components/likereplycount.cfc?method=getlikereplycount',
        type:'post',
        data:{
            method:'getlikereplycount',
            name: message,
            datatype: 'json'
        },
        success:function(data){
            
            var obj = JSON.parse(data);
            $('#replyId').val(obj.ID);
            $('#clickreply').val(obj.LIKES);
            /* $('#clicklikereply').val(obj.LIKES); */
        }
    });
}