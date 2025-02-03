package stdgo.net.http;
class T_maxBytesReader_static_extension {
    static public function close(_l:T_maxBytesReader):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>);
        return stdgo._internal.net.http.Http_T_maxBytesReader_static_extension.T_maxBytesReader_static_extension.close(_l);
    }
    static public function read(_l:T_maxBytesReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_maxBytesReader_static_extension.T_maxBytesReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
