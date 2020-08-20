// Deficiência física

function input_yes_pd() {
    div_Physycal_disablity.style.display = 'block'
}

function input_no_pd() {
    div_Physycal_disablity.style.display = 'none'
}

// Cadastro feito

function button_finish_signin() {
    alert("Congrats! Your registration was complete.");
}

// Recuperação de senha

function enviar_email() {
    alert('Email successfully sent!')
}

// Simulador financeiro

function calcular(){
    var m_quadrados = Number(metros.value) // metros quadrados da ala médica
    var numero_leitos = Number(leitos.value) //numero de leitos da ala médica 
    var mq_porleito = (m_quadrados) / (numero_leitos) // Quantidade de metros quadrados em cada leito
  
    h3_teste.innerHTML = ` Cada leito possui em torno de ${mq_porleito.toFixed(2)}m² ` // Exibindo metros quadrados por leito
  
    var arduino_pormq = m_quadrados / Number(10) /* Divide a quantidade de metros quadrados por 10, que é o radio de alcance do sensor. Para identificar o numero 
    de sensores*/
  
    h3_arduino.innerHTML = `Vamos utilizar ${arduino_pormq} sensores` // Exibindo o numero de sensores  
  
  
    var preco_arduino = arduino_pormq * Number(40) /* O número de sensores multiplicado por 40, que é valor de cada sensor. Para identificar o valor gasto com
    os sensores*/
  
  
    var preco_total = preco_arduino + Number(5000) //Soma o valor gasto com o arduino, com o valor da mão de obra
    
    h3_preco_total.innerHTML = ` Valor total dos serviços  R$ ${preco_total.toFixed(2)} ` // Exibindo o preço do serviço
    }
