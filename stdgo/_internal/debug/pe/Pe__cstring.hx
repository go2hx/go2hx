package stdgo._internal.debug.pe;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L19"
        if (_i == ((-1 : stdgo.GoInt))) {
            _i = (_b.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L22"
        return ((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
