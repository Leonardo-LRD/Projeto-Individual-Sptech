// sessão
function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var a_usuario = document.getElementById("a_usuario");
    var b_usuario = document.getElementById("b_usuario");

    if (email != null && nome != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        a_usuario.innerHTML = nome;
        b_usuario.innerHTML = nome;

        // finalizarAguardar();
    } 
    else {
        window.location = "login.html";
    }
}


function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "index.html";
}


// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}


function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
        divErrosLogin.innerHTML = texto;
    }
}


// apaga mensagem
function sumirMensagem() {
    cardErro.style.display = "none"
}


// modal
/*
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}


function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}
*/

