package stdgo.net.http.pprof;
class T_handler_static_extension {
    static public function _serveDeltaProfile(_name:T_handler, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo._internal.net.http.Http_Request.Request, _p:stdgo._internal.runtime.pprof.Pprof_Profile.Profile, _secStr:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        final _secStr = (_secStr : stdgo.GoString);
        stdgo._internal.net.http.pprof.Pprof_T_handler_static_extension.T_handler_static_extension._serveDeltaProfile(_name, _w, _r, _p, _secStr);
    }
    static public function serveHTTP(_name:T_handler, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo._internal.net.http.Http_Request.Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.pprof.Pprof_T_handler_static_extension.T_handler_static_extension.serveHTTP(_name, _w, _r);
    }
}
