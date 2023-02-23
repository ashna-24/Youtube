function viewdisplay(){
    var view = document.getElementById('view');
    var mainytbbody = document.getElementById('mainytbbody');

    if(view.style.display="none"){
        view.style.display="block";
        mainytbbody.style.display="none";
    }
}

function adminviewdisplay(){
    var adminview = document.getElementById('adminview');
    var ytbbody = document.getElementById('ytbbody');

    if(adminview.style.display="none"){
        adminview.style.display="block";
        ytbbody.style.display="none";
    }
}

function signinviewdisplay(){
    var signinview = document.getElementById('signinview');
    var signinyoutube = document.getElementById('signinyoutube');

    if(signinview.style.display="none"){
        signinview.style.display="block";
        signinyoutube.style.display="none";
    }
}