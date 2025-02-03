package stdgo.net.http.httptest;
@:structInit @:using(stdgo.net.http.httptest.Httptest.Server_static_extension) abstract Server(stdgo._internal.net.http.httptest.Httptest_Server.Server) from stdgo._internal.net.http.httptest.Httptest_Server.Server to stdgo._internal.net.http.httptest.Httptest_Server.Server {
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var listener(get, set) : stdgo._internal.net.Net_Listener.Listener;
    function get_listener():stdgo._internal.net.Net_Listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Listener.Listener {
        this.listener = v;
        return v;
    }
    public var enableHTTP2(get, set) : Bool;
    function get_enableHTTP2():Bool return this.enableHTTP2;
    function set_enableHTTP2(v:Bool):Bool {
        this.enableHTTP2 = v;
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLS():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var config(get, set) : stdgo._internal.net.http.Http_Server.Server;
    function get_config():stdgo._internal.net.http.Http_Server.Server return this.config;
    function set_config(v:stdgo._internal.net.http.Http_Server.Server):stdgo._internal.net.http.Http_Server.Server {
        this.config = (v : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return v;
    }
    public var _certificate(get, set) : stdgo._internal.crypto.x509.X509_Certificate.Certificate;
    function get__certificate():stdgo._internal.crypto.x509.X509_Certificate.Certificate return this._certificate;
    function set__certificate(v:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        this._certificate = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public var _wg(get, set) : stdgo._internal.sync.Sync_WaitGroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_WaitGroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_WaitGroup.WaitGroup):stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
        this._wg = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _conns(get, set) : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>;
    function get__conns():stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState> return this._conns;
    function set__conns(v:stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>):stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState> {
        this._conns = (v : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>);
        return v;
    }
    public var _client(get, set) : stdgo._internal.net.http.Http_Client.Client;
    function get__client():stdgo._internal.net.http.Http_Client.Client return this._client;
    function set__client(v:stdgo._internal.net.http.Http_Client.Client):stdgo._internal.net.http.Http_Client.Client {
        this._client = (v : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        return v;
    }
    public function new(?uRL:String, ?listener:stdgo._internal.net.Net_Listener.Listener, ?enableHTTP2:Bool, ?tLS:stdgo._internal.crypto.tls.Tls_Config.Config, ?config:stdgo._internal.net.http.Http_Server.Server, ?_certificate:stdgo._internal.crypto.x509.X509_Certificate.Certificate, ?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_conns:stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>, ?_client:stdgo._internal.net.http.Http_Client.Client) this = new stdgo._internal.net.http.httptest.Httptest_Server.Server(
(uRL : stdgo.GoString),
listener,
enableHTTP2,
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
(config : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>),
(_certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>),
_wg,
_mu,
_closed,
(_conns : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>),
(_client : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
