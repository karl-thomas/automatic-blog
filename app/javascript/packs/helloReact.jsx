import React, { Component } from 'react';
import { render } from 'react-dom';
import PropTypes from 'prop-types';

class Hello extends Component {
  state = { name: '' };

  changeName = e => {
    this.setState({
      name: e.target.value
    });
  };

  render() {
    return (
      <div>
        <form>
          <input onChange={this.changeName} value={this.state.name} />
        </form>
        Hello {this.state.name}!
      </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  render(<Hello />, document.getElementById('app'));
});