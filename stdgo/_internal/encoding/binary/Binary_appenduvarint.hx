package stdgo._internal.encoding.binary;
function appendUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint.go#L42"
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _buf = (_buf.__append__(((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint.go#L46"
        return (_buf.__append__((_x : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
