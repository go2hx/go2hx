package stdgo._internal.sync;
class T_poolChainElt_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unpack(_0:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return @:_0 __self__.value._unpack(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pushHead(_0:stdgo.AnyInterface):Bool return @:_0 __self__.value._pushHead(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popTail();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popHead();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pack(_0:stdgo.GoUInt32, _1:stdgo.GoUInt32):stdgo.GoUInt64 return @:_0 __self__.value._pack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pushHead(_0:stdgo.AnyInterface):Bool return @:_0 __self__.value.pushHead(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.popTail();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.popHead();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_t_poolchaineltpointer.T_poolChainEltPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
