package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleFieldsFunc():Void {
        var _f = (function(_c:stdgo.GoInt32):Bool {
            return (!stdgo._internal.unicode.Unicode_isLetter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isNumber.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt_printf.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_fieldsFunc.fieldsFunc((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f)));
    }
