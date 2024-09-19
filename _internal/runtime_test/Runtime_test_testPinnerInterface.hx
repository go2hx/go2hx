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
function testPinnerInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
        var _o = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        var _ifc = (stdgo.Go.toInterface(_o) : stdgo.AnyInterface);
        _pinner.pin(stdgo.Go.toInterface((stdgo.Go.setRef(_ifc) : stdgo.Ref<stdgo.AnyInterface>)));
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned((((stdgo.Go.setRef(_ifc) : stdgo.Ref<stdgo.AnyInterface>).__underlying__().value : Dynamic) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned((stdgo.Go.toInterface(_o) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.fatal(stdgo.Go.toInterface(("marked as pinned" : stdgo.GoString)));
        };
        _pinner.unpin();
        _pinner.pin(_ifc);
        if (!stdgo._internal.runtime.Runtime_isPinned.isPinned((stdgo.Go.toInterface(_o) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.fatal(stdgo.Go.toInterface(("not marked as pinned" : stdgo.GoString)));
        };
        if (stdgo._internal.runtime.Runtime_isPinned.isPinned((((stdgo.Go.setRef(_ifc) : stdgo.Ref<stdgo.AnyInterface>).__underlying__().value : Dynamic) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.fatal(stdgo.Go.toInterface(("marked as pinned" : stdgo.GoString)));
        };
        _pinner.unpin();
    }
