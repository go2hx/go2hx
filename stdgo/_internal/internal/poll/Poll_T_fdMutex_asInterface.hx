package stdgo._internal.internal.poll;
class T_fdMutex_asInterface {
    @:keep
    public dynamic function _rwunlock(_read:Bool):Bool return __self__.value._rwunlock(_read);
    @:keep
    public dynamic function _rwlock(_read:Bool):Bool return __self__.value._rwlock(_read);
    @:keep
    public dynamic function _decref():Bool return __self__.value._decref();
    @:keep
    public dynamic function _increfAndClose():Bool return __self__.value._increfAndClose();
    @:keep
    public dynamic function _incref():Bool return __self__.value._incref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
