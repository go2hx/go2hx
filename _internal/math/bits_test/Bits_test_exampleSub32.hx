package _internal.math.bits_test;
import stdgo._internal.math.bits.Bits;
function exampleSub32():Void {
        var _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(33u32 : stdgo.GoUInt32), (23u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(21u32 : stdgo.GoUInt32), (12u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var __tmp__ = stdgo._internal.math.bits.Bits_sub32.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32)), _d1:stdgo.GoUInt32 = __tmp__._0, _carry:stdgo.GoUInt32 = __tmp__._1;
        var __tmp__ = stdgo._internal.math.bits.Bits_sub32.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry), _d0:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoUInt32 = __tmp__._1;
        var _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
        _n1 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(3u32 : stdgo.GoUInt32), (2147483647u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        _n2 = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[(1u32 : stdgo.GoUInt32), (-2147483648u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub32.sub32(_n1[(1 : stdgo.GoInt)], _n2[(1 : stdgo.GoInt)], (0u32 : stdgo.GoUInt32));
            _d1 = __tmp__._0;
            _carry = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub32.sub32(_n1[(0 : stdgo.GoInt)], _n2[(0 : stdgo.GoInt)], _carry);
            _d0 = __tmp__._0;
        };
        _nsum = (new stdgo.Slice<stdgo.GoUInt32>(2, 2, ...[_d0, _d1]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        stdgo._internal.fmt.Fmt_printf.printf(("%v - %v = %v (carry bit was %v)\n" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_nsum), stdgo.Go.toInterface(_carry));
    }
