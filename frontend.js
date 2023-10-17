import React, { Component } from 'react';

class CardDistribution extends Component {
  constructor(props) {
    super(props);
    this.state = {
      n: 0,
      cards: [],
      error: '',
    };
  }

  handleInputChange = (e) => {
    this.setState({ n: e.target.value });
  };

  distributeCards = () => {
    const n = this.state.n;
    fetch('/distribute-cards', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ n }),
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.error) {
          this.setState({ error: data.error, cards: [] });
        } else {
          this.setState({ cards: data.cards, error: '' });
        }
      })
      .catch((error) => {
        console.error('Error:', error);
        this.setState({ error: 'An error occurred', cards: [] });
      });
  };

  render() {
    return (
      <div>
        <input
          type="number"
          placeholder="Number of people"
          value={this.state.n}
          onChange={this.handleInputChange}
        />
        <button onClick={this.distributeCards}>Distribute Cards</button>
        <div>
          {this.state.error && <div>{this.state.error}</div>}
          {this.state.cards.map((hand, index) => (
            <div key={index}>Person {index + 1}: {hand}</div>
          ))}
        </div>
      </div>
    );
  }
}

export default CardDistribution;
