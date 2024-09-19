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
function _adjStringChunk():{ var _0 : stdgo.GoString; var _1 : stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((320 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var _s = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _t = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_objtype.T_objtype(320, 320, ...[for (i in 0 ... 320) (0 : stdgo.GoUInt8)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>);
            var _p = (((stdgo.Go.toInterface(stdgo.Go.pointer(_s)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>).value : stdgo.GoUIntptr);
            var _q = ((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
            if ((_p + (320 : stdgo.GoUIntptr) : stdgo.GoUIntptr) == (_q)) {
                return { _0 : _s?.__copy__(), _1 : _t };
            };
        };
    }
