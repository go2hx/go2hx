package stdgo.net.http.fcgi;
class T_response_static_extension {
    static public function close(_r:T_response):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.close(_r);
    }
    static public function flush(_r:T_response):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.flush(_r);
    }
    static public function _writeCGIHeader(_r:T_response, _p:Array<std.UInt>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension._writeCGIHeader(_r, _p);
    }
    static public function writeHeader(_r:T_response, _code:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.writeHeader(_r, _code);
    }
    static public function write(_r:T_response, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.write(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_r:T_response):stdgo._internal.net.http.Http_Header.Header {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_response_static_extension.T_response_static_extension.header(_r);
    }
}
