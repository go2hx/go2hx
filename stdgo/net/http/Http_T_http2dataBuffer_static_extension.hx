package stdgo.net.http;
class T_http2dataBuffer_static_extension {
    static public function write(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_b:T_http2dataBuffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>);
        return stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.len(_b);
    }
    static public function read(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
