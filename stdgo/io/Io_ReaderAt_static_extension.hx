package stdgo.io;
class ReaderAt_static_extension {
    static public function readAt(t:stdgo._internal.io.Io_ReaderAt.ReaderAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_ReaderAt_static_extension.ReaderAt_static_extension.readAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
