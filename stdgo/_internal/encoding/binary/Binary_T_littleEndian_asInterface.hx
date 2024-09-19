package stdgo._internal.encoding.binary;
class T_littleEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.binary.Binary_T_littleEndian.T_littleEndian>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
