package stdgo._internal.encoding.binary;
@:interface typedef T_testByteOrder___localname___byteOrder_10108 = stdgo.StructType & {
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void;
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void;
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void;
    public dynamic function string():stdgo.GoString;
    public dynamic function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16;
    public dynamic function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32;
    public dynamic function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64;
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>;
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>;
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>;
};
