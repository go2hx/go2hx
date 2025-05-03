package stdgo._internal.debug.macho;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/file.go#L583"
        if (_i == ((-1 : stdgo.GoInt))) {
            _i = (_b.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/file.go#L586"
        return ((_b.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
