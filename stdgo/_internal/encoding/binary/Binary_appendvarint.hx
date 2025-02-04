package stdgo._internal.encoding.binary;
function appendVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        return stdgo._internal.encoding.binary.Binary_appenduvarint.appendUvarint(_buf, _ux);
    }
