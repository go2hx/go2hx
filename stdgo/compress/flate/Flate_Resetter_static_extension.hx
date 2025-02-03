package stdgo.compress.flate;
class Resetter_static_extension {
    static public function reset(t:stdgo._internal.compress.flate.Flate_Resetter.Resetter, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_Resetter_static_extension.Resetter_static_extension.reset(t, _r, _dict);
    }
}
