package stdgo._internal.syscall;
class Timeval_asInterface {
    @:keep
    @:tdfield
    public dynamic function nano():stdgo.GoInt64 return @:_0 __self__.value.nano();
    @:keep
    @:tdfield
    public dynamic function unix():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return @:_0 __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.syscall.Syscall_timevalpointer.TimevalPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
