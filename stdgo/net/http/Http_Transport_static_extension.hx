package stdgo.net.http;
class Transport_static_extension {
    static public function cancelRequest(_t:Transport, _req:Request):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.cancelRequest(_t, _req);
    }
    static public function closeIdleConnections(_t:Transport):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.closeIdleConnections(_t);
    }
    static public function registerProtocol(_t:Transport, _scheme:String, _rt:RoundTripper):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        final _scheme = (_scheme : stdgo.GoString);
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.registerProtocol(_t, _scheme, _rt);
    }
    static public function clone(_t:Transport):Transport {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.clone(_t);
    }
    static public function roundTrip(_t:Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
