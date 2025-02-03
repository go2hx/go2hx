package stdgo.io;
class WriterAt_static_extension {
    static public function writeAt(t:stdgo._internal.io.Io_WriterAt.WriterAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_WriterAt_static_extension.WriterAt_static_extension.writeAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
