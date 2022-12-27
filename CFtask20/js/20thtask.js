function validateform(){
    var mail= document.getElementById('mail');
    var captcha = document.getElementById('captcha');

    var validatemail= mailValidate(mail);
    var validatecaptcha = captchaValidate(captcha);
    if(validatemail && validatecaptcha) 
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
function captchaValidate(captcha){
    if(captcha.value==""){
        errorValidate('captch_error');
        captcha.style.border="1px solid red";  
        return false;
    }else{
        successValidate('captch_error');
        captcha.style.border="1px solid green";
        return true;
    }
}
