package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleValidRune():Void {
        var _valid = (97 : stdgo.GoInt32);
        var _invalid = ((268435455 : stdgo.GoInt32) : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_valid)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_invalid)));
    }
