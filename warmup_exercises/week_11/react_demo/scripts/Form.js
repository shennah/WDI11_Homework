const React = require('react');

const Form = React.createClass({
  //kind of a validation of what props we have, it can be values that are coming from outer component or functions
  propTypes: {
    onSubmit: React.PropTypes.func.isRequired
  },

  getInitialState(){
    return({comment: ''});
  },

  alertComment(){
    alert(this.state.comment);
  },
  //this command listens to all changes in our input field, gets that value and change our state of comment `variable`
  onChange(event){
    this.setState({comment: event.target.value});
  },

  render(){
    return(
      //here we are listening on event submit and execute function alertComment
      <form onSubmit={this.alertComment}>
        <input
          value={this.state.comment}
          type="text"
          placeholder="Your comment up here"
          autofocus={true}
          onChange={this.onChange}
        />
        <button type="submit">Submit</button>
      </form>
    );
  }
});

module.exports = Form;
