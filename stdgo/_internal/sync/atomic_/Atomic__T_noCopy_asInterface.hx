package stdgo._internal.sync.atomic_;
class T_noCopy_asInterface {
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
