package stdgo._internal.net.textproto;
function _validHeaderFieldByte(_c:stdgo.GoUInt8):Bool {
        {};
        return ((((((1i64 : stdgo.GoUInt64) << _c : stdgo.GoUInt64)) & (288068722172624896i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((1i64 : stdgo.GoUInt64) << ((_c - (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64)) & (6341068274398134270i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) != ((0i64 : stdgo.GoUInt64));
    }
