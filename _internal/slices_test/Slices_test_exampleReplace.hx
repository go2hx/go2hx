package _internal.slices_test;
function exampleReplace():Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString), ("Zac" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _names = stdgo._internal.slices.Slices_replace.replace(_names, (1 : stdgo.GoInt), (3 : stdgo.GoInt), ("Bill" : stdgo.GoString), ("Billie" : stdgo.GoString), ("Cat" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_names));
    }
