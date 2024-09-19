package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleSplitN():Void {
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_splitN.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (2 : stdgo.GoInt))));
        var _z = stdgo._internal.strings.Strings_splitN.splitN(("a,b,c" : stdgo.GoString), ("," : stdgo.GoString), (0 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_printf.printf(("%q (nil = %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_z), stdgo.Go.toInterface(_z == null));
    }
