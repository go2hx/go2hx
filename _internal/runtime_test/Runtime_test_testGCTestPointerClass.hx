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
function testGCTestPointerClass(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _check = (function(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _want:stdgo.GoString):Void {
            _t.helper();
            var _got = (stdgo._internal.runtime.Runtime_gctestPointerClass.gctestPointerClass(_p)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("for %#x, want class %s, got %s" : stdgo.GoString), stdgo.Go.toInterface((_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr)), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        } : (stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString) -> Void);
        var _onStack:stdgo.GoInt = (0 : stdgo.GoInt);
        var _notOnStack:stdgo.GoInt = (0 : stdgo.GoInt);
        _check((stdgo.Go.toInterface(stdgo.Go.pointer(_onStack)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), ("stack" : stdgo.GoString));
        _check((stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape(stdgo.Go.pointer(_notOnStack))) : stdgo._internal.unsafe.Unsafe.UnsafePointer), ("heap" : stdgo.GoString));
        _check((stdgo.Go.toInterface(stdgo.Go.pointer(_internal.runtime_test.Runtime_test__pointerClassBSS._pointerClassBSS)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), ("bss" : stdgo.GoString));
        _check((stdgo.Go.toInterface(stdgo.Go.pointer(_internal.runtime_test.Runtime_test__pointerClassData._pointerClassData)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), ("data" : stdgo.GoString));
        _check(@:default_value null, ("other" : stdgo.GoString));
    }
