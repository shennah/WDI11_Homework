// GAGCCTACTAACGGGAT
// CATCGTAATGACGGCCT
// => 7


var calculateHammingDistance = function(first_nucleotide, second_nucleotide){

  var diff = 0;

  for(var i = 0; i < first_nucleotide.length; i++){
    if(first_nucleotide[i] !== second_nucleotide[i]){
      diff += 1;
    }
  }

  console.log(diff);
  return diff;

}

calculateHammingDistance("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT" );
calculateHammingDistance("ACCT", "ACTA");