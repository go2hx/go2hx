package stdgo._internal.net.smtp;
function _isLocalhost(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/auth.go#L58"
        return ((_name == (("localhost" : stdgo.GoString)) || _name == (("127.0.0.1" : stdgo.GoString)) : Bool) || (_name == ("::1" : stdgo.GoString)) : Bool);
    }
