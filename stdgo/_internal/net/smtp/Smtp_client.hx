package stdgo._internal.net.smtp;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension) class Client {
    public var text : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _tls : Bool = false;
    public var _serverName : stdgo.GoString = "";
    public var _ext : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _auth : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _localName : stdgo.GoString = "";
    public var _didHello : Bool = false;
    public var _helloError : stdgo.Error = (null : stdgo.Error);
    public function new(?text:stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>, ?_conn:stdgo._internal.net.Net_conn.Conn, ?_tls:Bool, ?_serverName:stdgo.GoString, ?_ext:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_auth:stdgo.Slice<stdgo.GoString>, ?_localName:stdgo.GoString, ?_didHello:Bool, ?_helloError:stdgo.Error) {
        if (text != null) this.text = text;
        if (_conn != null) this._conn = _conn;
        if (_tls != null) this._tls = _tls;
        if (_serverName != null) this._serverName = _serverName;
        if (_ext != null) this._ext = _ext;
        if (_auth != null) this._auth = _auth;
        if (_localName != null) this._localName = _localName;
        if (_didHello != null) this._didHello = _didHello;
        if (_helloError != null) this._helloError = _helloError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Client(text, _conn, _tls, _serverName, _ext, _auth, _localName, _didHello, _helloError);
    }
}
