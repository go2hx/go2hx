package stdgo.net.http.internal;
class T_chunkedReader_static_extension {
    static public function read(_cr:T_chunkedReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension.read(_cr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _chunkHeaderAvailable(_cr:T_chunkedReader):Bool {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>);
        return stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension._chunkHeaderAvailable(_cr);
    }
    static public function _beginChunk(_cr:T_chunkedReader):Void {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>);
        stdgo._internal.net.http.internal.Internal_T_chunkedReader_static_extension.T_chunkedReader_static_extension._beginChunk(_cr);
    }
}
