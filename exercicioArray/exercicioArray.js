// Selecione cada curso e retorne uma array
// com objetos contendo o título, descricao,
// aulas e horas de cada curso

const cursos = document.querySelectorAll('.curso');

const arrayCursos = Array.from(cursos)

const objCurso = arrayCursos.map((item)=>{
  const titulo = item.querySelector('h1').innerText;
  
  const descricao = item.querySelector('p').innerText;

  const aulas = item.querySelector('.aulas').innerText;

  const horas = item.querySelector('.horas').innerText;

  return {
    titulo: titulo,
    descricao: descricao,
    aulas: aulas,
    horas: horas
  }
})


console.log(objCurso)

// Retorne uma lista com os
// números maiores que 100

// const numeros = [3, 44, 333, 23, 122, 322, 33];

// const nMaiores100 = numeros.filter((item) => {
//   return item > 100
// })

// console.log(nMaiores100)



// Verifique se Baixo faz parte
// da lista de instrumentos e retorne true

// const instrumentos = ['Guitarra', 'Baixo', 'Bateria', 'Teclado']

// const temBaixo = instrumentos.some((item)=>{
//   return item === 'Baixo'
// })

// console.log(temBaixo)






// Retorne o valor total das compras


// const compras = [
//   {
//     item: 'Banana',
//     preco: 'R$ 4,99'
//   },
//   {
//     item: 'Ovo',
//     preco: 'R$ 2,99'
//   },
//   {
//     item: 'Carne',
//     preco: 'R$ 25,49'
//   },
//   {
//     item: 'Refrigerante',
//     preco: 'R$ 5,35'
//   },
//   {
//     item: 'Quejo',
//     preco: 'R$ 10,60'
//   }
// ]
// let valorLimpo = 0
// const valores = compras.map((item)=>{
//   valorLimpo += +item.preco.replace('R$ ', '').replace(',', '.').trim();
// })

// console.log(valorLimpo)

