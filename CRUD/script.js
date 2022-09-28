const btnAbrirTelaCadastro = document.getElementById('incluir');
const telaCadastro = document.querySelector('.modal-container-cadastro');
const btnCadastrar = document.getElementById('btnCadastro');
const body = document.querySelector('body');

console.log(btnAbrirTelaCadastro)
console.log(telaCadastro)
console.log(btnCadastrar)
console.log(body)

btnCadastrar.addEventListener ('click', create);

btnAbrirTelaCadastro.addEventListener('click', ativarTelaCadastro);

body.addEventListener('click', fecharTelaCadastro)

function fecharTelaCadastro(event){
    event.preventDefault()
    telaCadastro.classList.remove('active');
}

function ativarTelaCadastro(){
    telaCadastro.classList.add('active');
}

function cliqueForaCadastro(event){
    fecharTelaCadastro(event)
}

