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
function benchmarkReadMemStats(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ms:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
        {};
        var _x = (new stdgo.Slice<stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>>((102400 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>>);
        for (_i => _ in _x) {
            _x[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        };
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            });
        };
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
    }
