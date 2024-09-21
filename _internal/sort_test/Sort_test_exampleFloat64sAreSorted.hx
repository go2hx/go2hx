package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function exampleFloat64sAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(0.7 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (5.2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_float64sAreSorted.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_float64sAreSorted.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort_float64sAreSorted.float64sAreSorted(_s)));
    }
