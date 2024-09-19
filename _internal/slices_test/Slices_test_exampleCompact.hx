package _internal.slices_test;
function exampleCompact():Void {
        var _seq = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (5 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _seq = stdgo._internal.slices.Slices_compact.compact(_seq);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_seq));
    }
