/*document.addEventListener("load", function () {
    var x = window.localStorage.get("checked");
   
    if ( x === "true"){
         document.getElementById("nightMode_switcher").checked = true;
    } else {
         document.getElementById("nightMode_switcher").checked = false;
    }
 
    if (checkBox.checked == true) {
        body.className = 'dark';
        localStorage.checked = true

    } else {
        body.className = 'light';
        localStorage.checked = false


    }

    // your code here
}, false);*/
window.addEventListener("load", start, false);

var theme;
function changeTheme() {
    
    var checkBox = document.getElementById("nightMode_switcher");
    var body = document.getElementById("body");
    var currentClass = body.className;
   
//    body.className = currentClass == 'dark' ? 'light' : 'dark';
  //if(getCookie('theme') != ""){  
 // checkBox.checked = getCookie('theme')
  //}
   var elements = document.querySelectorAll([' p', 'h1', 'a']);
  
    if (checkBox.checked == true) {
        body.className ='dark';
        localStorage.checked= true;
   var index = 0,
       length = elements.length;
   for (; index < length; index++) {
       elements[index].style.color = 'blue';
    
   }
    } else {
        body.className = 'light';
        localStorage.checked= false

       
    }
}








function start(){
document.getElementById("nightMode_switcher").addEventListener("click", changeTheme, false);


 var x = window.localStorage.get("checked");
var checkBox = document.getElementById("nightMode_switcher");
  var body = document.getElementById("body");
 if (x === "true") {
     checkBox.checked = true;
 } else {
     checkBox.checked = false;
 }

 if (checkBox.checked == true) {
     body.className = 'dark';
     localStorage.checked = true

 } else {
     body.className = 'light';
     localStorage.checked = false
 }
}





/*
< script src = "script.js"
type = "text/javascript" >

    document.getElementById("nightMode_switcher").addEventListener("click", changeTheme, false);
document.addEventListener("DOMContentLoaded", function () {
    var body = document.getElementById("body");
    let theme = localStorage.getElement('theme');

    if (window.localStorage.get("checked") === "true") {
        document.getElementById("nightMode_switcher").checked = true;
        var body = document.getElementById("body");
        var currentClass = body.className;
        body.className = currentClass == "dark" ? "light" : "dark";
    } else {
        document.getElementById("nightMode_switcher").checked = false;
    }

    if (checkBox.checked == true) {
        body.className = 'dark';
        localStorage.checked = true

    } else {
        body.className = 'light';
        localStorage.checked = false


    }

    // your code here
}, false);
var theme;

function changeTheme() {

    var checkBox = document.getElementById("nightMode_switcher");
    var body = document.getElementById("body");
    var currentClass = body.className;

    // body.className = currentClass == 'dark' ? 'light' : 'dark';
    //if(getCookie('theme') != ""){
    // checkBox.checked = getCookie('theme')
    //}


    if (checkBox.checked == true) {
        body.className = 'dark';
        theme = 'dark';
        localStorage.checked = true;
        localStorage.setElement('theme', 'dark');

    } else {
        body.className = 'light';
        localStorage.checked = false;
        theme = 'light';
        localStorage.setElement('theme', 'dark');
    }

    <
    /script>
*/