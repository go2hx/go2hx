package stdgo._internal.encoding.binary;
class T_nativeEndian_asInterface {
    @:keep
    @:tdfield
    public dynamic function goString():stdgo.GoString return @:_0 __self__.value.goString();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value.uint64(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return @:_0 __self__.value.uint32(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return @:_0 __self__.value.uint16(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void @:_0 __self__.value.putUint64(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void @:_0 __self__.value.putUint32(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void @:_0 __self__.value.putUint16(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendUint64(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendUint32(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendUint16(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.binary.Binary_t_nativeendianpointer.T_nativeEndianPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
