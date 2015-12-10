const React = require('react');

const Header = React.createClass({

  render(){
    return(
      //value for name came from outter component and we cannot change it here, we declate it as props
      <header>
        Hello {this.props.name}, I'm the header.
      </header>
    );
  }
});

module.exports = Header;
