package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleRuneLen():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen((30028 : stdgo.GoInt32))));
    }
