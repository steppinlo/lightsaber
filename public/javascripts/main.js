var calculator = {
  add: function(x,y){
    return (x+y);
  },
  multiply: function(x,y){
    return (x*y);
  },
  divide: function(x, y){
    return (x/y);
  },
  subtract: function(y, x){
    return (y-x);
  }
};


var errorModule = function(){
  var hidden = document.getElementById("hiddenText");
  hidden.addEventListener("click", function(){
    var reveal = document.getElementById("error");
    if(reveal.classList.contains("hide")){
      reveal.classList.remove("hide")
    } else {
      reveal.classList.add("hide")};
  })
};

document.addEventListener("DOMContentLoaded", function(e){errorModule()})
