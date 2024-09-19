package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleAdd64():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(33i64 : stdgo.GoUInt64), (12i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(21i64 : stdgo.GoUInt64), (23i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _d1:stdgo.GoUInt64 = __tmp__._0, _carry:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[(1i64 : stdgo.GoUInt64), (-9223372036854775808i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt64>(2, 2, ...[_d0, _d1]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v + %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
