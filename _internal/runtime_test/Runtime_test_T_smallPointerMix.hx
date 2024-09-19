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
@:structInit class T_smallPointerMix {
    public var a : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>);
    public var b : stdgo.GoUInt8 = 0;
    public var c : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>);
    public var d : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(11, 11, ...[for (i in 0 ... 11) (0 : stdgo.GoUInt8)]);
    public function new(?a:stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>, ?b:stdgo.GoUInt8, ?c:stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>, ?d:stdgo.GoArray<stdgo.GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_smallPointerMix(a, b, c, d);
    }
}
