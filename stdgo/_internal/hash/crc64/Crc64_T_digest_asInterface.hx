package stdgo._internal.hash.crc64;
import stdgo._internal.errors.Errors;
class T_digest_asInterface {
    @:keep
    @:tdfield
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.sum(_in);
    @:keep
    @:tdfield
    public dynamic function sum64():stdgo.GoUInt64 return @:_0 __self__.value.sum64();
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    @:tdfield
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_b);
    @:keep
    @:tdfield
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.hash.crc64.Crc64_T_digestPointer.T_digestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
