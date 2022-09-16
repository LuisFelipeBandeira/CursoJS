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

async function consultar(event){
    event.preventDefault()
    try {
        const valueCepUser = cepInfo.cepUser.value
        const response = await fetch(`https://viacep.com.br/ws/${valueCepUser}/json/`)
        const jsonDados = await response.json()

        cepInfo.ruaUser.value = jsonDados.logradouro;
        cepInfo.bairroUser.value = jsonDados.bairro;
        cepInfo.ufUser.value = jsonDados.uf;
        cepInfo.cidadeUser.value = jsonDados.localidade;
    }
    catch {
        cepInfo.cepUser.value = 'Erro ao consultar'
        cepInfo.ruaUser.value = '';
        cepInfo.bairroUser.value = '';
        cepInfo.ufUser.value = '';
        cepInfo.cidadeUser.value = '';
    }
};

btnLimpar.addEventListener('click', limparInputs)

function limparInputs(){
    Object.keys(cepInfo).forEach(info => {
        cepInfo[info].value = ''
    })
}



