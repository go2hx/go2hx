package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
class T_dirInfo_asInterface {
    @:keep
    public dynamic function _close():Void __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.Os_T_dirInfo.T_dirInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
