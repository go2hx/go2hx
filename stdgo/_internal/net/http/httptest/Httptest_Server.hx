package stdgo._internal.net.http.httptest;
import stdgo._internal.net.http.Http;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.net.http.internal.testcert.Testcert;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension) class Server {
    public var uRL : stdgo.GoString = "";
    public var listener : stdgo._internal.net.Net_Listener.Listener = (null : stdgo._internal.net.Net_Listener.Listener);
    public var enableHTTP2 : Bool = false;
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
    public var config : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    public var _certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public var _wg : stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _closed : Bool = false;
    public var _conns : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState> = (null : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>);
    public var _client : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
    public function new(?uRL:stdgo.GoString, ?listener:stdgo._internal.net.Net_Listener.Listener, ?enableHTTP2:Bool, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>, ?config:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, ?_certificate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_conns:stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>, ?_client:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>) {
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
