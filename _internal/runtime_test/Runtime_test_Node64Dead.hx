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
@:structInit class Node64Dead {
    public var left : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var right : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var value : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUIntptr)]);
    public function new(?left:stdgo.Pointer<stdgo.GoUInt8>, ?right:stdgo.Pointer<stdgo.GoUInt8>, ?value:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (left != null) this.left = left;
        if (right != null) this.right = right;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node64Dead(left, right, value);
    }
}
