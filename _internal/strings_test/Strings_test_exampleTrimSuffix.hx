package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleTrimSuffix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings_trimSuffix.trimSuffix(_s?.__copy__(), (", Gophers!!!" : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings_trimSuffix.trimSuffix(_s?.__copy__(), (", Marmots!!!" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_s));
    }
