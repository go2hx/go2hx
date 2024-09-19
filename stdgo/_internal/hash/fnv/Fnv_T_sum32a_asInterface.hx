package stdgo._internal.hash.fnv;
class T_sum32a_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalBinary(__self__, _b);
    @:keep
    @:pointer
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalBinary(__self__);
    @:keep
    @:pointer
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.sum(__self__, _in);
    @:keep
    @:pointer
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize(__self__);
    @:keep
    @:pointer
    public dynamic function size():stdgo.GoInt return __self__.value.size(__self__);
    @:keep
    @:pointer
    public dynamic function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__self__, _data);
    @:keep
    @:pointer
    public dynamic function sum32():stdgo.GoUInt32 return __self__.value.sum32(__self__);
    @:keep
    @:pointer
    public dynamic function reset():Void __self__.value.reset(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.hash.fnv.Fnv_T_sum32a.T_sum32a>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
