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