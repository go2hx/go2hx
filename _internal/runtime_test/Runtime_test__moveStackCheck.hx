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
function _moveStackCheck(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _new:stdgo.Pointer<stdgo.GoInt>, _old:stdgo.GoUIntptr):Bool {
        var _new2 = ((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        _t.logf(("old stack pointer %x, new stack pointer %x" : stdgo.GoString), stdgo.Go.toInterface(_old), stdgo.Go.toInterface(_new2));
        if (_new2 == (_old)) {
            {
                var _cls = (stdgo._internal.runtime.Runtime_gctestPointerClass.gctestPointerClass((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer))?.__copy__() : stdgo.GoString);
                if (_cls != (("stack" : stdgo.GoString))) {
                    _t.fatalf(("test bug: new (%#x) should be a stack pointer, not %s" : stdgo.GoString), stdgo.Go.toInterface(_new2), stdgo.Go.toInterface(_cls));
                };
            };
            return false;
        };
        return true;
    }
