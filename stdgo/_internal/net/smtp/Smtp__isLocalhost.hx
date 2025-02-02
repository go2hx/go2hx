package stdgo._internal.net.smtp;
function _isLocalhost(_name:stdgo.GoString):Bool {
        return ((_name == (("localhost" : stdgo.GoString)) || _name == (("127.0.0.1" : stdgo.GoString)) : Bool) || (_name == ("::1" : stdgo.GoString)) : Bool);
    }
