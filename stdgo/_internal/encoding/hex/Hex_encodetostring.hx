package stdgo._internal.encoding.hex;
function encodeToString(_src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_encodedlen.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L108"
        stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _src);
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex.go#L109"
        return (_dst : stdgo.GoString)?.__copy__();
    }
