package stdgo.net.http.httptest;
class Server_static_extension {
    static public function _closeConnChan(_s:Server, _c:stdgo._internal.net.Net_Conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        final _done = (_done : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._closeConnChan(_s, _c, _done);
    }
    static public function _closeConn(_s:Server, _c:stdgo._internal.net.Net_Conn.Conn):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._closeConn(_s, _c);
    }
    static public function _wrap(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._wrap(_s);
    }
    static public function _goServe(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._goServe(_s);
    }
    static public function client(_s:Server):stdgo._internal.net.http.Http_Client.Client {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.client(_s);
    }
    static public function certificate(_s:Server):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.certificate(_s);
    }
    static public function closeClientConnections(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.closeClientConnections(_s);
    }
    static public function _logCloseHangDebugInfo(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._logCloseHangDebugInfo(_s);
    }
    static public function close(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.close(_s);
    }
    static public function startTLS(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.startTLS(_s);
    }
    static public function start(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.start(_s);
    }
}
