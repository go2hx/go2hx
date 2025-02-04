package stdgo._internal.internal.poll;
class XFDMutex_asInterface {
    @:keep
    @:tdfield
    public dynamic function rWUnlock(_read:Bool):Bool return @:_0 __self__.value.rWUnlock(_read);
    @:keep
    @:tdfield
    public dynamic function rWLock(_read:Bool):Bool return @:_0 __self__.value.rWLock(_read);
    @:keep
    @:tdfield
    public dynamic function decref():Bool return @:_0 __self__.value.decref();
    @:keep
    @:tdfield
    public dynamic function increfAndClose():Bool return @:_0 __self__.value.increfAndClose();
    @:keep
    @:tdfield
    public dynamic function incref():Bool return @:_0 __self__.value.incref();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rwunlock(_0:Bool):Bool return @:_0 __self__.value._rwunlock(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rwlock(_0:Bool):Bool return @:_0 __self__.value._rwlock(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _increfAndClose():Bool return @:_0 __self__.value._increfAndClose();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _incref():Bool return @:_0 __self__.value._incref();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _decref():Bool return @:_0 __self__.value._decref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.poll.Poll_xfdmutexpointer.XFDMutexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
