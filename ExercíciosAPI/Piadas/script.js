// Utilizando a API https://api.chucknorris.io/jokes/random
// retorne uma piada randomica do chucknorris, toda vez que
// clicar em próxima

const btn = document.querySelector('[data-confirmar]');

btn.addEventListener('click', requisicionPiada)

async function requisicionPiada(event){
    event.preventDefault()
    try{
        const response = await fetch('https://api.chucknorris.io/jokes/random')
        const Jsonresponse = await response.json()
        console.log(Jsonresponse)

    }
    catch(error){
        console.log(error)
    }
}
