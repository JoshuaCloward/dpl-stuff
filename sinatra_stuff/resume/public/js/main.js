

window.onload = function() {
    var array = ["#000000", "#333333", "#444444", "#666666", "#222222"];
    var a = Math.floor(Math.random()*array.length);
    var bodDiv = document.getElementById("bod");
    bodDiv.style.backgroundColor = array[a];


    document.querySelectorAll('.im img');
     var images = document.querySelectorAll('.im img')

       for(var i = 0;i < images.length;i++)
       {
         images[i].addEventListener('click', function(){
             console.log(this.style.visibility); // debugging since im toggling this i wanna see what im actually working with
             if (this.style.visibility == "visible" || this.style.visibility == ""){
                 this.style.visibility = "hidden";

             } else if (this.style.visibility == "hidden") {
               this.style.visibility = "visible";
             }
         }, false)
       }



}
