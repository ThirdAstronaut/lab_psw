function benchmarkWindow() {
    var newWindow = window.open("", "newWin", "left=200, top=100, width=950, height=500");

    var winLeft = newWindow.screenLeft ? newWindow.screenLeft : newWindow.screenX;
    var winTop = newWindow.screenTop ? newWindow.screenTop : newWindow.screenY;
  var image = new Image();
  image.src = "images/benchmark.png";

   // newWindow.document.write("<p>This is 'myWin'");
    newWindow.document.write("<br>Horizontal: " + winLeft);
    newWindow.document.write("<br>Vertical: " + winTop + "</p>");
    newWindow.document.write(image.outerHTML);
}


   function mouseDown() {
    
    var paragraphs = document.getElementsByClassName("multi_text");
    for (var i = 0; i < paragraphs.length; i++)
    paragraphs[i].style.color = "red";
       
   }

   function mouseUp() {

       var paragraphs = document.getElementsByClassName("multi_text");
       for (var i = 0; i < paragraphs.length; i++)
           paragraphs[i].style.color = "black";

   }


   function showCoords(event) {
       var x = event.clientX;
       var y = event.clientY;
       var coor = "X coords: " + x + ", Y coords: " + y;
       document.getElementById("demo").innerHTML = coor;
   }

   function clearCoor() {
       document.getElementById("demo").innerHTML = "";
   }


   function changeFontStyle(fontstyle) {
       document.body.setAttribute("style",
           "font-family: " + fontstyle);
   }
