package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension) class Client {
    public var text : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>);
    public var _conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var _tls : Bool = false;
    public var _serverName : stdgo.GoString = "";
    public var _ext : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _auth : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _localName : stdgo.GoString = "";
    public var _didHello : Bool = false;
    public var _helloError : stdgo.Error = (null : stdgo.Error);
    public function new(?text:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_tls:Bool, ?_serverName:stdgo.GoString, ?_ext:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_auth:stdgo.Slice<stdgo.GoString>, ?_localName:stdgo.GoString, ?_didHello:Bool, ?_helloError:stdgo.Error) {
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
