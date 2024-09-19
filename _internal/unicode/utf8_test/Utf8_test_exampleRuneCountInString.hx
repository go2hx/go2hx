package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleRuneCountInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_str.length)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_str?.__copy__())));
    }
