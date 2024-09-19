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
function testGcLastTime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ms = (stdgo.Go.setRef(({} : stdgo._internal.runtime.Runtime_MemStats.MemStats)) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>);
        var _t0 = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_gc.gc();
        var _t1 = (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoInt64);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats(_ms);
        var _last = (_ms.lastGC : stdgo.GoInt64);
        if (((_t0 > _last : Bool) || (_last > _t1 : Bool) : Bool)) {
            _t.fatalf(("bad last GC time: got %v, want [%v, %v]" : stdgo.GoString), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_t0), stdgo.Go.toInterface(_t1));
        };
        var _pause = (_ms.pauseNs[((((_ms.numGC + (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) % (256u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt64);
        if (_pause == ((0i64 : stdgo.GoUInt64))) {
            _t.logf(("last GC pause was 0" : stdgo.GoString));
        } else if ((_pause > (10000000000i64 : stdgo.GoUInt64) : Bool)) {
            _t.logf(("bad last GC pause: got %v, want [0, 10e9]" : stdgo.GoString), stdgo.Go.toInterface(_pause));
        };
    }
