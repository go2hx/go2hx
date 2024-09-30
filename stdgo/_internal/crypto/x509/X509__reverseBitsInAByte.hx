package stdgo._internal.crypto.x509;
function _reverseBitsInAByte(_in:stdgo.GoUInt8):stdgo.GoUInt8 {
        var _b1 = ((_in >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (_in << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _b2 = (((_b1 >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) & (51 : stdgo.GoUInt8) : stdgo.GoUInt8) | ((_b1 << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) & (204 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _b3 = (((_b2 >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) & (85 : stdgo.GoUInt8) : stdgo.GoUInt8) | ((_b2 << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) & (170 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        return _b3;
    }
