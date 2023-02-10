function openFullscreen(id) {
var elem = document.getElementById("upvideo"+id);
  if (elem.requestFullscreen){
    elem.requestFullscreen();
  }
}