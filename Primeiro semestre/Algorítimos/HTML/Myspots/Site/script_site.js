
    function normal_services(){
        img_signup.style.height = '75px'
    home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'

    }
    function normal_signup(){
        img_signup.style.height = '75px'
    home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'

    }
    function normal_home(){
        home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'
    img_signup.style.height = '75px'

    }
    function normal_products(){
        home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'
    img_signup.style.height = '75px'

    }

function cresce_signup() {
    img_signup.style.height = '85px'
    home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'
}

function cresce_home() {
    home_img.style.height = '65px'
    services_img.style.height = '50px'
    product_img.style.height = '50px'
    img_signup.style.height = '75px'
}

function cresce_services() {
    home_img.style.height = '50px'
    services_img.style.height = '65px'
    product_img.style.height = '50px'
    img_signup.style.height = '75px'
}

function cresce_products() {
    home_img.style.height = '50px'
    services_img.style.height = '50px'
    product_img.style.height = '65px'
    img_signup.style.height = '75px'
}

function icon_pag_principal() {
    Div_Login.style.display = 'none'
    Boas_vindas.style.display = 'none'
    inputs_cadastro.style.display = 'none'
    div_home.style.display = 'block'
}
//-------------------------------------------------------------------
function insta_grande() {
    img_insta.style.height = '70px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}

function face_grande() {
    img_insta.style.height = '60px'
    img_face.style.height = '74px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}

function github_grande() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '70px'
    img_twt.style.height = '60px'
}

function twt_grande() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '70px'
}
//--------------------------------------------------------------
//-------------------------------------------------------------------
function insta_normal() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}

function face_normal() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}

function github_normal() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}

function twt_normal() {
    img_insta.style.height = '60px'
    img_face.style.height = '62px'
    img_github.style.height = '60px'
    img_twt.style.height = '60px'
}
//--------------------------------------------------------------
window.onscroll = function() {fmenu()};

var header = document.getElementById("menu");

var sticky = header.offsetTop;

function fmenu() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
  //--------------------------------------
}
function sim_def() {
    Input_Def.style.display = 'block'
}

function nao_def() {
    Input_Def.style.display = 'none'
}
//--------------------------------------
function regiao_selecionada() {
    input_reg.style.display = 'block'
}
function calcula(){
    var valor_poste = 15
    var porcen_lucro = regioes.value * 100
    var lucro_total = Number((lucro.value * regioes.value)) + Number(lucro.value)
    var lucro_adi = lucro_total - lucro.value
    var implante = valor_poste * num_vaga.value

    div_resposta.innerHTML = 
    "<b>=VALORES=</b>"+
    "<br><br>"+
    "Custo da implantação: R$ " + implante +
    "<br>"+
    "Porcentagem de lucro adicional: " +porcen_lucro+"%" +
    "<br>"+
    "Lucro total estimado: " + lucro_total +
    "<br>"+
    "Lucro estimado: " + lucro_adi
    
    div_form.style.display = 'none'
}
//-----------------------------------------
function Voltar_cadastro1() {
    inputs_cadastro.style.display = 'block'
    Input_Def.style.display = 'none'
    div_def.style.display = 'none'
}

function button_cadastro2() {
    inputs_cadastro.style.display = 'none'
    div_def.style.display = 'block'
}
//------------------------------------------------