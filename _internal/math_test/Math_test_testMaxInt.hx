package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
function testMaxInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _v = ((2147483647 : stdgo.GoInt) : stdgo.GoInt);
            if ((_v + (1 : stdgo.GoInt) : stdgo.GoInt) != ((-2147483648 : stdgo.GoInt))) {
                _t.errorf(("MaxInt should wrap around to MinInt: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt) : stdgo.GoInt)));
            };
        };
        {
            var _v = ((127 : stdgo.GoInt8) : stdgo.GoInt8);
            if ((_v + (1 : stdgo.GoInt8) : stdgo.GoInt8) != ((-128 : stdgo.GoInt8))) {
                _t.errorf(("MaxInt8 should wrap around to MinInt8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt8) : stdgo.GoInt8)));
            };
        };
        {
            var _v = ((32767 : stdgo.GoInt16) : stdgo.GoInt16);
            if ((_v + (1 : stdgo.GoInt16) : stdgo.GoInt16) != ((-32768 : stdgo.GoInt16))) {
                _t.errorf(("MaxInt16 should wrap around to MinInt16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt16) : stdgo.GoInt16)));
            };
        };
        {
            var _v = ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((-2147483648 : stdgo.GoInt32))) {
                _t.errorf(("MaxInt32 should wrap around to MinInt32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
            };
        };
        {
            var _v = ((9223372036854775807i64 : stdgo.GoInt64) : stdgo.GoInt64);
            if ((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((-9223372036854775808i64 : stdgo.GoInt64))) {
                _t.errorf(("MaxInt64 should wrap around to MinInt64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
            };
        };
    }
