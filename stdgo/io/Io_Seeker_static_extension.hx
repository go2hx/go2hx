package stdgo.io;
class Seeker_static_extension {
    static public function seek(t:stdgo._internal.io.Io_Seeker.Seeker, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_Seeker_static_extension.Seeker_static_extension.seek(t, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
