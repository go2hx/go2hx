package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleDiv64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (3i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _quo:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(2i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64(_n1[(0 : stdgo.GoInt)], _n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _quo = __tmp__._0;
            _rem = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_quo, _rem]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("[%v %v] / %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
