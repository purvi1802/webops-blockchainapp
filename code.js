// Import the Express.js framework
const express = require('express');
// Create an instance of the Express application
const app = express();

// Define a route that handles GET requests to '/get-quote'
app.get('/get-quote', (req, res) => {
    // An array of quotes
    const quotes = [
        "Success is not final; failure is not fatal: It is the courage to continue that counts.",
        "It is better to fail in originality than to succeed in imitation.",
        "The road to success and the road to failure are almost exactly the same.",
        "Success usually comes to those who are too busy looking for it.",
        "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.",
        "Success is getting what you want, happiness is wanting what you get.",
        "There are three ways to ultimate success: The first way is to be kind. The second way is to be kind. The third way is to be kind."
    ];

    // Pick a random quote from the array
    const randomQuote = quotes[Math.floor(Math.random() * quotes.length)];
    
    // Respond to the request with a JSON object containing the random quote
    res.json({ quote: randomQuote });
})

// Start the server, listening on port 3000, and log a message when it's ready
app.listen(3000, () => console.log('Listening on port 3000..'));
