package stdgo._internal.encoding.binary;
@:keep class ByteOrder_static_extension {
    static public function string(t:ByteOrder):stdgo.GoString return t.string();
    static public function putUint64(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void t.putUint64(_0, _1);
    static public function putUint32(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void t.putUint32(_0, _1);
    static public function putUint16(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void t.putUint16(_0, _1);
    static public function uint64(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return t.uint64(_0);
    static public function uint32(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return t.uint32(_0);
    static public function uint16(t:ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return t.uint16(_0);
}