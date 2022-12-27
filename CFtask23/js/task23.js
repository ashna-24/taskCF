function validateform(){
    var text = document.getElementById('firstname');
    var lastname = document.getElementById('lastname');
    var option = document.getElementById('option');
    var date = document.getElementById('date');
    var url = document.getElementById('url');
    var mail = document.getElementById('mail');
    var phone = document.getElementById('phone');

    var validatedOption = selectValidate(option);
    var validatetext = optionValidate(text);
    var validatelastname = lastnameValidate(lastname);
    var validatedate = dateValidate(date);
    var validateurl = urlValidate(url);
    var validatemail = mailValidate(mail);
    var validatenum = numValidate(phone);
    if(validatedOption && validatetext && validatelastname && validatedate && validateurl && validatemail && validatenum)
        return true;
    else 
        return false;
}

function errorValidate(id){
    document.getElementById(id).style.visibility="visible";
}
  
function successValidate(id){
    document.getElementById(id).innerHTML="";
}

function optionValidate(text){ 
    if(text.value==""){
      errorValidate('name_error');
      text.style.border="1px solid red";  
      return false;
    }else{
       successValidate('name_error');
       text.style.border="1px solid green";
       return true;
    }
}

function lastnameValidate(lastname){
    if(lastname.value==""){
        errorValidate('name_error');
        lastname.style.border="1px solid red";  
        return false;
    }else{
        successValidate('name_error');
        lastname.style.border="1px solid green";
        return true;
    }
}

function selectValidate(option){
    if(option.value==""){
        errorValidate('operror');
        option.style.border="1px solid red";  
        return false;
    }else{
        successValidate('operror');
        option.style.border="1px solid green";
        return true;
    }
}

function dateValidate(date){
    if(date.value==""){
        errorValidate('date_error');
        date.style.border="1px solid red";  
        return false;
    }else{
        successValidate('date_error');
        date.style.border="1px solid green";
        return true;
    }
}

function urlValidate(url){
    if(url.value==""){
        errorValidate('url_error');
        url.style.border="1px solid red";  
        return false;
    }else{
        successValidate('url_error');
        url.style.border="1px solid green";
        return true;
    }
}

function mailValidate(mail){
    if(mail.value==""){
        errorValidate('mail_error');
        mail.style.border="1px solid red";  
        return false;
    }else{
        successValidate('mail_error');
        mail.style.border="1px solid green";
        return true;
    }
}

function numValidate(phone){
    if(phone.value==""){
        errorValidate('num_error');
        phone.style.border="1px solid red";  
        return false;
    }else{
        successValidate('num_error');
        phone.style.border="1px solid green";
        return true;
    }
}