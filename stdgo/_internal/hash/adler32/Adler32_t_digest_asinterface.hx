package stdgo._internal.hash.adler32;
class T_digest_asInterface {
    @:keep
    @:pointer
    @:tdfield
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.sum(_in);
    @:keep
    @:pointer
    @:tdfield
    public dynamic function sum32():stdgo.GoUInt32 return @:_0 __self__.sum32();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.write(_p);
    @:keep
    @:pointer
    @:tdfield
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.unmarshalBinary(_b);
    @:keep
    @:pointer
    @:tdfield
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.marshalBinary();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.blockSize();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function size():stdgo.GoInt return @:_0 __self__.size();
    @:keep
    @:pointer
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.hash.adler32.Adler32_t_digestpointer.T_digestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
