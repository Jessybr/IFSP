const tutorial = document.querySelector("#tutorial");
const tutor_cont = document.querySelector("#tutor_cont");
const tutor_text = document.createElement("p");

// Ao clicar no botão "Como jogar", é criada uma tag <p> contendo as instruções do jogo e, em seguida, é colocada dentro de uma div.
tutorial.addEventListener("click", (evt) => {
    tutor_text.innerHTML = "Como Jogar: Cada carta tem um par correspondente, ao achar todos os pares o jogador ganha o jogo, se não, perde. O jogo conta com uma pontuação de que cada par acertado é acrescentado 5 pontos, caso contrário é descontado 2 pontos.";
    tutor_cont.setAttribute("style", "border-radius: 10px; background-color: #FFC857; width: 480px; margin: auto; padding: 5px; display: block;");
    tutor_cont.appendChild(tutor_text);
});

