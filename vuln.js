// vulnerable.js
const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const query = url.parse(req.url, true).query;
  const userInput = query.code;

  // Unsafe eval of untrusted input — CodeQL should catch this
  eval(userInput);

  res.end('Evaluated user code');
}).listen(3000);