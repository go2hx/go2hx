package stdgo;
class Auth_static_extension {
    static public function next(t:stdgo._internal.net.smtp.Smtp_auth.Auth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _fromServer = ([for (i in _fromServer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_auth_static_extension.Auth_static_extension.next(t, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(t:stdgo._internal.net.smtp.Smtp_auth.Auth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_auth_static_extension.Auth_static_extension.start(t, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
@:forward abstract Auth(stdgo._internal.net.smtp.Smtp_auth.Auth) from stdgo._internal.net.smtp.Smtp_auth.Auth to stdgo._internal.net.smtp.Smtp_auth.Auth {
    @:from
    static function fromHaxeInterface(x:{ function start(_server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error>; function next(_fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):Auth {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Auth = { start : _0 -> x.start(_0), next : (_0, _1) -> x.next([for (i in _0) i], _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.smtp.Smtp.ServerInfo_static_extension) abstract ServerInfo(stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo) from stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo to stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var tLS(get, set) : Bool;
    function get_tLS():Bool return this.tLS;
    function set_tLS(v:Bool):Bool {
        this.tLS = v;
        return v;
    }
    public var auth(get, set) : Array<String>;
    function get_auth():Array<String> return [for (i in this.auth) i];
    function set_auth(v:Array<String>):Array<String> {
        this.auth = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?tLS:Bool, ?auth:Array<String>) this = new stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo((name : stdgo.GoString), tLS, ([for (i in auth) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_plainAuth_static_extension) @:dox(hide) abstract T_plainAuth(stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth) from stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth to stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth {
    public var _identity(get, set) : String;
    function get__identity():String return this._identity;
    function set__identity(v:String):String {
        this._identity = (v : stdgo.GoString);
        return v;
    }
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = (v : stdgo.GoString);
        return v;
    }
    public var _password(get, set) : String;
    function get__password():String return this._password;
    function set__password(v:String):String {
        this._password = (v : stdgo.GoString);
        return v;
    }
    public var _host(get, set) : String;
    function get__host():String return this._host;
    function set__host(v:String):String {
        this._host = (v : stdgo.GoString);
        return v;
    }
    public function new(?_identity:String, ?_username:String, ?_password:String, ?_host:String) this = new stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth((_identity : stdgo.GoString), (_username : stdgo.GoString), (_password : stdgo.GoString), (_host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_cramMD5Auth_static_extension) @:dox(hide) abstract T_cramMD5Auth(stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth) from stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth to stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth {
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = (v : stdgo.GoString);
        return v;
    }
    public var _secret(get, set) : String;
    function get__secret():String return this._secret;
    function set__secret(v:String):String {
        this._secret = (v : stdgo.GoString);
        return v;
    }
    public function new(?_username:String, ?_secret:String) this = new stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth((_username : stdgo.GoString), (_secret : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.Client_static_extension) abstract Client(stdgo._internal.net.smtp.Smtp_client.Client) from stdgo._internal.net.smtp.Smtp_client.Client to stdgo._internal.net.smtp.Smtp_client.Client {
    public var text(get, set) : stdgo._internal.net.textproto.Textproto_conn.Conn;
    function get_text():stdgo._internal.net.textproto.Textproto_conn.Conn return this.text;
    function set_text(v:stdgo._internal.net.textproto.Textproto_conn.Conn):stdgo._internal.net.textproto.Textproto_conn.Conn {
        this.text = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_conn.Conn;
    function get__conn():stdgo._internal.net.Net_conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_conn.Conn {
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
    public var _ext(get, set) : Map<String, String>;
    function get__ext():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._ext) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__ext(v:Map<String, String>):Map<String, String> {
        this._ext = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
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
    public function new(?text:stdgo._internal.net.textproto.Textproto_conn.Conn, ?_conn:stdgo._internal.net.Net_conn.Conn, ?_tls:Bool, ?_serverName:String, ?_ext:Map<String, String>, ?_auth:Array<String>, ?_localName:String, ?_didHello:Bool, ?_helloError:stdgo.Error) this = new stdgo._internal.net.smtp.Smtp_client.Client((text : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>), _conn, _tls, (_serverName : stdgo.GoString), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _ext) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    }, ([for (i in _auth) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_localName : stdgo.GoString), _didHello, (_helloError : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_dataCloser_static_extension) @:dox(hide) abstract T_dataCloser(stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser) from stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser to stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser {
    public var _c(get, set) : Client;
    function get__c():Client return this._c;
    function set__c(v:Client):Client {
        this._c = (v : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return v;
    }
    public var writeCloser(get, set) : stdgo._internal.io.Io_writecloser.WriteCloser;
    function get_writeCloser():stdgo._internal.io.Io_writecloser.WriteCloser return this.writeCloser;
    function set_writeCloser(v:stdgo._internal.io.Io_writecloser.WriteCloser):stdgo._internal.io.Io_writecloser.WriteCloser {
        this.writeCloser = v;
        return v;
    }
    public function new(?_c:Client, ?writeCloser:stdgo._internal.io.Io_writecloser.WriteCloser) this = new stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser((_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>), writeCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ServerInfoPointer = stdgo._internal.net.smtp.Smtp_serverinfopointer.ServerInfoPointer;
class ServerInfo_static_extension {

}
@:dox(hide) typedef T_plainAuthPointer = stdgo._internal.net.smtp.Smtp_t_plainauthpointer.T_plainAuthPointer;
@:dox(hide) class T_plainAuth_static_extension {
    static public function next(_a:T_plainAuth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth>);
        final _fromServer = ([for (i in _fromServer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_t_plainauth_static_extension.T_plainAuth_static_extension.next(_a, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(_a:T_plainAuth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth>);
        final _server = (_server : stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_t_plainauth_static_extension.T_plainAuth_static_extension.start(_a, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
@:dox(hide) typedef T_cramMD5AuthPointer = stdgo._internal.net.smtp.Smtp_t_crammd5authpointer.T_cramMD5AuthPointer;
@:dox(hide) class T_cramMD5Auth_static_extension {
    static public function next(_a:T_cramMD5Auth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth>);
        final _fromServer = ([for (i in _fromServer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_t_crammd5auth_static_extension.T_cramMD5Auth_static_extension.next(_a, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(_a:T_cramMD5Auth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_crammd5auth.T_cramMD5Auth>);
        final _server = (_server : stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_t_crammd5auth_static_extension.T_cramMD5Auth_static_extension.start(_a, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
typedef ClientPointer = stdgo._internal.net.smtp.Smtp_clientpointer.ClientPointer;
class Client_static_extension {
    static public function quit(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.quit(_c);
    }
    static public function noop(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.noop(_c);
    }
    static public function reset(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.reset(_c);
    }
    static public function extension(_c:Client, _ext:String):stdgo.Tuple<Bool, String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _ext = (_ext : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.extension(_c, _ext);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function data(_c:Client):stdgo.Tuple<stdgo._internal.io.Io_writecloser.WriteCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.data(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rcpt(_c:Client, _to:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.rcpt(_c, _to);
    }
    static public function mail(_c:Client, _from:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _from = (_from : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.mail(_c, _from);
    }
    static public function auth(_c:Client, _a:Auth):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.auth(_c, _a);
    }
    static public function verify(_c:Client, _addr:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _addr = (_addr : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.verify(_c, _addr);
    }
    static public function tLSConnectionState(_c:Client):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.tLSConnectionState(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function startTLS(_c:Client, _config:stdgo._internal.crypto.tls.Tls_config.Config):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _config = (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.startTLS(_c, _config);
    }
    static public function _ehlo(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension._ehlo(_c);
    }
    static public function _helo(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension._helo(_c);
    }
    static public function _cmd(_c:Client, _expectCode:StdTypes.Int, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _expectCode = (_expectCode : stdgo.GoInt);
        final _format = (_format : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension._cmd(_c, _expectCode, _format, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function hello(_c:Client, _localName:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        final _localName = (_localName : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.hello(_c, _localName);
    }
    static public function _hello(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension._hello(_c);
    }
    static public function close(_c:Client):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.smtp.Smtp_client.Client>);
        return stdgo._internal.net.smtp.Smtp_client_static_extension.Client_static_extension.close(_c);
    }
}
@:dox(hide) typedef T_dataCloserPointer = stdgo._internal.net.smtp.Smtp_t_datacloserpointer.T_dataCloserPointer;
@:dox(hide) class T_dataCloser_static_extension {
    static public function close(_d:T_dataCloser):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser>);
        return stdgo._internal.net.smtp.Smtp_t_datacloser_static_extension.T_dataCloser_static_extension.close(_d);
    }
    public static function write(__self__:stdgo._internal.net.smtp.Smtp_t_datacloser.T_dataCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_t_datacloser_static_extension.T_dataCloser_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package smtp implements the Simple Mail Transfer Protocol as defined in RFC 5321.
    * It also implements the following extensions:
    * 
    * 	8BITMIME  RFC 1652
    * 	AUTH      RFC 2554
    * 	STARTTLS  RFC 3207
    * 
    * Additional extensions may be handled by clients.
    * 
    * The smtp package is frozen and is not accepting new features.
    * Some external packages provide more functionality. See:
    * 
    * 	https://godoc.org/?q=smtp
**/
class Smtp {
    /**
        * PlainAuth returns an Auth that implements the PLAIN authentication
        * mechanism as defined in RFC 4616. The returned Auth uses the given
        * username and password to authenticate to host and act as identity.
        * Usually identity should be the empty string, to act as username.
        * 
        * PlainAuth will only send the credentials if the connection is using TLS
        * or is connected to localhost. Otherwise authentication will fail with an
        * error, without sending the credentials.
    **/
    static public inline function plainAuth(_identity:String, _username:String, _password:String, _host:String):Auth {
        final _identity = (_identity : stdgo.GoString);
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        final _host = (_host : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_plainauth.plainAuth(_identity, _username, _password, _host);
    }
    /**
        * CRAMMD5Auth returns an Auth that implements the CRAM-MD5 authentication
        * mechanism as defined in RFC 2195.
        * The returned Auth uses the given username and secret to authenticate
        * to the server using the challenge-response mechanism.
    **/
    static public inline function cRAMMD5Auth(_username:String, _secret:String):Auth {
        final _username = (_username : stdgo.GoString);
        final _secret = (_secret : stdgo.GoString);
        return stdgo._internal.net.smtp.Smtp_crammd5auth.cRAMMD5Auth(_username, _secret);
    }
    /**
        * Dial returns a new Client connected to an SMTP server at addr.
        * The addr must include a port, as in "mail.example.com:smtp".
    **/
    static public inline function dial(_addr:String):stdgo.Tuple<Client, stdgo.Error> {
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_dial.dial(_addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewClient returns a new Client using an existing connection and host as a
        * server name to be used when authenticating.
    **/
    static public inline function newClient(_conn:stdgo._internal.net.Net_conn.Conn, _host:String):stdgo.Tuple<Client, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_newclient.newClient(_conn, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * SendMail connects to the server at addr, switches to TLS if
        * possible, authenticates with the optional mechanism a if possible,
        * and then sends an email from address from, to addresses to, with
        * message msg.
        * The addr must include a port, as in "mail.example.com:smtp".
        * 
        * The addresses in the to parameter are the SMTP RCPT addresses.
        * 
        * The msg parameter should be an RFC 822-style email with headers
        * first, a blank line, and then the message body. The lines of msg
        * should be CRLF terminated. The msg headers should usually include
        * fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
        * messages is accomplished by including an email address in the to
        * parameter but not including it in the msg headers.
        * 
        * The SendMail function and the net/smtp package are low-level
        * mechanisms and provide no support for DKIM signing, MIME
        * attachments (see the mime/multipart package), or other mail
        * functionality. Higher-level packages exist outside of the standard
        * library.
    **/
    static public inline function sendMail(_addr:String, _a:Auth, _from:String, _to:Array<String>, _msg:Array<std.UInt>):stdgo.Error {
        final _addr = (_addr : stdgo.GoString);
        final _from = (_from : stdgo.GoString);
        final _to = ([for (i in _to) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _msg = ([for (i in _msg) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.smtp.Smtp_sendmail.sendMail(_addr, _a, _from, _to, _msg);
    }
}
