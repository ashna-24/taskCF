function checktest(){
    $.ajax({
        url:'components/task24.cfc?method=emailValidate',
        type:'post',
        data:{
            method: "checkEmail",
            Email: $("#email").val(),
            Name: $("#name").val(),
            dataType: "text",
            dataType:"text"
        },
        success:function(data){
            alert(data)
        }
    })
}