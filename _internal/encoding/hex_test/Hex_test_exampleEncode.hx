package _internal.encoding.hex_test;
function exampleEncode():Void {
        var _src = (("Hello Gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_encodedLen.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _src);
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_dst));
    }
