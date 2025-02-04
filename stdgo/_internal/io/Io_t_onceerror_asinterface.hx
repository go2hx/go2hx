package stdgo._internal.io;
class T_onceError_asInterface {
    @:keep
    @:tdfield
    public dynamic function load():stdgo.Error return @:_0 __self__.value.load();
    @:keep
    @:tdfield
    public dynamic function store(_err:stdgo.Error):Void @:_0 __self__.value.store(_err);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.io.Io_t_onceerrorpointer.T_onceErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
