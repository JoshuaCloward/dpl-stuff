// // My First JS program!
// //
// // var firstName = "Jshua";
// // var lastName = "Cloward";
// // var fullName = firstName + " " + lastName;
// // var greeting = "Hello, my name is " + fullName;
// //
// // // greeting is NOT a function, so no parenths
// // // alert IS a function, so we use paraneths
// // console.log(greeting);
// //
// // var x = 1;
// // var y = 13;
// // var sum = x + y;
// // console.log("The sum of " + x + " and " + y + " is " + sum);
//
//
//
// var age = 21
//
// if(age >= 21)
//   {
//     console.log("YO! Let's hit up the club")
//   }
//   else if(age < 21 && age > 19)
//   {
//     console.log("sucky age")
//   }
//   else
//   {
//     console.log("Sorry, no club for you")
//   }
//
// var name = ['Joshua', 'Jason', 'Will'];
//
//   for(var i = 0;i < name.length;i++)
//   {
//     console.log(name[i]);
//   }
//
//
//
//   var people = [
//       {name: "Joshua", age: 21},
//       {name: "Ty", age: 27},
//       {name: "Fluffy", age: 3}
//     ];
//
//     for(i = 0; i < people.length; i++)
//     {
//       console.log(people[i].name)
//       console.log(people[i].age)
//     }
//
//
// if(confirm("Are you sure?"))
//   {
//     console.log("come in and have a drink!")
//   } else {
//     console.log("Yu must be 21 to enter")
//   }
//
//
//
// var AGE = prompt("What is your age?")
//
// if(parseInt(age) >= 18) {
//     console.log("You can vote")
//
// } else {
//   console.log("No voting for you yet")
// }

var tacoDiv = document.getElementById("taco")

window.onload = function() { // will be called regardless
    tacoDiv.style.backgroundColor = "red"
    window.setTimeout(function(){
      tacoDiv.style.color = "white";
    }, 3000)
}
