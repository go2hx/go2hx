package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleMul32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul32.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]), _hi:stdgo.GoUInt32 = __tmp__._0, _lo:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(0u32 : stdgo.GoUInt32), (2u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul32.mul32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)]);
            _hi = __tmp__._0;
            _lo = __tmp__._1;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_hi, _lo]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v * %v = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_n1[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_n2[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_nsum));
    }
