package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_fileTransport_asInterface) class T_fileTransport_static_extension {
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo._internal.net.http.Http_t_filetransport.T_fileTransport, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo._internal.net.http.Http_t_filetransport.T_fileTransport = _t?.__copy__();
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http__newpopulateresponsewriter._newPopulateResponseWriter(), _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = __tmp__._0, _resc:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>> = __tmp__._1;
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                @:check2 _t._fh.serveHTTP(stdgo.Go.asInterface(_rw), _req);
                @:check2r _rw._finish();
            };
            a();
        }));
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resc.__get__(), _1 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
