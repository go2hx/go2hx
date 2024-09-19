package stdgo._internal.net.http;
function _isProtocolSwitchResponse(_code:stdgo.GoInt, _h:stdgo._internal.net.http.Http_Header.Header):Bool {
        return ((_code == (101 : stdgo.GoInt)) && stdgo._internal.net.http.Http__isProtocolSwitchHeader._isProtocolSwitchHeader(_h) : Bool);
    }
