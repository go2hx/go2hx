package stdgo.internal.coverage.uleb128;
class Uleb128 {
    static public inline function appendUleb128(_b:Array<std.UInt>, _v:std.UInt):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.GoUInt);
        return [for (i in stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128(_b, _v)) i];
    }
}
