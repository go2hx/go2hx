package _internal.vendor.golang_dot_org.x.net.idna;
function _encodeDigit(_digit:stdgo.GoInt32):stdgo.GoUInt8 {
        if ((((0 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (26 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_digit + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        } else if ((((26 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (36 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_digit + (22 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        };
        throw stdgo.Go.toInterface(("idna: internal error in punycode encoding" : stdgo.GoString));
    }
