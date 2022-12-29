function dispalyPage(message){
    $.ajax({
        url:'components/display.cfc?method=getDesc',
        type:'post',
        data:{
            method:"getDesc",
            Email:message,
            dataType:"text"
        },
        success:function(data){
            $("#pageMsg").text(data );
        }
    }) 
}