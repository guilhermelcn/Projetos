var usuario = document.querySelectorAll(".usuario");

var tabela = document.querySelector("#tabela-usuarios");

tabela.addEventListener("dblclick", function(event) {
    event.target.parentNode.classList.add("fadeOut");

    setTimeout(function() {
        event.target.parentNode.remove();
    }, 500);

});
