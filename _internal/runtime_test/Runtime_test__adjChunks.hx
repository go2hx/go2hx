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
function _adjChunks():{ var _0 : stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>; var _1 : stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>; } {
        var _s:stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>> = (null : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>>);
        while (true) {
            var _c = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_objtype.T_objtype(320, 320, ...[for (i in 0 ... 320) (0 : stdgo.GoUInt8)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>);
            for (__6 => _d in _s) {
                if ((((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_c : _internal.runtime_test.Runtime_test_T_objtype.T_objtype))) : stdgo.GoUIntptr) == (((stdgo.Go.toInterface(_d) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr))) {
                    return { _0 : _c, _1 : _d };
                };
                if ((((stdgo.Go.toInterface(_d) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((_c : _internal.runtime_test.Runtime_test_T_objtype.T_objtype))) : stdgo.GoUIntptr) == (((stdgo.Go.toInterface(_c) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr))) {
                    return { _0 : _d, _1 : _c };
                };
            };
            _s = (_s.__append__(_c));
        };
    }
