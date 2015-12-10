//if number devisable on 3 it ll print Pling
// if number devisable on 5 it ll print Plang
//if number devisable on 7 it ll return Plong
//if number is not devisable by 3, 5 or 7 it ll return a string
//if number devisable by 3 and 5 it returns PlingPlang


function rainDrops(number){
  var drop = "";
  if( number % 3 === 0){ 
    drop += "Pling";
  }

  if( number % 5 === 0){
    drop += "Plang";
  }

  if( number % 7 === 0){
    drop += "Plong";
  }

  if(drop.length > 0){
    console.log(drop);
  } else {
    console.log(number.toString());
  }

}

rainDrops(6);
rainDrops(10);
rainDrops(7);
rainDrops(15);
rainDrops(2);
rainDrops(105);