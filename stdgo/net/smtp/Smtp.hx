package stdgo.net.smtp;
class Auth_static_extension {
    static public function next(t:stdgo._internal.net.smtp.Smtp_Auth.Auth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _fromServer = ([for (i in _fromServer) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Auth_static_extension.Auth_static_extension.next(t, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(t:stdgo._internal.net.smtp.Smtp_Auth.Auth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Auth_static_extension.Auth_static_extension.start(t, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
typedef Auth = stdgo._internal.net.smtp.Smtp_Auth.Auth;
@:structInit abstract ServerInfo(stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo) from stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo to stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var tls(get, set) : Bool;
    function get_tls():Bool return this.tls;
    function set_tls(v:Bool):Bool {
        this.tls = v;
        return v;
    }
    public var auth(get, set) : Array<String>;
    function get_auth():Array<String> return [for (i in this.auth) i];
    function set_auth(v:Array<String>):Array<String> {
        this.auth = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?tls:Bool, ?auth:Array<String>) this = new stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo(name, tls, ([for (i in auth) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_plainAuth_static_extension) abstract T_plainAuth(stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth) from stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth to stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth {
    public var _identity(get, set) : String;
    function get__identity():String return this._identity;
    function set__identity(v:String):String {
        this._identity = v;
        return v;
    }
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = v;
        return v;
    }
    public var _password(get, set) : String;
    function get__password():String return this._password;
    function set__password(v:String):String {
        this._password = v;
        return v;
    }
    public var _host(get, set) : String;
    function get__host():String return this._host;
    function set__host(v:String):String {
        this._host = v;
        return v;
    }
    public function new(?_identity:String, ?_username:String, ?_password:String, ?_host:String) this = new stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth(_identity, _username, _password, _host);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_cramMD5Auth_static_extension) abstract T_cramMD5Auth(stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth) from stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth to stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth {
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = v;
        return v;
    }
    public var _secret(get, set) : String;
    function get__secret():String return this._secret;
    function set__secret(v:String):String {
        this._secret = v;
        return v;
    }
    public function new(?_username:String, ?_secret:String) this = new stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth(_username, _secret);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.Client_static_extension) abstract Client(stdgo._internal.net.smtp.Smtp_Client.Client) from stdgo._internal.net.smtp.Smtp_Client.Client to stdgo._internal.net.smtp.Smtp_Client.Client {
    public var text(get, set) : stdgo._internal.net.textproto.Textproto_Conn.Conn;
    function get_text():stdgo._internal.net.textproto.Textproto_Conn.Conn return this.text;
    function set_text(v:stdgo._internal.net.textproto.Textproto_Conn.Conn):stdgo._internal.net.textproto.Textproto_Conn.Conn {
        this.text = v;
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
        this._serverName = v;
        return v;
    }
    public var _ext(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__ext():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._ext;
    function set__ext(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._ext = v;
        return v;
    }
    public var _auth(get, set) : Array<String>;
    function get__auth():Array<String> return [for (i in this._auth) i];
    function set__auth(v:Array<String>):Array<String> {
        this._auth = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _localName(get, set) : String;
    function get__localName():String return this._localName;
    function set__localName(v:String):String {
        this._localName = v;
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
        this._helloError = v;
        return v;
    }
    public function new(?text:stdgo._internal.net.textproto.Textproto_Conn.Conn, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_tls:Bool, ?_serverName:String, ?_ext:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_auth:Array<String>, ?_localName:String, ?_didHello:Bool, ?_helloError:stdgo.Error) this = new stdgo._internal.net.smtp.Smtp_Client.Client(text, _conn, _tls, _serverName, _ext, ([for (i in _auth) i] : stdgo.Slice<stdgo.GoString>), _localName, _didHello, _helloError);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.smtp.Smtp.T_dataCloser_static_extension) abstract T_dataCloser(stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser) from stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser to stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser {
    public var _c(get, set) : Client;
    function get__c():Client return this._c;
    function set__c(v:Client):Client {
        this._c = v;
        return v;
    }
    public var writeCloser(get, set) : stdgo._internal.io.Io_WriteCloser.WriteCloser;
    function get_writeCloser():stdgo._internal.io.Io_WriteCloser.WriteCloser return this.writeCloser;
    function set_writeCloser(v:stdgo._internal.io.Io_WriteCloser.WriteCloser):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        this.writeCloser = v;
        return v;
    }
    public function new(?_c:Client, ?writeCloser:stdgo._internal.io.Io_WriteCloser.WriteCloser) this = new stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser(_c, writeCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_plainAuth_static_extension {
    static public function next(_a:T_plainAuth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _fromServer = ([for (i in _fromServer) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_plainAuth_static_extension.T_plainAuth_static_extension.next(_a, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(_a:T_plainAuth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_plainAuth_static_extension.T_plainAuth_static_extension.start(_a, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
class T_cramMD5Auth_static_extension {
    static public function next(_a:T_cramMD5Auth, _fromServer:Array<std.UInt>, _more:Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _fromServer = ([for (i in _fromServer) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_cramMD5Auth_static_extension.T_cramMD5Auth_static_extension.next(_a, _fromServer, _more);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function start(_a:T_cramMD5Auth, _server:ServerInfo):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_cramMD5Auth_static_extension.T_cramMD5Auth_static_extension.start(_a, _server);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
class Client_static_extension {
    static public function quit(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.quit(_c);
    }
    static public function noop(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.noop(_c);
    }
    static public function reset(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.reset(_c);
    }
    static public function extension(_c:Client, _ext:String):stdgo.Tuple<Bool, String> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.extension(_c, _ext);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function data(_c:Client):stdgo.Tuple<stdgo._internal.io.Io_WriteCloser.WriteCloser, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.data(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rcpt(_c:Client, _to:String):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.rcpt(_c, _to);
    }
    static public function mail(_c:Client, _from:String):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.mail(_c, _from);
    }
    static public function auth(_c:Client, _a:Auth):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.auth(_c, _a);
    }
    static public function verify(_c:Client, _addr:String):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.verify(_c, _addr);
    }
    static public function tlsconnectionState(_c:Client):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, Bool> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.tlsconnectionState(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function startTLS(_c:Client, _config:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.startTLS(_c, _config);
    }
    static public function _ehlo(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._ehlo(_c);
    }
    static public function _helo(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._helo(_c);
    }
    static public function _cmd(_c:Client, _expectCode:StdTypes.Int, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._cmd(_c, _expectCode, _format, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function hello(_c:Client, _localName:String):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.hello(_c, _localName);
    }
    static public function _hello(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension._hello(_c);
    }
    static public function close(_c:Client):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_Client_static_extension.Client_static_extension.close(_c);
    }
}
class T_dataCloser_static_extension {
    static public function close(_d:T_dataCloser):stdgo.Error {
        return stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension.close(_d);
    }
    public static function write(__self__:stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension.write(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package smtp implements the Simple Mail Transfer Protocol as defined in RFC 5321.
    It also implements the following extensions:
    
    	8BITMIME  RFC 1652
    	AUTH      RFC 2554
    	STARTTLS  RFC 3207
    
    Additional extensions may be handled by clients.
    
    The smtp package is frozen and is not accepting new features.
    Some external packages provide more functionality. See:
    
    	https://godoc.org/?q=smtp
**/
class Smtp {
    /**
        PlainAuth returns an Auth that implements the PLAIN authentication
        mechanism as defined in RFC 4616. The returned Auth uses the given
        username and password to authenticate to host and act as identity.
        Usually identity should be the empty string, to act as username.
        
        PlainAuth will only send the credentials if the connection is using TLS
        or is connected to localhost. Otherwise authentication will fail with an
        error, without sending the credentials.
    **/
    static public function plainAuth(_identity:String, _username:String, _password:String, _host:String):Auth {
        return stdgo._internal.net.smtp.Smtp_plainAuth.plainAuth(_identity, _username, _password, _host);
    }
    /**
        CRAMMD5Auth returns an Auth that implements the CRAM-MD5 authentication
        mechanism as defined in RFC 2195.
        The returned Auth uses the given username and secret to authenticate
        to the server using the challenge-response mechanism.
    **/
    static public function crammd5auth(_username:String, _secret:String):Auth {
        return stdgo._internal.net.smtp.Smtp_crammd5auth.crammd5auth(_username, _secret);
    }
    /**
        Dial returns a new Client connected to an SMTP server at addr.
        The addr must include a port, as in "mail.example.com:smtp".
    **/
    static public function dial(_addr:String):stdgo.Tuple<Client, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_dial.dial(_addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewClient returns a new Client using an existing connection and host as a
        server name to be used when authenticating.
    **/
    static public function newClient(_conn:stdgo._internal.net.Net_Conn.Conn, _host:String):stdgo.Tuple<Client, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.smtp.Smtp_newClient.newClient(_conn, _host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SendMail connects to the server at addr, switches to TLS if
        possible, authenticates with the optional mechanism a if possible,
        and then sends an email from address from, to addresses to, with
        message msg.
        The addr must include a port, as in "mail.example.com:smtp".
        
        The addresses in the to parameter are the SMTP RCPT addresses.
        
        The msg parameter should be an RFC 822-style email with headers
        first, a blank line, and then the message body. The lines of msg
        should be CRLF terminated. The msg headers should usually include
        fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
        messages is accomplished by including an email address in the to
        parameter but not including it in the msg headers.
        
        The SendMail function and the net/smtp package are low-level
        mechanisms and provide no support for DKIM signing, MIME
        attachments (see the mime/multipart package), or other mail
        functionality. Higher-level packages exist outside of the standard
        library.
    **/
    static public function sendMail(_addr:String, _a:Auth, _from:String, _to:Array<String>, _msg:Array<std.UInt>):stdgo.Error {
        final _to = ([for (i in _to) i] : stdgo.Slice<stdgo.GoString>);
        final _msg = ([for (i in _msg) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.smtp.Smtp_sendMail.sendMail(_addr, _a, _from, _to, _msg);
    }
}
