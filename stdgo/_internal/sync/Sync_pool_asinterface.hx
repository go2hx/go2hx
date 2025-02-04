package stdgo._internal.sync;
class Pool_asInterface {
    @:keep
    @:tdfield
    public dynamic function _pinSlow():{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_t_poollocal.T_poolLocal>; var _1 : stdgo.GoInt; } return @:_0 __self__.value._pinSlow();
    @:keep
    @:tdfield
    public dynamic function _pin():{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_t_poollocal.T_poolLocal>; var _1 : stdgo.GoInt; } return @:_0 __self__.value._pin();
    @:keep
    @:tdfield
    public dynamic function _getSlow(_pid:stdgo.GoInt):stdgo.AnyInterface return @:_0 __self__.value._getSlow(_pid);
    @:keep
    @:tdfield
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.value.get();
    @:keep
    @:tdfield
    public dynamic function put(_x:stdgo.AnyInterface):Void @:_0 __self__.value.put(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_poolpointer.PoolPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
