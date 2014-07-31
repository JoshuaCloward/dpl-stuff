var windowLoaded = function() {
  console.log("windowloaded");
  var form = document.forms[0];
  if (form) {
    form.onsubmit = formValidator;
  }
};





var formValidator = function() {
  console.log("validator");

  var ageInput = this.querySelector('input[name=age]');
  var name = this.querySelector('input[name=name]');
  name = name.value;

  if(name == "")
  {
    alert('No Name Entered.');
    return false;
  };


  var age = parseInt(ageInput.value);
//  var az = name.value;
  if (age < 18) {
    alert('You are too young to be using the web');
    return false;
  }else if (age > 100) {
    alert('You are too old to be using the web');
    return false;
  }else if (age.toString() == "NaN") {
    alert('That is not a number.');
    return false;
  }
  else{
  return true;
  }
};

window.onload = windowLoaded;

// find the name field
// if its value is nothing
// then alert an error
// then return false
