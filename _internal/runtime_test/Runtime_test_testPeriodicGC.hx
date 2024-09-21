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
function testPeriodicGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no sysmon on wasm yet" : stdgo.GoString)));
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        var __0:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats), __1:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
var _ms2 = __1, _ms1 = __0;
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms1) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
        var _orig = (stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod.value : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod.value = (0i64 : stdgo.GoInt64);
        var _numGCs:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (200 : stdgo.GoInt) : Bool) && (_numGCs < (2u32 : stdgo.GoUInt32) : Bool) : Bool), _i++, {
                stdgo._internal.time.Time_sleep.sleep((5000000i64 : stdgo._internal.time.Time_Duration.Duration));
                stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms2) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
                _numGCs = (_ms2.numGC - _ms1.numGC : stdgo.GoUInt32);
            });
        };
        stdgo._internal.runtime.Runtime_forceGCPeriod.forceGCPeriod.value = _orig;
        if ((_numGCs < (2u32 : stdgo.GoUInt32) : Bool)) {
            _t.fatalf(("no periodic GC: got %v GCs, want >= 2" : stdgo.GoString), stdgo.Go.toInterface(_numGCs));
        };
    }
