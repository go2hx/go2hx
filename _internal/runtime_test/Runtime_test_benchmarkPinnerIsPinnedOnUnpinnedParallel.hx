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
function benchmarkPinnerIsPinnedOnUnpinnedParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ptr = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                stdgo._internal.runtime.Runtime_isPinned.isPinned((stdgo.Go.toInterface(_ptr) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
            };
        });
    }
