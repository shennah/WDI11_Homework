//A, C, G, T, U

//firts we create a function that calculates single nucleotide in the chain
function countSingleNucleotide (string, nucleotide){
  var nucleotideAmount = 0;
  for (var i = 0; i < string.length; i++){
    if(string[i] === nucleotide){
      nucleotideAmount++;
    }
  }
  return nucleotideAmount;
}

//second step we create a function that returns the amount of each nucleotide in the chain
function countTotalAmount (string){
  var totalAmount = {
    "A" : countSingleNucleotide(string, "A"),
    "C" : countSingleNucleotide(string, "C"),
    "G" : countSingleNucleotide(string, "G"),
    "T" : countSingleNucleotide(string, "T"),
    "U" : countSingleNucleotide(string, "U")
  }
  //we return the whole object, if you want it to be displayed in other way iterate throught key:value pairs in the object and print them out
  return totalAmount;
}

//checking if our countSingleNucleotide function is working proper
// console.log(countSingleNucleotide("AACGTUAA", "A"));
// console.log(countSingleNucleotide("AACGTUAA", "C"));

console.log(countTotalAmount("AAAACCCGTU"));