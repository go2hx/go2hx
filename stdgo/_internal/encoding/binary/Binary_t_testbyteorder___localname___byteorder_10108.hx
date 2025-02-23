package stdgo._internal.encoding.binary;
@:interface typedef T_testByteOrder___localname___byteOrder_10108 = stdgo.StructType & {
    function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void;
    function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void;
    function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void;
    function string():stdgo.GoString;
    function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16;
    function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32;
    function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64;
    function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>;
    function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>;
    function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>;
};
