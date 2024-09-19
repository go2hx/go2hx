package stdgo._internal.net.rpc;
class T_methodType_asInterface {
    @:keep
    public dynamic function numCalls():stdgo.GoUInt return __self__.value.numCalls();
    @:embedded
    public dynamic function _unlockSlow(_new:stdgo.GoInt32):Void __self__.value._unlockSlow(_new);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
