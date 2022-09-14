// Utilizando o foreach na array abaixo,
// some os valores de Taxa e os valores de Recebimento

const transacoes = [
  {
    descricao: 'Taxa do Pão',
    valor: 'R$ 39',
  },
  {
    descricao: 'Taxa do Mercado',
    valor: 'R$ 129',
  },
  {
    descricao: 'Recebimento de Cliente',
    valor: 'R$ 99',
  },
  {
    descricao: 'Taxa do Banco',
    valor: 'R$ 129',
  },
  {
    descricao: 'Recebimento de Cliente',
    valor: 'R$ 49',
  },
];

let valoresTaxa = 0;
let valoresRecebimento = 0;

transacoes.forEach((item) => {
  let valores = item.valor.split('R$ ');
  let valoresInt = parseFloat(valores[1]);

  let taxaOuRecebimento = item.descricao;


  if(taxaOuRecebimento.charAt(0) === 'T'){
    valoresTaxa += valoresInt
  }else{
    valoresRecebimento += valoresInt
  }

});

console.log('A soma dos valores de taxa é: ' + valoresTaxa)
console.log('A soma dos valores de recebimentos é: ' + valoresRecebimento)



// Retorne uma array com a lista abaixo
const transportes = 'Carro;Avião;Trem;Ônibus;Bicicleta';

// Substitua todos os span's por a's
const html = `<ul>
                <li><span>Sobre</span></li>
                <li><span>Produtos</span></li>
                <li><span>Contato</span></li>
              </ul>`;

// Retorne o último caracter da frase
const frase = 'Melhor do ano!';

// Retorne o total de taxas
const transacoes1 = ['Taxa do Banco', '   TAXA DO PÃO', '  taxa do mercado', 'depósito Bancário', 'TARIFA especial'];


