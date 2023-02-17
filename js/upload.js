function create(){
    var popuptext = document.getElementById("popuptext");
    popuptext.classList.toggle("show");
}

function filter(){
    var filtertext = document.getElementById("filtertext");
    filtertext.classList.toggle("show");
}

function dottext(id){
    var filterdot = document.getElementById("filterdot_" + id);
    if(filterdot.style.visibility = "hidden"){
        filterdot.style.visibility="visible";
    }
    else{
        filterdot.classList.toggle();
    }
}

function viewvideo(id){
    var viewvideo = document.getElementById('upvideo_'+id);
    viewvideo.style.display="block";
}

function unclick(){
    var unsubscribe = document.getElementById('unsubscribe');
    unsubscribe.style.display="block";
}

/* function click(){
    var subscribe = document.getElementById('subscribe');
    subscribe.style.display="block";
} */