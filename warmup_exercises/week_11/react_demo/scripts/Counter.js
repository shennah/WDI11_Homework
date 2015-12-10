const React = require('react');

const Counter = React.createClass({
  //this function initialize our `variable` number and set it default value to be 0,
  //when we work with db or any data storage to we will take value from there
  getInitialState(){
    return {number: 0};
  },

  //this function increment our number value by 1
  incrementNumber(){
    this.setState({number: this.state.number + 1});
  },

  render(){
    return(
      //like that we can give class names or ids for our tags, so we can target them later
      //on button click we are calling for incrementNumber function
      //our number is changable, so we put it as a state, not as a props
      <div className="counter">
        <h1>Count: {this.state.number} </h1>
        <button type="button" onClick={this.incrementNumber}>Increment</button>
      </div>
    );
  }
});

module.exports = Counter;
