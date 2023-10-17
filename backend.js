const express = require('express');
const app = express();
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.post('/distribute-cards', (req, res) => {
  const n = parseInt(req.body.n || 0);

  if (n <= 0 || n > 53) {
    res.status(400).json({ error: 'Input value does not exist or value is invalid' });
  } else {
    const cards = ['S', 'H', 'D', 'C'];
    const result = [];

    for (let i = 1; i <= n; i++) {
      const hand = [];
      cards.sort(() => Math.random() - 0.5);
      for (let j = 1; j <= 13; j++) {
        const card = j < 11 ? j : (j === 11 ? 'X' : (j === 12 ? 'J' : 'Q'));
        hand.push(cards[0] + card);
        cards.shift();
      }
      result.push(hand.join(', '));
    }

    res.json({ cards: result });
  }
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
