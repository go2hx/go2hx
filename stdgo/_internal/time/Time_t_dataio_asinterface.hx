package stdgo._internal.time;
class T_dataIO_asInterface {
    @:keep
    @:tdfield
    public dynamic function _rest():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._rest();
    @:keep
    @:tdfield
    public dynamic function _byte():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return @:_0 __self__.value._byte();
    @:keep
    @:tdfield
    public dynamic function _big8():{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return @:_0 __self__.value._big8();
    @:keep
    @:tdfield
    public dynamic function _big4():{ var _0 : stdgo.GoUInt32; var _1 : Bool; } return @:_0 __self__.value._big4();
    @:keep
    @:tdfield
    public dynamic function _read(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._read(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_t_dataiopointer.T_dataIOPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
