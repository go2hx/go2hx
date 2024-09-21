package _internal.slices_test;
function exampleMax():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.slices.Slices_max.max(_numbers)));
    }
