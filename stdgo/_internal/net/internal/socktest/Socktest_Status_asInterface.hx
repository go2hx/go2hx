package stdgo._internal.net.internal.socktest;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.syscall.Syscall;
class Status_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.internal.socktest.Socktest_StatusPointer.StatusPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
