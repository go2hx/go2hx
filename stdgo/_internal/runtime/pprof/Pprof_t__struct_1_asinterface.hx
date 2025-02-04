package stdgo._internal.runtime.pprof;
class T__struct_1_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:localembedfields
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:localembedfields
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:localembedfields
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.pprof.Pprof_t__struct_1pointer.T__struct_1Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
