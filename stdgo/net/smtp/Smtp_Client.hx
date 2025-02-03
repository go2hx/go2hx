package stdgo.net.smtp;
@:structInit @:using(stdgo.net.smtp.Smtp.Client_static_extension) abstract Client(stdgo._internal.net.smtp.Smtp_Client.Client) from stdgo._internal.net.smtp.Smtp_Client.Client to stdgo._internal.net.smtp.Smtp_Client.Client {
    public var text(get, set) : stdgo._internal.net.textproto.Textproto_Conn.Conn;
    function get_text():stdgo._internal.net.textproto.Textproto_Conn.Conn return this.text;
    function set_text(v:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.net.textproto.Textproto_Conn.Conn {
        this.text = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>);
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public var _tls(get, set) : Bool;
    function get__tls():Bool return this._tls;
    function set__tls(v:Bool):Bool {
        this._tls = v;
        return v;
    }
    public var _serverName(get, set) : String;
    function get__serverName():String return this._serverName;
    function set__serverName(v:String):String {
        this._serverName = (v : stdgo.GoString);
        return v;
    }
    public var _ext(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__ext():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._ext;
    function set__ext(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._ext = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _auth(get, set) : Array<String>;
    function get__auth():Array<String> return [for (i in this._auth) i];
    function set__auth(v:Array<String>):Array<String> {
        this._auth = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _localName(get, set) : String;
    function get__localName():String return this._localName;
    function set__localName(v:String):String {
        this._localName = (v : stdgo.GoString);
        return v;
    }
    public var _didHello(get, set) : Bool;
    function get__didHello():Bool return this._didHello;
    function set__didHello(v:Bool):Bool {
        this._didHello = v;
        return v;
    }
    public var _helloError(get, set) : stdgo.Error;
    function get__helloError():stdgo.Error return this._helloError;
    function set__helloError(v:stdgo.Error):stdgo.Error {
        this._helloError = (v : stdgo.Error);
        return v;
    }
    public function new(?text:stdgo._internal.net.textproto.Textproto_Conn.Conn, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_tls:Bool, ?_serverName:String, ?_ext:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_auth:Array<String>, ?_localName:String, ?_didHello:Bool, ?_helloError:stdgo.Error) this = new stdgo._internal.net.smtp.Smtp_Client.Client((text : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>), _conn, _tls, (_serverName : stdgo.GoString), (_ext : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), ([for (i in _auth) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_localName : stdgo.GoString), _didHello, (_helloError : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
