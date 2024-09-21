package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleRuneStart():Void {
        var _buf = (("a界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_buf[(0 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_buf[(1 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_buf[(2 : stdgo.GoInt)])));
    }
