const pontos=document.querySelector("#pontos").innerText
const tabuleiro=document.querySelector(".tabuleiro")
const table=document.getElementsByName("table")

if(pontos <= 0){
    const cont_pontos=document.createElement("div")
    const h2_pontos=document.createElement("h2")
    h2_pontos.innerHTML="VOCÊ PERDEU!"
    cont_pontos.appendChild(h2_pontos)
    cont_pontos.classList.add("cont_pontos")

    const div_start=document.createElement("div")
    div_start.setAttribute("class", "start")

    const form_start=document.createElement("form")
    form_start.setAttribute("method", "POST")
    form_start.setAttribute("action", "index.php")
    div_start.appendChild(form_start)

    const input1_start=document.createElement("input")
    input1_start.setAttribute("id", "voltar")
    input1_start.setAttribute("type", "hidden")
    input1_start.setAttribute("name", "acao")
    input1_start.setAttribute("value", "Voltar")
    form_start.appendChild(input1_start)

    const input2_start=document.createElement("input")
    input2_start.setAttribute("id", "voltar")
    input2_start.setAttribute("type", "submit")
    input2_start.setAttribute("value", "Voltar")
    input2_start.classList.add("voltar-inp")
    form_start.appendChild(input2_start)
    cont_pontos.appendChild(div_start)

    const primeiro=document.querySelector("#primeiro")
    const princ=document.querySelector("#principal")
    princ.setAttribute("style", "filter: blur(4px);")
    primeiro.appendChild(cont_pontos)
    primeiro.setAttribute("display", "flex")
    primeiro.setAttribute("justfy-content", "center")
    primeiro.setAttribute("align-items", "center")


}
