package stdgo.encoding.binary;
class ByteOrder_static_extension {
    static public function string(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):String {
        return stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.string(t);
    }
    static public function putUint64(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>, _1:haxe.UInt64):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.putUint64(t, _0, _1);
    }
    static public function putUint32(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.putUint32(t, _0, _1);
    }
    static public function putUint16(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt16);
        stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.putUint16(t, _0, _1);
    }
    static public function uint64(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>):haxe.UInt64 {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.uint64(t, _0);
    }
    static public function uint32(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>):std.UInt {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.uint32(t, _0);
    }
    static public function uint16(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:Array<std.UInt>):std.UInt {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_ByteOrder_static_extension.ByteOrder_static_extension.uint16(t, _0);
    }
}
