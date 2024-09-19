package _internal.encoding.hex_test;
function exampleEncodeToString():Void {
        var _src = (("Hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _encodedStr = (stdgo._internal.encoding.hex.Hex_encodeToString.encodeToString(_src)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_encodedStr));
    }
