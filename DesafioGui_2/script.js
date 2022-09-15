const button = document.querySelector('[data-confirmar]')
const input = document.getElementById('user')
let retornoGit = document.getElementById('retorno')

button.addEventListener('click', retorno)

function retorno(event){
    event.preventDefault()
    let usuario = '';
    usuario = input.value;
    input.value = '';
    fetch(`https://api.github.com/users/${usuario}/repos`)
    .then(async response => {
        let data = await response.json()
        data.map(item =>{
            retornoGit.innerText = `
            ${item.name.toUpperCase()}
            URL: ${item.url}`
        })        
    })
    .catch(e => console.log('Usuário não encontrado'))
};
