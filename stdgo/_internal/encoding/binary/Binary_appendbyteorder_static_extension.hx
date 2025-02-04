package stdgo._internal.encoding.binary;
@:keep class AppendByteOrder_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function appendUint64(t:stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return t.appendUint64(_0, _1);
    @:interfacetypeffun
    static public function appendUint32(t:stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return t.appendUint32(_0, _1);
    @:interfacetypeffun
    static public function appendUint16(t:stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return t.appendUint16(_0, _1);
}
