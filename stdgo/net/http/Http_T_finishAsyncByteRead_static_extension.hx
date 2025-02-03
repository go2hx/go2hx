package stdgo.net.http;
class T_finishAsyncByteRead_static_extension {
    static public function read(_fr:T_finishAsyncByteRead, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_finishAsyncByteRead_static_extension.T_finishAsyncByteRead_static_extension.read(_fr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
