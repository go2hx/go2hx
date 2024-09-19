package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleAppendRune():Void {
        var _buf1 = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        var _buf2 = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_buf1 : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_buf2 : stdgo.GoString)));
    }
