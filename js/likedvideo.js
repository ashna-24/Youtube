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

function likedreply(id){
    var likedreply = document.getElementById('likedreply_'+id);
    var dislikedreply = document.getElementById('dislikedreply_'+id);

    if(likedreply.src="assets/like.png"){
        likedreply.src="assets/thumbs.png";
        dislikedreply.src="assets/dislike.png";
    }
    else{
        likedreply.classList.toggle("thump");
    }
}

function dislikedreply(id){
    var dislikedreply = document.getElementById('dislikedreply_'+id);
    var likedreply = document.getElementById('likedreply_'+id);

    if(dislikedreply.src="assets/dislike.png"){
        dislikedreply.src="assets/thumbdown.png";
        likedreply.src="assets/like.png";
        likedreply.classList.toggle("thumpdown");
    }
    else{
        dislikedreply.src="assets/dislike.png";
    }
}