package _internal.slices_test;
function exampleReverse():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("VERA" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.slices.Slices_reverse.reverse(_names);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_names));
    }
