package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleStrings():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("Go" : stdgo.GoString), ("Bravo" : stdgo.GoString), ("Gopher" : stdgo.GoString), ("Alpha" : stdgo.GoString), ("Grin" : stdgo.GoString), ("Delta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort_strings.strings(_s);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
    }
