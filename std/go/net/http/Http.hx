package go.net.http;

function _newTLSConfig()
    return null;

@:recv(Transport)
function _onceSetNextProtoDefaults() {}


@:recv(Transport)
function _replaceReqCanceler() {
	return true;
}


@:recv(Transport)
function registerProtocol() {}


@:recv(Server)
function listenAndServeTLS(_srv, _certFile, _keyFile) {
    @:recv var _srv:go._internal.net.http.Http_server.Server = @:setref _srv;
    if (_srv._shuttingDown()) {
        return go._internal.net.http.Http_errserverclosed.errServerClosed;
    };
    var _addr = ((@:checkr _srv ?? throw "null pointer dereference").addr?.__copy__() : go.GoString);
    if (_addr == ((go.Go.str() : go.GoString))) {
        _addr = (":http" : go.GoString);
    };

    var address:String = _addr;
    final colonIndex = address.lastIndexOf(":");
    if (colonIndex == -1) throw "invalid address formatting: " + address;
    final portString = address.substr(colonIndex + 1);
    address = address.substr(0, colonIndex);
    if (address == "")
        address = "0.0.0.0";
    final host = new sys.net.Host(address);
    final port = Std.parseInt(portString);
    final addr = new go._internal.net.Net_haxeaddr.HaxeAddr("tcp", host.toString(), port);

    final l = new sys.ssl.Socket();
    l.setCertificate(sys.ssl.Certificate.loadFile(_certFile), sys.ssl.Key.loadFile(_keyFile));
    l.setHostname("localhost");
    l.verifyCert = false;
    l.bind(host, port);
    l.listen(0);
    // update port, if it's zero
    if (port == 0)
        @:privateAccess addr._port = l.host().port;
    // true at end set the listener to be secure
    final _ln = new go._internal.net.Net_haxelistener.HaxeListener(addr, l, true);
    return _srv.serve(_ln);
}