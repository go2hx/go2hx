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
function testGoroutineProfileTrivial(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var __tmp__ = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile((null : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>)), _n1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (((_n1 < (1 : stdgo.GoInt) : Bool) || _ok : Bool)) {
                    _t.fatalf(("GoroutineProfile(nil) = %d, %v, want >0, false" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_ok));
                };
                var __tmp__ = stdgo._internal.runtime.Runtime_goroutineProfile.goroutineProfile((new stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>((_n1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n1 : stdgo.GoInt).toBasic() > 0 ? (_n1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_StackRecord.StackRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>)), _n2:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (((_n2 == _n1) && _ok : Bool)) {
                    break;
                };
                _t.logf(("GoroutineProfile(%d) = %d, %v, want %d, true" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_n1));
                if ((_i >= (10 : stdgo.GoInt) : Bool)) {
                    _t.fatalf(("GoroutineProfile not converging" : stdgo.GoString));
                };
            });
        };
    }
