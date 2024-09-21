package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testStructOfDirectIface___localname___T_150844 {
    public var x : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0);
    public function new(?x:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructOfDirectIface___localname___T_150844(x);
    }
}
