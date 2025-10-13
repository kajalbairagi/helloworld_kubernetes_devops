// Import the built-in http module from the node.js
const http = require('http');

// Define which port the server should listen on 
const port = process.env.Port || 9090;

//Define the version of the app from an environment variable
const version = process.env.APP_VERSION || 'v1';

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type' : 'text/plain'});

    res.end(`Hello, World !\nVersion: ${version}\n`)

});

server.listen(port, () => {
    console.log(`Server is running on port ${port}, version=${version}`);

});