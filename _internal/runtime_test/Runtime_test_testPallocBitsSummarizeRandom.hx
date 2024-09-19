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
function testPallocBitsSummarizeRandom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                for (_i => _ in _b) {
                    _b[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_uint64.uint64();
                };
                _internal.runtime_test.Runtime_test__checkPallocSum._checkPallocSum(stdgo.Go.asInterface(_t), _b.summarize(), stdgo._internal.runtime.Runtime_summarizeSlow.summarizeSlow(_b));
            });
        };
    }
