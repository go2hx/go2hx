package stdgo._internal.net.netip;
function _appendHexPad(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        return (_b.__append__(("0123456789abcdef" : stdgo.GoString)[((_x >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoInt)], ("0123456789abcdef" : stdgo.GoString)[(((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)], ("0123456789abcdef" : stdgo.GoString)[(((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)], ("0123456789abcdef" : stdgo.GoString)[((_x & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)]));
    }
