package stdgo._internal.crypto.md5;
class T_digest_asInterface {
    @:keep
    public dynamic function _checkSum():stdgo.GoArray<stdgo.GoUInt8> return __self__.value._checkSum();
    @:keep
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.sum(_in);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize();
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:keep
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalBinary(_b);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
