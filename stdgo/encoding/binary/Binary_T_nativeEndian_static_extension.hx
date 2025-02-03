package stdgo.encoding.binary;
class T_nativeEndian_static_extension {
    static public function goString(_:T_nativeEndian):String {
        return stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.goString(_);
    }
    static public function string(_:T_nativeEndian):String {
        return stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.string(_);
    }
    public static function uint64(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>):haxe.UInt64 {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.uint64(__self__, _0);
    }
    public static function uint32(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>):std.UInt {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.uint32(__self__, _0);
    }
    public static function uint16(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>):std.UInt {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.uint16(__self__, _0);
    }
    public static function putUint64(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:haxe.UInt64):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.putUint64(__self__, _0, _1);
    }
    public static function putUint32(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.putUint32(__self__, _0, _1);
    }
    public static function putUint16(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt16);
        stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.putUint16(__self__, _0, _1);
    }
    public static function appendUint64(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:haxe.UInt64):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt64);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.appendUint64(__self__, _0, _1)) i];
    }
    public static function appendUint32(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:std.UInt):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.appendUint32(__self__, _0, _1)) i];
    }
    public static function appendUint16(__self__:stdgo._internal.encoding.binary.Binary_T_nativeEndian.T_nativeEndian, _0:Array<std.UInt>, _1:std.UInt):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt16);
        return [for (i in stdgo._internal.encoding.binary.Binary_T_nativeEndian_static_extension.T_nativeEndian_static_extension.appendUint16(__self__, _0, _1)) i];
    }
}
