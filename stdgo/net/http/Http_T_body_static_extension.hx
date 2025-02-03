package stdgo.net.http;
class T_body_static_extension {
    static public function close(_b:T_body):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>);
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension.close(_b);
    }
    static public function read(_b:T_body, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
