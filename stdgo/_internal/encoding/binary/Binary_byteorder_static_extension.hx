package stdgo._internal.encoding.binary;
@:keep class ByteOrder_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function putUint64(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void t.putUint64(_0, _1);
    @:interfacetypeffun
    static public function putUint32(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void t.putUint32(_0, _1);
    @:interfacetypeffun
    static public function putUint16(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void t.putUint16(_0, _1);
    @:interfacetypeffun
    static public function uint64(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return t.uint64(_0);
    @:interfacetypeffun
    static public function uint32(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return t.uint32(_0);
    @:interfacetypeffun
    static public function uint16(t:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return t.uint16(_0);
}
