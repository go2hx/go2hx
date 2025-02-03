package stdgo.net.http;
class T_populateResponse_static_extension {
    static public function write(_pr:T_populateResponse, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.write(_pr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_pr:T_populateResponse, _code:StdTypes.Int):Void {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.writeHeader(_pr, _code);
    }
    static public function header(_pr:T_populateResponse):Header {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>);
        return stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.header(_pr);
    }
}
