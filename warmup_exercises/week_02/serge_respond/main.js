//if any question he responds "Sure"
//if all in caps = "Woah, chill out!"
//if string is empty = "Fine. Be that way!"
//on anything else he responds "Whatever"

var Serge = {


  respondTo: function (string){
    //we write this.isQuestion(..) as our method is inside of the Serge object, and it's like if we called Serge.respondTo() outside we need to call isQuestion(..) on THIS as THIS is refers to object Serge.
    if (this.isQuestion(string)){
      console.log("Sure");
    } else if(this.isEmpty(string)){
      console.log("Fine. Be that way!");
    } else if(this.allCaps(string)){
      console.log("Woah, chill out!"); 
    } else {
      console.log("Whatever");
    }
  },

  //we create all tiny functions that do something 1, and then call on them in our respondTo function.
  isQuestion: function(string){
    // if(string.endsWith("?")){
    //   return true;
    // } else {
    //   return false;
    // }
    string = string.trim();
    return string.endsWith("?");
  },

  allCaps: function(string){
    // if(string === string.toUpperCase()){
    //   return true;
    // } else {
    //   return false;
    // }
    return string === string.toUpperCase();
  },

  isEmpty: function(string){
    // if(string.trim() === ""){
    //   return true;
    // } else {
    //   return false;
    // }
    return string.trim() === "";
  }
}

Serge.respondTo("How are you?");
Serge.respondTo("How are you?       ");
Serge.respondTo("hello");
Serge.respondTo("WHAHHJJLKL");
Serge.respondTo("             ");
Serge.respondTo("");