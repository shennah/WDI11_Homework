// reverse( [1, 2, 3, 4] );   // Should return [ 4, 3, 2, 1 ]
// flatten( ["Hello", ["World", 42] ] );   // Should return [ "Hello", "World", 42 ]


var reverse = function(array){
  var result = [];

  for(var i = array.length - 1; i >= 0; i --){
    result.push(array[i]);
  }

  return result;
};

console.log(reverse([1, 2, 3, 4]));

var flatten = function(array){
  var result = [];

  for(var i = 0; i < array.length; i++){

    //we are checking up if our next element in the array is an array, if it is we loop through it to write 1 element after another in our result. If it is not an array we just put it in our result as it is.
    //to check up if it is an array we can also type: 
    //Array.isArray(array[i]);
    if(array[i] instanceof Array){
      for(var j = 0; j < array[i].length; j++){
        result.push(array[i][j]);
      }    
    } else {
      result.push(array[i]);
    }
  }

  return result;
};

console.log(flatten(["Hello", ["World", 42]]));
