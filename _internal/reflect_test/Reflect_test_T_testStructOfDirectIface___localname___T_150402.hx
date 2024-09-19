package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testStructOfDirectIface___localname___T_150402 {
    public var x : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(1, 1, ...[for (i in 0 ... 1) (null : stdgo.Pointer<stdgo.GoUInt8>)]);
    public function new(?x:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructOfDirectIface___localname___T_150402(x);
    }
}
