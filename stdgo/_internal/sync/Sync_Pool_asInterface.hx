package stdgo._internal.sync;
class Pool_asInterface {
    @:keep
    public dynamic function _pinSlow():{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } return __self__.value._pinSlow();
    @:keep
    public dynamic function _pin():{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } return __self__.value._pin();
    @:keep
    public dynamic function _getSlow(_pid:stdgo.GoInt):stdgo.AnyInterface return __self__.value._getSlow(_pid);
    @:keep
    public dynamic function get():stdgo.AnyInterface return __self__.value.get();
    @:keep
    public dynamic function put(_x:stdgo.AnyInterface):Void __self__.value.put(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_Pool.Pool>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
