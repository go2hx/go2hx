package stdgo.net.http.httputil;
class T_failureToReadBody_static_extension {
    static public function close(_:T_failureToReadBody):stdgo.Error {
        return stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody_static_extension.T_failureToReadBody_static_extension.close(_);
    }
    static public function read(_:T_failureToReadBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody_static_extension.T_failureToReadBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
