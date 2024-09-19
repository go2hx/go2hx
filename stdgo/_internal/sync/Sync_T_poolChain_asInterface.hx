package stdgo._internal.sync;
class T_poolChain_asInterface {
    @:keep
    public dynamic function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._popTail();
    @:keep
    public dynamic function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._popHead();
    @:keep
    public dynamic function _pushHead(_val:stdgo.AnyInterface):Void __self__.value._pushHead(_val);
    @:keep
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.popTail();
    @:keep
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.popHead();
    @:keep
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool return __self__.value.pushHead(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
