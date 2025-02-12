package internal.byteorder;
/**
    * Package byteorder provides functions for decoding and encoding
    * little and big endian integer types from/to byte slices.
**/
class Byteorder {
    static public inline function leUint16(_b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_leuint16.leUint16(_b);
    }
    static public inline function lePutUint16(_b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        _internal.internal.byteorder.Byteorder_leputuint16.lePutUint16(_b, _v);
    }
    static public inline function leAppendUint16(_b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        return [for (i in _internal.internal.byteorder.Byteorder_leappenduint16.leAppendUint16(_b, _v)) i];
    }
    static public inline function leUint32(_b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_leuint32.leUint32(_b);
    }
    static public inline function lePutUint32(_b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        _internal.internal.byteorder.Byteorder_leputuint32.lePutUint32(_b, _v);
    }
    static public inline function leAppendUint32(_b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        return [for (i in _internal.internal.byteorder.Byteorder_leappenduint32.leAppendUint32(_b, _v)) i];
    }
    static public inline function leUint64(_b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_leuint64.leUint64(_b);
    }
    static public inline function lePutUint64(_b:Array<std.UInt>, _v:haxe.UInt64):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        _internal.internal.byteorder.Byteorder_leputuint64.lePutUint64(_b, _v);
    }
    static public inline function leAppendUint64(_b:Array<std.UInt>, _v:haxe.UInt64):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        return [for (i in _internal.internal.byteorder.Byteorder_leappenduint64.leAppendUint64(_b, _v)) i];
    }
    static public inline function beUint16(_b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_beuint16.beUint16(_b);
    }
    static public inline function bePutUint16(_b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        _internal.internal.byteorder.Byteorder_beputuint16.bePutUint16(_b, _v);
    }
    static public inline function beAppendUint16(_b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt16);
        return [for (i in _internal.internal.byteorder.Byteorder_beappenduint16.beAppendUint16(_b, _v)) i];
    }
    static public inline function beUint32(_b:Array<std.UInt>):std.UInt {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_beuint32.beUint32(_b);
    }
    static public inline function bePutUint32(_b:Array<std.UInt>, _v:std.UInt):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        _internal.internal.byteorder.Byteorder_beputuint32.bePutUint32(_b, _v);
    }
    static public inline function beAppendUint32(_b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt32);
        return [for (i in _internal.internal.byteorder.Byteorder_beappenduint32.beAppendUint32(_b, _v)) i];
    }
    static public inline function beUint64(_b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.internal.byteorder.Byteorder_beuint64.beUint64(_b);
    }
    static public inline function bePutUint64(_b:Array<std.UInt>, _v:haxe.UInt64):Void {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        _internal.internal.byteorder.Byteorder_beputuint64.bePutUint64(_b, _v);
    }
    static public inline function beAppendUint64(_b:Array<std.UInt>, _v:haxe.UInt64):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt64);
        return [for (i in _internal.internal.byteorder.Byteorder_beappenduint64.beAppendUint64(_b, _v)) i];
    }
}
