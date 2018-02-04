var campoFiltro = document.querySelector("#filtrar-tabela");

campoFiltro.addEventListener("input", function() {
    var usuarios = document.querySelectorAll(".usuario");

    if (this.value.length > 0) {
        for (var i = 0; i < usuarios.length; i++) {
            var usuario = usuarios[i];
            var tdNome = usuario.querySelector(".info-nome");
            var nome = tdNome.textContent;
            var expressao = new RegExp(this.value, "i");

            if (!expressao.test(nome)) {
                usuario.classList.add("invisivel");
            } else {
                usuario.classList.remove("invisivel");
            }
        }
    } else {
        for (var i = 0; i < usuarios.length; i++) {
            var usuario = usuarios[i];
            usuario.classList.remove("invisivel");
        }
    }
});
