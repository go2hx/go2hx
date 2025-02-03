package stdgo.internal.coverage.slicereader;
class Slicereader {
    static public inline function newReader(_b:Array<std.UInt>, _readonly:Bool):Reader {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.slicereader.Slicereader_newReader.newReader(_b, _readonly);
    }
}
