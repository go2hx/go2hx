package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleNewReplacer():Void {
        var _r = stdgo._internal.strings.Strings_newReplacer.newReplacer(("<" : stdgo.GoString), ("&lt;" : stdgo.GoString), (">" : stdgo.GoString), ("&gt;" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_r.replace(("This is <b>HTML</b>!" : stdgo.GoString))));
    }
