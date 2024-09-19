package _internal.slices_test;
function exampleEqual():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_equal.equal(_numbers, (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_equal.equal(_numbers, (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>))));
    }
