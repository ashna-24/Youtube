function likedvideo(){
    var liked = document.getElementById('liked');
    var disliked = document.getElementById('disliked');

    if(liked.src="assets/like.png"){
        liked.src="assets/thumbs.png";
        disliked.src="assets/dislike.png";
    }
    else{
        liked.classList.toggle("thump");
    }
}

function dislikedvideo(){
    var disliked = document.getElementById('disliked');
    var liked = document.getElementById('liked');

    if(disliked.src="assets/dislike.png"){
        disliked.src="assets/thumbdown.png";
        liked.src="assets/like.png";
        liked.classList.toggle("thumpdown");
    }
    else{
        disliked.src="assets/dislike.png";
    }
}