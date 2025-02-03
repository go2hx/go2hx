package stdgo.net.http;
class T_arrayReader_static_extension {
    static public function close(_r:T_arrayReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader>);
        return stdgo._internal.net.http.Http_T_arrayReader_static_extension.T_arrayReader_static_extension.close(_r);
    }
    static public function read(_r:T_arrayReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_arrayReader_static_extension.T_arrayReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
