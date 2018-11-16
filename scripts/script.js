window.onload = function changeTheme() {
    var checkBox = document.getElementById("nightMode_switcher");
    var body = document.getElementById("body");
    var currentClass = body.className;
   
//    body.className = currentClass == 'dark' ? 'light' : 'dark';
  
    if (checkBox.checked == true) {
        body.className ='light';

    } else {
        body.className = 'dark';
       
    }
}