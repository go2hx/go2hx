package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleInts():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort_ints.ints(_s);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_s));
    }
