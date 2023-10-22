const express = require('express');
const app = express();

app.get('/get-quote', (req, res) => {
    const quotes = [
        "Success is not final; failure is not fatal: It is the courage to continue that counts.",
        "It is better to fail in originality than to succeed in imitation.",
        "The road to success and the road to failure are almost exactly the same.",
        "Success usually comes to those who are too busy looking for it.",
        "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.",
        "Success is getting what you want, happiness is wanting what you get.",
        "There are three ways to ultimate success: The first way is to be kind. The second way is to be kind. The third way is to be kind."
    ];
    const randomQuote = quotes[Math.floor(Math.random() * quotes.length)];
    res.json({ quote: randomQuote});
})

app.listen(3000, () => console.log('listening to port 3000..'));