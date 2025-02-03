package stdgo.encoding.binary;
class T_littleEndian_static_extension {
    static public function goString(_:T_littleEndian):String {
        return stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.goString(_);
    }
    static public function string(_:T_littleEndian):String {
        return stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.string(_);
    }
    static public function appendUint64(_:T_littleEndian, _b:Array<std.UInt>, _v:haxe.UInt64):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.appendUint64(_, _b, _v)) i];
    }
    static public function putUint64(_:T_littleEndian, _b:Array<std.UInt>, _v:haxe.UInt64):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.putUint64(_, _b, _v);
    }
    static public function uint64(_:T_littleEndian, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.uint64(_, _b);
    }
    static public function appendUint32(_:T_littleEndian, _b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.appendUint32(_, _b, _v)) i];
    }
    static public function putUint32(_:T_littleEndian, _b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.putUint32(_, _b, _v);
    }
    static public function uint32(_:T_littleEndian, _b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.uint32(_, _b);
    }
    static public function appendUint16(_:T_littleEndian, _b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.appendUint16(_, _b, _v)) i];
    }
    static public function putUint16(_:T_littleEndian, _b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.putUint16(_, _b, _v);
    }
    static public function uint16(_:T_littleEndian, _b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_littleEndian_static_extension.T_littleEndian_static_extension.uint16(_, _b);
    }
}
