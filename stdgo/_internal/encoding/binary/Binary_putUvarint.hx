package stdgo._internal.encoding.binary;
function putUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _buf[(_i : stdgo.GoInt)] = ((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _i++;
        };
        _buf[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
        return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
