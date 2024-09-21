package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleTrimPrefix():Void {
        var _s:stdgo.GoString = ("¡¡¡Hello, Gophers!!!" : stdgo.GoString);
        _s = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_s?.__copy__(), ("¡¡¡Hello, " : stdgo.GoString))?.__copy__();
        _s = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_s?.__copy__(), ("¡¡¡Howdy, " : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(_s));
    }
