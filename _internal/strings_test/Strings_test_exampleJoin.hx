package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_s, (", " : stdgo.GoString))));
    }
