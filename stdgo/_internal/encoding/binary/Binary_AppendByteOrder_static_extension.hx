package stdgo._internal.encoding.binary;
@:keep class AppendByteOrder_static_extension {
    static public function string(t:AppendByteOrder):stdgo.GoString return t.string();
    static public function appendUint64(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return t.appendUint64(_0, _1);
    static public function appendUint32(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return t.appendUint32(_0, _1);
    static public function appendUint16(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return t.appendUint16(_0, _1);
}
