package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleSplit():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_split.split(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_split.split(("a man a plan a canal panama" : stdgo.GoString), ("a " : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_split.split((" xyz " : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_split.split(stdgo.Go.str()?.__copy__(), ("Bernardo O\'Higgins" : stdgo.GoString))));
    }
