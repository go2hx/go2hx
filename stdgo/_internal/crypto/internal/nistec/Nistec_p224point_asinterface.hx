package stdgo._internal.crypto.internal.nistec;
class P224Point_asInterface {
    @:keep
    @:tdfield
    public dynamic function scalarBaseMult(_scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.scalarBaseMult(_scalar);
    @:keep
    @:tdfield
    public dynamic function _generatorTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.nistec.Nistec_t_p224table.T_p224Table>> return @:_0 __self__.value._generatorTable();
    @:keep
    @:tdfield
    public dynamic function scalarMult(_q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.scalarMult(_q, _scalar);
    @:keep
    @:tdfield
    public dynamic function select(_p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return @:_0 __self__.value.select(_p1, _p2, _cond);
    @:keep
    @:tdfield
    public dynamic function double(_p:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return @:_0 __self__.value.double(_p);
    @:keep
    @:tdfield
    public dynamic function add(_p1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>, _p2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return @:_0 __self__.value.add(_p1, _p2);
    @:keep
    @:tdfield
    public dynamic function _bytesCompressed(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytesCompressed(_out);
    @:keep
    @:tdfield
    public dynamic function bytesCompressed():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytesCompressed();
    @:keep
    @:tdfield
    public dynamic function _bytesX(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._bytesX(_out);
    @:keep
    @:tdfield
    public dynamic function bytesX():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.bytesX();
    @:keep
    @:tdfield
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_out);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function setBytes(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_b);
    @:keep
    @:tdfield
    public dynamic function set(_q:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return @:_0 __self__.value.set(_q);
    @:keep
    @:tdfield
    public dynamic function setGenerator():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> return @:_0 __self__.value.setGenerator();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.nistec.Nistec_p224pointpointer.P224PointPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
