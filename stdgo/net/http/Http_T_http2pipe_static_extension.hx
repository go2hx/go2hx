package stdgo.net.http;
class T_http2pipe_static_extension {
    static public function done(_p:T_http2pipe):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.done(_p);
    }
    static public function err(_p:T_http2pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.err(_p);
    }
    static public function breakWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.breakWithError(_p, _err);
    }
    static public function closeWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.closeWithError(_p, _err);
    }
    static public function write(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.write(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.read(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_p:T_http2pipe):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.len(_p);
    }
}
