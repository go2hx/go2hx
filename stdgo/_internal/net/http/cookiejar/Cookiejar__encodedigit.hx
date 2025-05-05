package stdgo._internal.net.http.cookiejar;
function _encodeDigit(_digit:stdgo.GoInt32):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L102"
        if ((((0 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (26 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L104"
            return ((_digit + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        } else if ((((26 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (36 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L106"
            return ((_digit + (22 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L108"
        throw stdgo.Go.toInterface(("cookiejar: internal error in punycode encoding" : stdgo.GoString));
    }
