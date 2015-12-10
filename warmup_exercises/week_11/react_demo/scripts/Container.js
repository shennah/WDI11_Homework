const React = require('react');
const Counter = require('./Counter');
const Form = require('./Form');

const Container = React.createClass({

  render(){
    return(
      <div>
        <Counter />
        <Form onSubmit={this.onSubmit}/>
      </div>
    );
  },

  onSubmit(){
    console.log('on submit event on form executed')
  }
});

module.exports = Container;
