const btnConsultar = document.getElementById('btn')
const btnLimpar = document.getElementById('limpar')

const cepInfo = {
 cepUser : document.getElementById('cep'),
 ruaUser : document.getElementById('rua'),
 bairroUser : document.getElementById('bairro'),
 ufUser : document.getElementById('uf'),
 cidadeUser : document.getElementById('cidade'),
}

btnConsultar.addEventListener('click', consultar)

function consultar(event){
    event.preventDefault()
    const valueCepUser = cepInfo.cepUser.value
    fetch(`https://viacep.com.br/ws/${valueCepUser}/json/`)
    .then(response => {
        return response.json()

    })
    .then(JSONresponse => {
        let data = JSONresponse;
        cepInfo.ruaUser.value = data.logradouro;
        cepInfo.bairroUser.value = data.bairro;
        cepInfo.ufUser.value = data.uf;
        cepInfo.cidadeUser.value = data.localidade;
    })
    .catch(e => {
        cepInfo.cepUser.value = 'Erro ao consultar'
        cepInfo.ruaUser.value = '';
        cepInfo.bairroUser.value = '';
        cepInfo.ufUser.value = '';
        cepInfo.cidadeUser.value = '';
    })
}

btnLimpar.addEventListener('click', limparInputs)

function limparInputs(){
    Object.keys(cepInfo).forEach(info => {
        cepInfo[info].value = ''
    })
}



