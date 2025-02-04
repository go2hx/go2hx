package stdgo._internal.debug.pe;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            _i = (_b.length);
        };
        return ((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
