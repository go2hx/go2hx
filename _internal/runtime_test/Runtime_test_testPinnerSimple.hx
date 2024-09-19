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
function testPinnerSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
        var _p = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        var _addr = (stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("already marked as pinned" : stdgo.GoString)));
        };
        _pinner.pin(stdgo.Go.toInterface(_p));
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr) != null) {
            _t.fatal(stdgo.Go.toInterface(("pin counter should not exist" : stdgo.GoString)));
        };
        _pinner.unpin();
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("still marked as pinned" : stdgo.GoString)));
        };
    }
