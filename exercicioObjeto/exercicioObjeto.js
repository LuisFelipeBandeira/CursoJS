// const carro = {
//   roda: 4,
//   init(marca){
//     this.marca = marca
//     return this
//   },
//   acelerar(){
//     return `${this.marca} acelerou as ${this.roda} rodas`
//   },
//   buzinar(){
//     return `${this.marca} buzinou!`
//   }
// }

// const audi = Object.create(carro).init('Audi');
// console.log(audi.acelerar());
// console.log(audi.buzinar());


// console.log(audi.init('audi').acelerar());
// console.log(audi.init('audi').buzinar());





const automovel = {
  acelerar(marca){
    return `${marca} Acelerou`
  },
  buzinar(marca){
    return `${marca} Buzinou`
  }
};

const carro = {
  marca: 'Vectra',
  rodas: 4,
  malas: true
}

const moto = {
  marca: 'MT-09',
  rodas: 2,
  capacete: true
}

Object.assign(carro, automovel);
Object.assign(moto, automovel);

console.log(moto.acelerar(moto.marca))
console.log(moto.buzinar(moto.marca))

console.log(moto.acelerar(carro.marca))
console.log(moto.buzinar(carro.marca))