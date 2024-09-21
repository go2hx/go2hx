package _internal.slices_test;
function exampleDelete():Void {
        var _letters = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString), ("d" : stdgo.GoString), ("e" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _letters = stdgo._internal.slices.Slices_delete.delete(_letters, (1 : stdgo.GoInt), (4 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_letters));
    }
