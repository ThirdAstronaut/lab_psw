/*ex 5 form*/
var inputHelpers = ["(Ciąg znaków - max.30)", " (Ciąg znaków - max.50)", "(Liczba całkowita - od 1 do 12)",
    "(Ciąg znaków - max.60 ze znakiem @)", "(Ciąg o wzorcu: [\+] ? [0 - 9] {9,11})", "(Wybór tematu z listy)",
    "(Ciąg alfanumeryczny o maksymalnej liczbie znaków: 200)", ""
];


function init() {
    registerListeners(document.getElementById("first_name_input"), 0, "first_name_hint");
    registerListeners(document.getElementById("last_name"), 1, "last_name_hint");
    registerListeners(document.getElementById("month_of_birth"), 2, "month_of_birth_hint");
    registerListeners(document.getElementById("email"), 3, "email_hint");
    registerListeners(document.getElementById("telephone"), 4, "telephone_hint");
    registerListeners(document.getElementById("email_topic"), 5, "email_topic_hint");
    registerListeners(document.getElementById("msg_content"), 6, "msg_content_hint");

    var form = document.getElementById("contact_form");
    form.addEventListener("submit", function(){
        return confirm("Czy na pewno chcesz wysłać wiadomość?");
    }, false);
form.addEventListener("reset", function () {
    return confirm("Czy na pewno chcesz wyczyścić formularz?");
}, false);

}

function registerListeners(object, msgNumber, name) {
   var helpText = document.getElementById(name);

    object.addEventListener("focus", function () {
        helpText.innerHTML = inputHelpers[msgNumber];
    }, false)
    object.addEventListener("blur", function () {
        helpText.innerHTML = inputHelpers[7];
    }, false)
}
window.addEventListener("load", init, false);