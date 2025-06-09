const http = require('http');
const port = process.env.PORT || 3000;
const server = http.createServer((req, res) => {
    res.writeHead(200);
    res.end('Hello it is Eagerminds project');
});
server.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
