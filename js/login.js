function validatelogin(){
    var username = document.getElementById('username');
    var password = document.getElementById('pswd');

    var unamevalidate = uservalidate(username);
    var pswdvalidate = passwordvalidate(password);

    if(unamevalidate && pswdvalidate){
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

function uservalidate(username){
    if(username.value==""){
        errorValidate('uname_error');
        username.style.border="1px solid red";  
        return false;
    }
    else{
        successValidate('uname_error');
        username.style.border="none";
        return true;
    }
}

function passwordvalidate(password){ 
    var passw=  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    if(password.value.match(passw)){
        successValidate('pswd_error');
        password.style.border="none";
        return true;
    }else{
        errorValidate('pswd_error');
        password.style.border="1px solid red";  
        return false;
    }
}