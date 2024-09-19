package _internal.slices_test;
function exampleIsSorted():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_isSorted.isSorted((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Alice" : stdgo.GoString), ("Bob" : stdgo.GoString), ("Vera" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_isSorted.isSorted((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>))));
    }
