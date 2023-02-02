function validatesignup(){
    var fullname = document.getElementById('fullname');
    var email = document.getElementById('email');
    var phonenumber = document.getElementById('number');
    var role = document.getElementById('role');
    var username = document.getElementById('username');
    var pswd = document.getElementById('pswd');
    var conpswd = document.getElementById('conpswd');
    
    var validatename = fullnamevalidate(fullname);
    var validateemail = emailvalidate(email);
    var validatenumber = numbervalidate(phonenumber);
    var validaterole = rolevalidate(role);
    var validateusername = usernamevalidate(username);
    var validatepswd = pswdvalidate(pswd);
    var validateconpswd = conpswdvalidate(conpswd);

    if(validatename && validateemail && validatenumber && validaterole && validateusername && validatepswd && validateconpswd){
        return true;
    }
    else{
        return false;
    }
}

function errorValidate(id){
    document.getElementById(id).style.visibility="visible";
}

function successValidate(id){
    document.getElementById(id).innerHTML="";
}

function fullnamevalidate(fullname){
    if(fullname.value==""){
        errorValidate('fullname_error');
        fullname.style.borderBottom="1px solid red"; 
        return false;
    }
    else{
        successValidate('fullname_error');
        return true;
    }
}

function emailvalidate(email){
    var emailmatch = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(email.value.match(emailmatch)){
        successValidate('email_error');
        return true;
    }
    else{
        errorValidate('email_error');
        email.style.borderBottom="1px solid red";
        return false;
    }
}

function numbervalidate(number){
    var nummatch = /^\d{10}$/;
    if(number.value.match(nummatch)){
        successValidate('number_error');
        return true;
    }
    else{
        errorValidate('number_error');
        number.style.borderBottom="1px solid red";
        return false;
    }
}

function rolevalidate(role){
    if(role.value ==""){
        errorValidate('role_error');
        role.style.borderBottom="1px solid red";
        return false;
    }
    else{
        successValidate('role_error');
        return true;
    }
}

function usernamevalidate(username){
    if(username.value==""){
        errorValidate('username_error');
        username.style.borderBottom="1px solid red";
        return false;
    }
    else{
        successValidate('username_error');
        return true;
    }
}

function pswdvalidate(pswd){
    var pswdmatch = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    if(pswd.value.match(pswdmatch)){
        successValidate('pswd_error');
        return true;
    }
    else{
        errorValidate('pswd_error');
        pswd.style.borderBottom="1px solid red";
        return false;
    }
}

function conpswdvalidate(conpswd){
    var pswdmatch = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    if(conpswd.value.match(pswdmatch)){
        successValidate('conpswd_error');
        return true;
    }
    else if(conpswd.value != pswd.value){
        errorValidate('conform_error');
        conpswd.style.borderBottom="1px solid red";
        return false;
    }
    else{
        errorValidate('conpswd_error');
        conpswd.style.border="1px solid red";
        return false;
        
    }
}