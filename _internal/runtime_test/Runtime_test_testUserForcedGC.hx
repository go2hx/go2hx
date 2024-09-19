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
function testUserForcedGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var __0:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats), __1:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
var _ms2 = __1, _ms1 = __0;
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms1) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms2) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            if (_ms1.numGC == (_ms2.numGC)) {
                _t.fatalf(("runtime.GC() did not trigger GC" : stdgo.GoString));
            };
            if (_ms1.numForcedGC == (_ms2.numForcedGC)) {
                _t.fatalf(("runtime.GC() was not accounted in NumForcedGC" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
