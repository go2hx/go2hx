package stdgo.net.http;
class T_connReader_static_extension {
    static public function read(_cr:T_connReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension.read(_cr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
