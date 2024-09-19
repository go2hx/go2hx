package stdgo._internal.net.http;
function _isIdentity(_te:stdgo.Slice<stdgo.GoString>):Bool {
        return ((_te.length == (1 : stdgo.GoInt)) && (_te[(0 : stdgo.GoInt)] == ("identity" : stdgo.GoString)) : Bool);
    }
