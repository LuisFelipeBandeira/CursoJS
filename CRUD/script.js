const btnAbrirTelaCadastro = document.getElementById('incluir');
const telaCadastro = document.querySelector('.modal-container-cadastro');
const btnCadastrar = document.getElementById('btnCadastro');
const telaUpdate = document.querySelector('.modal-container-alteração');
const bntsUpdateAndDelete = document.querySelector('tbody');
const btnUpdate = document.getElementById('btnAlteracao');

bntsUpdateAndDelete.addEventListener('click', editDelete)
btnCadastrar.addEventListener ('click', create);
btnAbrirTelaCadastro.addEventListener('click', ativarTelaCadastro);
telaCadastro.addEventListener('click', cliqueFora);
telaUpdate.addEventListener('click', cliqueFora)

function update(index){
    updateColaborador(index)
    fecharTelaUpdate()
}

function preecherCampos(client, index){
    ativarTelaUpdate()
    document.getElementById('inputUpdateName').value = client.name;
    document.getElementById('inputUpdateSetor').value = client.setor;
    document.getElementById('inputUpdateEmail').value = client.email;
    btnUpdate.addEventListener('click', (event)=>{
        event.preventDefault();
        update(index);
    })
}

function editColaborador(index){
    const client = consultaLocalStorage()[index]
    preecherCampos(client, index)
}

function editDelete(event){
    if(event.target.type == 'button'){
        if(event.target.dataset.action == 'edit'){
            editColaborador(event.target.id)
        }else{
            deleteColaborador(event.target.id)
            atualizarTable()
        }
    }
}

function ativarTelaCadastro(){
    telaCadastro.classList.add('active');
}

function ativarTelaUpdate(){
    telaUpdate.classList.add('active');
}

function cliqueFora(event){
    if(event.target === this) {
        fecharTelaCadastro(event);
        fecharTelaUpdate(event)
    }
}

function fecharTelaCadastro(event){
    event.preventDefault()
    telaCadastro.classList.remove('active');
}

function fecharTelaUpdate(event){
    telaUpdate.classList.remove('active');
}

const getLocalStorage = () => {
    return JSON.parse(localStorage.getItem('db_colaboradorQ2')) ?? [];
}

const setLocalStorage = (db) => {
    return localStorage.setItem('db_colaboradorQ2', JSON.stringify(db));
}


function create(event){
    event.preventDefault()
    const newValue = {
        name: document.getElementById('inputNome').value,
        setor: document.getElementById('inputSetor').value,
        email: document.getElementById('inputEmail').value
    }

    const db_client = getLocalStorage()
    db_client.push(newValue)
    setLocalStorage(db_client)
    
    document.getElementById('inputNome').value = '';
    document.getElementById('inputSetor').value = '';
    document.getElementById('inputEmail').value = '';

    atualizarTable()
    fecharTelaCadastro(event)
}

function consultaLocalStorage(){
    return getLocalStorage()
}

function updateColaborador(index){
    const newValue = {
        name: document.getElementById('inputUpdateName').value,
        setor: document.getElementById('inputUpdateSetor').value,
        email: document.getElementById('inputUpdateEmail').value
    }

    const dadosColaborador = consultaLocalStorage();
    dadosColaborador[index] = newValue;
    setLocalStorage(dadosColaborador);
    atualizarTable()
}


function deleteColaborador(index){
    const dadosLocalStorage = consultaLocalStorage()
    dadosLocalStorage.splice(index, 1)
    setLocalStorage(dadosLocalStorage)
}

function atualizarTable(){
    document.querySelector('tbody').innerHTML = '';
    const dados = consultaLocalStorage();
    dados.forEach(createRow)
}

function createRow(clientRow, index){
    const newRow = document.createElement('tr');
    newRow.innerHTML = `
        <td>${clientRow.name}</td>
        <td>${clientRow.setor}</td>
        <td>${clientRow.email}</td>
        <td>
            <button type="button" class="buttonEdit" id="${index}" data-action="edit">Editar</button>
            <button type="button" class="buttonDel" id="${index}" data-action="delete">Excluir</button>
        </td>
    `
    document.querySelector('tbody').appendChild(newRow)
}

atualizarTable()