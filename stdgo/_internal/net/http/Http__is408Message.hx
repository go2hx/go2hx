package stdgo._internal.net.http;
function _is408Message(_buf:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (((_buf.length) < (("HTTP/1.x 408" : stdgo.GoString).length) : Bool)) {
            return false;
        };
        if (((_buf.__slice__(0, (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("HTTP/1." : stdgo.GoString))) {
            return false;
        };
        return ((_buf.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ((" 408" : stdgo.GoString));
    }
