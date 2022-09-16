// Utilizando a API https://blockchain.info/ticker
// retorne no DOM o valor de compra da bitcoin and reais.
// atualize este valor a cada 30s
const brlTable = document.getElementById('brl');
const usTable = document.getElementById('us');
const eurTable = document.getElementById('eur');

async function consultaBitCoin(){
    const response = await fetch('https://blockchain.info/ticker');
    const jsonResponse = await response.json();

    try{
        const bitCoinValues = {
            bitCoinBRL: jsonResponse.BRL.buy,
            bitCoinUS: jsonResponse.USD.buy,
            bitCoinEUR: jsonResponse.EUR.buy
        }


        brlTable.innerText = 'R$ ' + bitCoinValues.bitCoinBRL;
        usTable.innerText = '$ ' + bitCoinValues.bitCoinUS;
        eurTable.innerText = 'Є ' + bitCoinValues.bitCoinEUR;

    }catch(error){
        console.log(error + '   Erro na requisição')
    }
}
consultaBitCoin()

// Utilizando a API https://api.chucknorris.io/jokes/random
// retorne uma piada randomica do chucknorris, toda vez que
// clicar em próxima
