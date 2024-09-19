package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testGCBits___localname___Bigptrscalar_185343 {
    @:optional
    public var __11 : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(100, 100, ...[for (i in 0 ... 100) (null : stdgo.Pointer<stdgo.GoUInt8>)]);
    @:optional
    public var __12 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(100, 100, ...[for (i in 0 ... 100) (0 : stdgo.GoUIntptr)]);
    public function new(?__11:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>, ?__12:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (__11 != null) this.__11 = __11;
        if (__12 != null) this.__12 = __12;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGCBits___localname___Bigptrscalar_185343(__11, __12);
    }
}
