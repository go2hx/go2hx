package stdgo._internal.sync;
class T_copyChecker_asInterface {
    @:keep
    @:pointer
    @:tdfield
    public dynamic function _check():Void @:_0 __self__._check();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_t_copycheckerpointer.T_copyCheckerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
