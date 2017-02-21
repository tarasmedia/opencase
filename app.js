const io = require('socket.io')(7777);
const redis = require('redis');
const client = redis.createClient();
const serv = redis.createClient();

client.subscribe('winners');
client.setMaxListeners(0);
client.on('message', function (channel, message) {
    stats();
    io.emit(channel, message);
});


io.on('connection', function (socket) {
    stats();
    socket.on('disconnect', function () {
        stats();
    });
});

var stats = function () {
    serv.get('stats',function (err, data) {
        var stat = JSON.parse(data);
        io.emit('stats', {online: Object.keys(io.sockets.adapter.rooms).length, games: stat.games, users: stat.users});
    })
};