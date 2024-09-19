package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleFullRuneInString():Void {
        var _str = ("世" : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_fullRuneInString.fullRuneInString(_str?.__copy__())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_fullRuneInString.fullRuneInString((_str.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())));
    }
