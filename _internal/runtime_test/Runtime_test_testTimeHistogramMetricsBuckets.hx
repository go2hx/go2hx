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
function testTimeHistogramMetricsBuckets(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buckets = stdgo._internal.runtime.Runtime_timeHistogramMetricsBuckets.timeHistogramMetricsBuckets();
        var _nonInfBucketsLen = (160 : stdgo.GoInt);
        var _expBucketsLen = (_nonInfBucketsLen + (3 : stdgo.GoInt) : stdgo.GoInt);
        if ((_buckets.length) != (_expBucketsLen)) {
            _t.fatalf(("unexpected length of buckets: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buckets.length)), stdgo.Go.toInterface(_expBucketsLen));
        };
        var _idxToBucket = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoFloat64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
            x.set((0 : stdgo.GoInt), stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)));
x.set((1 : stdgo.GoInt), (0 : stdgo.GoFloat64));
x.set((2 : stdgo.GoInt), (6.4e-08 : stdgo.GoFloat64));
x.set((3 : stdgo.GoInt), (1.28e-07 : stdgo.GoFloat64));
x.set((4 : stdgo.GoInt), (1.92e-07 : stdgo.GoFloat64));
x.set((5 : stdgo.GoInt), (2.56e-07 : stdgo.GoFloat64));
x.set((6 : stdgo.GoInt), (3.2e-07 : stdgo.GoFloat64));
x.set((7 : stdgo.GoInt), (3.84e-07 : stdgo.GoFloat64));
x.set((8 : stdgo.GoInt), (4.48e-07 : stdgo.GoFloat64));
x.set((9 : stdgo.GoInt), (5.12e-07 : stdgo.GoFloat64));
x.set((10 : stdgo.GoInt), (6.4e-07 : stdgo.GoFloat64));
x.set((11 : stdgo.GoInt), (7.68e-07 : stdgo.GoFloat64));
x.set((12 : stdgo.GoInt), (8.96e-07 : stdgo.GoFloat64));
x.set((13 : stdgo.GoInt), (1.024e-06 : stdgo.GoFloat64));
x.set((15 : stdgo.GoInt), (1.536e-06 : stdgo.GoFloat64));
x.set((81 : stdgo.GoInt), (0.134217728 : stdgo.GoFloat64));
x.set((82 : stdgo.GoInt), (0.16777216 : stdgo.GoFloat64));
x.set((108 : stdgo.GoInt), (15.032385536 : stdgo.GoFloat64));
x.set((_expBucketsLen - (2 : stdgo.GoInt) : stdgo.GoInt), (140737.488355328 : stdgo.GoFloat64));
x.set((_expBucketsLen - (1 : stdgo.GoInt) : stdgo.GoInt), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoFloat64>);
        for (_idx => _bucket in _idxToBucket) {
            {
                var __0 = (_buckets[(_idx : stdgo.GoInt)] : stdgo.GoFloat64), __1 = (_bucket : stdgo.GoFloat64);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    _t.errorf(("expected bucket %d to have value %e, got %e" : stdgo.GoString), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
