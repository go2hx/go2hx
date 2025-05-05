package stdgo._internal.net.http.cgi;
function _upperCaseAndUnderscore(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L398"
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L400"
            return (_r - (32 : stdgo.GoInt32) : stdgo.GoInt32);
        } else if (_r == ((45 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L402"
            return (95 : stdgo.GoInt32);
        } else if (_r == ((61 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L407"
            return (95 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/host.go#L410"
        return _r;
    }
