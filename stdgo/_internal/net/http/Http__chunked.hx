package stdgo._internal.net.http;
function _chunked(_te:stdgo.Slice<stdgo.GoString>):Bool {
        return (((_te.length) > (0 : stdgo.GoInt) : Bool) && (_te[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool);
    }
