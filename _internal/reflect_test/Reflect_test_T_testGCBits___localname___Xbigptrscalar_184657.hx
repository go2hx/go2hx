package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testGCBits___localname___Xbigptrscalar_184657 {
    @:optional
    public var __8 : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(100, 100, ...[for (i in 0 ... 100) (null : stdgo.Pointer<stdgo.GoUInt8>)]);
    @:optional
    public var __9 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(100, 100, ...[for (i in 0 ... 100) (0 : stdgo.GoUIntptr)]);
    public function new(?__8:stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>, ?__9:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (__8 != null) this.__8 = __8;
        if (__9 != null) this.__9 = __9;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGCBits___localname___Xbigptrscalar_184657(__8, __9);
    }
}
