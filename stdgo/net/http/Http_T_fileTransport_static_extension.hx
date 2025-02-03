package stdgo.net.http;
class T_fileTransport_static_extension {
    static public function roundTrip(_t:T_fileTransport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_fileTransport_static_extension.T_fileTransport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
