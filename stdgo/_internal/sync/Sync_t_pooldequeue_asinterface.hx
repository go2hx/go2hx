package stdgo._internal.sync;
class T_poolDequeue_asInterface {
    @:keep
    @:tdfield
    public dynamic function _popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popTail();
    @:keep
    @:tdfield
    public dynamic function _popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._popHead();
    @:keep
    @:tdfield
    public dynamic function _pushHead(_val:stdgo.AnyInterface):Bool return @:_0 __self__.value._pushHead(_val);
    @:keep
    @:tdfield
    public dynamic function _pack(_head:stdgo.GoUInt32, _tail:stdgo.GoUInt32):stdgo.GoUInt64 return @:_0 __self__.value._pack(_head, _tail);
    @:keep
    @:tdfield
    public dynamic function _unpack(_ptrs:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return @:_0 __self__.value._unpack(_ptrs);
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
    var __self__ : stdgo._internal.sync.Sync_t_pooldequeuepointer.T_poolDequeuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
