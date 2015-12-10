const React = require('react');
const Header = require('./Header');
const Container = require('./Container');
const Footer = require('./Footer');

const Hello = React.createClass({

  render(){
    return(
      //we are passing in some data from this component deeper to the next component, and there it will be used as a props
      <div>
        <Header name="Gigi"/>
        <Container />
        <Footer />
      </div>
    );
  }
});

module.exports = Hello;
