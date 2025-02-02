package stdgo._internal.image.gif;
function _writeUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _u:stdgo.GoUInt16):Void {
        _b[(0 : stdgo.GoInt)] = (_u : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_u >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
