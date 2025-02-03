package stdgo.io;
class LimitedReader_static_extension {
    static public function read(_l:LimitedReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_LimitedReader_static_extension.LimitedReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
