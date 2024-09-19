package stdgo._internal.internal.poll;
class XFDMutex_asInterface {
    @:keep
    public dynamic function rwunlock(_read:Bool):Bool return __self__.value.rwunlock(_read);
    @:keep
    public dynamic function rwlock(_read:Bool):Bool return __self__.value.rwlock(_read);
    @:keep
    public dynamic function decref():Bool return __self__.value.decref();
    @:keep
    public dynamic function increfAndClose():Bool return __self__.value.increfAndClose();
    @:keep
    public dynamic function incref():Bool return __self__.value.incref();
    @:embedded
    public dynamic function _rwunlock(__0:Bool):Bool return __self__.value._rwunlock(__0);
    @:embedded
    public dynamic function _rwlock(__0:Bool):Bool return __self__.value._rwlock(__0);
    @:embedded
    public dynamic function _increfAndClose():Bool return __self__.value._increfAndClose();
    @:embedded
    public dynamic function _incref():Bool return __self__.value._incref();
    @:embedded
    public dynamic function _decref():Bool return __self__.value._decref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
