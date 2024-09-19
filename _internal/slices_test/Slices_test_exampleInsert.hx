package _internal.slices_test;
function exampleInsert():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _names = stdgo._internal.slices.Slices_insert.insert(_names, (1 : stdgo.GoInt), ("Bill" : stdgo.GoString), ("Billie" : stdgo.GoString));
        _names = stdgo._internal.slices.Slices_insert.insert(_names, (_names.length), ("Zac" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_names));
    }
