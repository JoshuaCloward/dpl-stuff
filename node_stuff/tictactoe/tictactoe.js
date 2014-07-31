


var count = 0;
var board = [['-','-','-'],['-','-','-'],['-','-','-']]

  for(var i = 0; i < 9; i++){

    var readline = require('readline');
    var rl = readline.createInterface({
      input: process.stdin,
      output: process.stdout
    });

    rl.question("Where Would you like to go", function(answer) {


      if((count % 2) == 0)
      {
        if(answer.match(1))
          {  board[0][0] = 'X';  }
        else if(answer.match(2))
          {  board[0][1] = 'X';  }
        else if(answer.match(3))
          {  board[0][2] = 'X';  }
        else if(answer.match(4))
          {  board[1][0] = 'X';  }
        else if(answer.match(5))
          {  board[1][1] = 'X';  }
        else if(answer.match(6))
          {  board[1][2] = 'X';  }
        else if(answer.match(7))
          {  board[2][0] = 'X';  }
        else if(answer.match(8))
          {  board[2][1] = 'X';  }
        else if(answer.match(9))
          {  board[2][2] = 'X';  }
      }
      else if((count % 2) != 0)
      {
        if (answer.match(1))
          {  board[0][0] = 'O';  }
        else if(answer.match(2))
          {  board[0][1] = 'O';  }
        else if(answer.match(3))
          {  board[0][2] = 'O';  }
        else if(answer.match(4))
          {  board[1][0] = 'O';  }
        else if(answer.match(5))
          {  board[1][1] = 'O';  }
        else if(answer.match(6))
          {  board[1][2] = 'O';  }
        else if(answer.match(7))
          {  board[2][0] = 'O';  }
        else if(answer.match(8))
          {  board[2][1] = 'O';  }
        else if(answer.match(9))
          {  board[2][2] = 'O';  }
      };

  count++;
  console.log(board[0]);
  console.log(board[1]);
  console.log(board[2]);

  rl.close(function answer);

});
};

var answer = rl.question();
