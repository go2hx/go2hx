package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleFieldsFunc():Void {
        var _f = (function(_c:stdgo.GoInt32):Bool {
            return (!stdgo._internal.unicode.Unicode_isLetter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isNumber.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        stdgo._internal.fmt.Fmt_printf.printf(("Fields are: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_fieldsFunc.fieldsFunc(("  foo1;bar2,baz3..." : stdgo.GoString), _f)));
    }
