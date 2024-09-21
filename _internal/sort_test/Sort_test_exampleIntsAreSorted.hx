package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleIntsAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted(_s)));
    }
