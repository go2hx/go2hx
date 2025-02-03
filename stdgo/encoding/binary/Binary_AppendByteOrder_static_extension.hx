package stdgo.encoding.binary;
class AppendByteOrder_static_extension {
    static public function string(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder):String {
        return stdgo._internal.encoding.binary.Binary_AppendByteOrder_static_extension.AppendByteOrder_static_extension.string(t);
    }
    static public function appendUint64(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:Array<std.UInt>, _1:haxe.UInt64):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt64);
        return [for (i in stdgo._internal.encoding.binary.Binary_AppendByteOrder_static_extension.AppendByteOrder_static_extension.appendUint64(t, _0, _1)) i];
    }
    static public function appendUint32(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:Array<std.UInt>, _1:std.UInt):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        return [for (i in stdgo._internal.encoding.binary.Binary_AppendByteOrder_static_extension.AppendByteOrder_static_extension.appendUint32(t, _0, _1)) i];
    }
    static public function appendUint16(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:Array<std.UInt>, _1:std.UInt):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt16);
        return [for (i in stdgo._internal.encoding.binary.Binary_AppendByteOrder_static_extension.AppendByteOrder_static_extension.appendUint16(t, _0, _1)) i];
    }
}
