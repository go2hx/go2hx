package stdgo._internal.sync;
class T_poolChainElt_asInterface {
    @:embedded
    public dynamic function _unpack(__0:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return __self__.value._unpack(__0);
    @:embedded
    public dynamic function _pushHead(_val:stdgo.AnyInterface):Bool return __self__.value._pushHead(_val);
    @:embedded
    public dynamic function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._popTail();
    @:embedded
    public dynamic function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._popHead();
    @:embedded
    public dynamic function _pack(_head:stdgo.GoUInt32, _tail:stdgo.GoUInt32):stdgo.GoUInt64 return __self__.value._pack(_head, _tail);
    @:embedded
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool return __self__.value.pushHead(_val);
    @:embedded
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.popTail();
    @:embedded
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.popHead();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
