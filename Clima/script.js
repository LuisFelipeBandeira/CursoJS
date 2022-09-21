const btnOk = document.getElementById('buscar');
const temp = document.getElementById('temp');
const clima = document.getElementById('clima');
const keyAPI = '9fc797818a8bd5dfac40e31e16cf8347';

btnOk.addEventListener('click', consultarClima);

async function consultarClima(){
    try {
        temp.innerText = 'Temp: '
        clima.innerText = 'Clima: '

        const cidadeInput = document.getElementById('input').value;
        const urlResponse = await fetch(`https://api.openweathermap.org/data/2.5/weather?q=${cidadeInput}&units=metric&appid=${keyAPI}&lang=pt_BR`)
        const responseClima = await urlResponse.json()

        temp.innerText += ' ' + parseInt(responseClima.main.temp) + '°';
        clima.innerText += '    ' + responseClima.weather[0].description;
        
    }catch(error){
        temp.innerText += ' Cidade não encontrada'
    }
}