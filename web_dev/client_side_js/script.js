console.log("The script is running")

function changePicborder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "5px solid black";
}


var photo = document.getElementById("lebron-photo");
photo.addEventListener("click", changePicborder);

var list = document.getElementsByTagName("UL")[0];
list.getElementsByTagName("LI")[0].innerHTML = "OSU, baby.";

