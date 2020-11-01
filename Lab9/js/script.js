let userScore = 0;
let computerScore = 0;

let userScore_span = document.getElementById("user-score");
let computerScore_span = document.getElementById("computer-score");

const scoreBoard_div = document.querySelector(".score-board");
let result_div = document.querySelector(".result");

const rock_div = document.getElementById("r");
const paper_div = document.getElementById("p");
const scissors_div = document.getElementById("s");

//getComputerChoice function
//randomly pick choice for computer
function getComputerChoice(){
  const choice = ["Rock", "Paper", "Scissors"];
  var ramdonNum = Math.floor(Math.random()*3);
  return choice[ramdonNum];
}

function win(user, computer){
  userScore ++;
  userScore_span.innerHTML = userScore;
  computerScore_span.innerHTML = computerScore;
  result_div.innerHTML = user + " beats " + computer +". You Win!";
}

function lose(user, computer){
  computerScore ++;
  userScore_span.innerHTML = userScore;
  computerScore_span.innerHTML = computerScore;
  result_div.innerHTML = user + " againests " + computer +". You Lose!";
}

function draw(user, computer){
  result_div.innerHTML = user + " is equal to " + computer +". Draw!";
}

//game funtion
//base on the condition call fuction win / lose / draw
function game(userChoice){
  const computerChoice = getComputerChoice();
  switch(userChoice + computerChoice){
    case "RockScissors":  //player wins
    case "PaperRock":
    case "ScissorsPaper":
      win(userChoice, computerChoice);
      break;
    case "RockPaper":  //player loses
    case "PaperScissors":
    case "ScissorsRock":
      lose(userChoice, computerChoice);
      break;
    case "RockRock":  //draw
    case "PaperPaper":
    case "ScissorsScissors":
      draw(userChoice, computerChoice);
      break;
  }
}

//main function
//pass the choice of player to game function
function main(){
  rock_div.addEventListener('click',function(){
    game("Rock");
  })

  paper_div.addEventListener('click',function(){
    game("Paper");
  })

  scissors_div.addEventListener('click',function(){
    game("Scissors");
  })
}


main();
