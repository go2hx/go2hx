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
function testPinnerTwoPinner(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner), __1:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
var _pinner2 = __1, _pinner1 = __0;
        var _p = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        var _addr = (stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("already marked as pinned" : stdgo.GoString)));
        };
        _pinner1.pin(stdgo.Go.toInterface(_p));
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr) != null) {
            _t.fatal(stdgo.Go.toInterface(("pin counter should not exist" : stdgo.GoString)));
        };
        _pinner2.pin(stdgo.Go.toInterface(_p));
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        {
            var _cnt = stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr);
            if (((_cnt == null) || (_cnt.value != (1 : stdgo.GoUIntptr)) : Bool)) {
                _t.fatalf(("pin counter incorrect: %d" : stdgo.GoString), stdgo.Go.toInterface(_cnt.value));
            };
        };
        _pinner1.unpin();
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr) != null) {
            _t.fatal(stdgo.Go.toInterface(("pin counter should not exist" : stdgo.GoString)));
        };
        _pinner2.unpin();
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr)) {
            _t.fatal(stdgo.Go.toInterface(("still marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr) != null) {
            _t.fatal(stdgo.Go.toInterface(("pin counter was not deleted" : stdgo.GoString)));
        };
    }
