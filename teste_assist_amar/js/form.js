var botaoAdicionar = document.querySelector("#adicionar-usuario");
botaoAdicionar.addEventListener("click", function(event) {
    event.preventDefault();

    var form = document.querySelector("#form-adiciona");

    var usuario = obtemUsuarioDoFormulario(form);

    var erros = validaUsuario(usuario);

    if (erros.length > 0) {
        exibeMensagensDeErro(erros);

        return;
    }

    adicionaUsuarioNaTabela(usuario);

    form.reset();

    var mensagensErro = document.querySelector("#mensagens-erro");
    mensagensErro.innerHTML = "";

});

function obtemUsuarioDoFormulario(form) {

    var usuario = {
        nome: form.nome.value,
        nivel: form.nivel.value,
        situacao: form.situacao.value,
}
    return usuario;
}

function montaTr(usuario) {
    var usuarioTr = document.createElement("tr");
    usuarioTr.classList.add("usuario");

    usuarioTr.appendChild(montaTd(usuario.nome, "info-nome"));
    usuarioTr.appendChild(montaTd(usuario.nivel, "info-nivel"));
    usuarioTr.appendChild(montaTd(usuario.situacao, "info-situacao"));

    return usuarioTr;
}

function montaTd(dado, classe) {
    var td = document.createElement("td");
    td.classList.add(classe);
    td.textContent = dado;

    return td;
}

function validaUsuario(usuario) {

    var erros = [];

    if (usuario.nome.length == 0) {
        erros.push("O nome não pode ser em branco");
    }

    if (usuario.nivel.length == 0) {
        erros.push("O nivel não pode ser em branco");
    }

    if (usuario.situacao.length == 0) {
        erros.push("A situação não pode ser em branco");
    }

    return erros;
}

function exibeMensagensDeErro(erros) {
    var ul = document.querySelector("#mensagens-erro");
    ul.innerHTML = "";

    erros.forEach(function(erro) {
        var li = document.createElement("li");
        li.textContent = erro;
        ul.appendChild(li);
    });
}

function adicionaUsuarioNaTabela(usuario) {
    var usuarioTr = montaTr(usuario);
    var tabela = document.querySelector("#tabela-usuarios");
    tabela.appendChild(usuarioTr);
}
