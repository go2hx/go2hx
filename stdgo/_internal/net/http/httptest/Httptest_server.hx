package stdgo._internal.net.http.httptest;
@:structInit @:using(stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension) class Server {
    public var uRL : stdgo.GoString = "";
    public var listener : stdgo._internal.net.Net_listener.Listener = (null : stdgo._internal.net.Net_listener.Listener);
    public var enableHTTP2 : Bool = false;
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var config : stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
    public var _certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
    public var _wg : stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _closed : Bool = false;
    public var _conns : stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState> = (null : stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>);
    public var _client : stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = (null : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
    public function new(?uRL:stdgo.GoString, ?listener:stdgo._internal.net.Net_listener.Listener, ?enableHTTP2:Bool, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?config:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, ?_certificate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, ?_wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closed:Bool, ?_conns:stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>, ?_client:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>) {
        if (uRL != null) this.uRL = uRL;
        if (listener != null) this.listener = listener;
        if (enableHTTP2 != null) this.enableHTTP2 = enableHTTP2;
        if (tLS != null) this.tLS = tLS;
        if (config != null) this.config = config;
        if (_certificate != null) this._certificate = _certificate;
        if (_wg != null) this._wg = _wg;
        if (_mu != null) this._mu = _mu;
        if (_closed != null) this._closed = _closed;
        if (_conns != null) this._conns = _conns;
        if (_client != null) this._client = _client;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Server(
uRL,
listener,
enableHTTP2,
tLS,
config,
_certificate,
_wg,
_mu,
_closed,
_conns,
_client);
    }
}
