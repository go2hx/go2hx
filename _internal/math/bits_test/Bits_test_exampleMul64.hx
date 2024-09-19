package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleMul64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(0i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_hi, _lo]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
