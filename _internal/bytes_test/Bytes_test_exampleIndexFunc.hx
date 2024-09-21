package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleIndexFunc():Void {
        var _f = (function(_c:stdgo.GoInt32):Bool {
            return stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_han.han, _c);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_indexFunc.indexFunc((("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_indexFunc.indexFunc((("Hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f)));
    }
