socket = require('socket')
io.write("Connect to host > ")
server = io.read()
io.write("Connect to port > ")
port = io.read()
client = socket.connect(server , port)
if client then
	io.write("Connectiom Success! \n")
	while true do
		io.write("client message > ")
		client:send(io.read() .."\n")
		reply = client:receive()
		io.write(reply .. "\n")
	end
end

