const http = require('http');
const fs = require('fs');
const port = 3000;

const requestHandler = (request, response) => {
	//console.log('printing your request:   ', request);
	request.on('data', function(chunk) {
		console.log(chunk);
		console.log(chunk.toString('utf8'));
	});
	request.on('end', function() {
		console.log('it has ended............');
	})
	console.log('');
	console.log(request.url)
	response.end('Hello Nodejs Server')
}


const server = http.createServer(requestHandler);


server.listen(port, (err) => {
	if (err) {
		return console.log('something happened:', err)
	}
	console.log('server is listening on ${PORT}')
});


