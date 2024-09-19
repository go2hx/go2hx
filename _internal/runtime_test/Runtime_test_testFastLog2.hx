package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testFastLog2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _e:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _inc = (1 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _inc = (65536 : stdgo.GoInt);
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (67108864 : stdgo.GoInt) : Bool), _i = (_i + (_inc) : stdgo.GoInt), {
                var __0 = (stdgo._internal.math.Math_log2.log2((_i : stdgo.GoFloat64)) : stdgo.GoFloat64), __1 = (stdgo._internal.runtime.Runtime_fastlog2.fastlog2((_i : stdgo.GoFloat64)) : stdgo.GoFloat64);
var _fl = __1, _l = __0;
                var _d = (_l - _fl : stdgo.GoFloat64);
                _e = (_e + ((_d * _d : stdgo.GoFloat64)) : stdgo.GoFloat64);
            });
        };
        _e = stdgo._internal.math.Math_sqrt.sqrt(_e);
        if ((_e > (1 : stdgo.GoFloat64) : Bool)) {
            _t.fatalf(("imprecision on fastlog2 implementation, want <=1.0, got %f" : stdgo.GoString), stdgo.Go.toInterface(_e));
        };
    }
