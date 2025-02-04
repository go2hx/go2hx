package stdgo._internal.sync;
class T_poolChain_asInterface {
    @:keep
    @:tdfield
    public dynamic function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popTail();
    @:keep
    @:tdfield
    public dynamic function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popHead();
    @:keep
    @:tdfield
    public dynamic function _pushHead(_val:stdgo.AnyInterface):Void @:_0 __self__.value._pushHead(_val);
    @:keep
    @:tdfield
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.popTail();
    @:keep
    @:tdfield
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.popHead();
    @:keep
    @:tdfield
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool return @:_0 __self__.value.pushHead(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_t_poolchainpointer.T_poolChainPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
