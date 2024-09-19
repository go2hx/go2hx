package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleTrimRightFunc():Void {
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(stdgo._internal.strings.Strings_trimRightFunc.trimRightFunc(("¡¡¡Hello, Gophers!!!" : stdgo.GoString), function(_r:stdgo.GoInt32):Bool {
            return (!stdgo._internal.unicode.Unicode_isLetter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isNumber.isNumber(_r) : Bool);
        })));
    }
