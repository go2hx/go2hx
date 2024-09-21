package _internal.slices_test;
function exampleSort():Void {
        var _smallInts = (new stdgo.Slice<stdgo.GoInt8>(4, 4, ...[(0 : stdgo.GoInt8), (42 : stdgo.GoInt8), (-10 : stdgo.GoInt8), (8 : stdgo.GoInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
        stdgo._internal.slices.Slices_sort.sort(_smallInts);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_smallInts));
    }
