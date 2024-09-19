package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleRuneCount():Void {
        var _buf = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_buf.length)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeCount.runeCount(_buf)));
    }
