package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
class T_delayedInfiniteReader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.os.exec_test.Exec_test_T_delayedInfiniteReader.T_delayedInfiniteReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}