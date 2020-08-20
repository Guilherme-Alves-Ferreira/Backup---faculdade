
// Contador do slide show
var contador = 1;
setInterval(function () {
    document.getElementById('radio' + contador).checked = true;
    contador++;
    if (contador > 4) {
        contador = 1;
    }
}, 3000);

//sei lá

function comprar_premium() {
    alert('Parabéns! Compra da faixa premium realizada com sucesso!')
}

function comprar_advanced() {
    alert('Parabéns! Compra do pacote premium realizada com sucesso!')
}