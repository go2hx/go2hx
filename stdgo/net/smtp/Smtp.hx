package stdgo.net.smtp;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef Auth = StructType & {
	public function start(_server:Pointer<ServerInfo>):{var _0:GoString; var _1:Slice<GoByte>; var _2:Error;};
	public function next(_fromServer:Slice<GoByte>, _more:Bool):{var _0:Slice<GoByte>; var _1:Error;};
};

@:structInit class ServerInfo {
	public var name:GoString = (("" : GoString));
	public var tls:Bool = false;
	public var auth:Slice<GoString> = new Slice<GoString>().nil();

	public function new(?name:GoString, ?tls:Bool, ?auth:Slice<GoString>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(tls) + " " + Go.string(auth) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ServerInfo(name, tls, auth);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.tls = __tmp__.tls;
		this.auth = __tmp__.auth;
		return this;
	}
}

@:structInit class T_plainAuth {
	public function next(_fromServer:Slice<GoByte>, _more:Bool):{var _0:Slice<GoByte>; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_more) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.errors.Errors.new_("unexpected server challenge")};
		};
		return {_0: new Slice<GoUInt8>().nil(), _1: ((null : stdgo.Error))};
	}

	public function start(_server:Pointer<ServerInfo>):{var _0:GoString; var _1:Slice<GoByte>; var _2:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_server.value.tls && !_isLocalhost(_server.value.name)) {
			return {_0: "", _1: new Slice<GoUInt8>().nil(), _2: stdgo.errors.Errors.new_("unencrypted connection")};
		};
		if (_server.value.name != _a.value._host) {
			return {_0: "", _1: new Slice<GoUInt8>().nil(), _2: stdgo.errors.Errors.new_("wrong host name")};
		};
		var _resp:Slice<GoUInt8> = (((_a.value._identity + (("\\x00" : GoString)) + _a.value._username + (("\\x00" : GoString)) +
			_a.value._password) : Slice<GoByte>));
		return {_0: "PLAIN", _1: _resp, _2: ((null : stdgo.Error))};
	}

	public var _identity:GoString = (("" : GoString));
	public var _username:GoString = (("" : GoString));
	public var _password:GoString = (("" : GoString));
	public var _host:GoString = (("" : GoString));

	public function new(?_identity:GoString, ?_username:GoString, ?_password:GoString, ?_host:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_identity) + " " + Go.string(_username) + " " + Go.string(_password) + " " + Go.string(_host) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_plainAuth(_identity, _username, _password, _host);
	}

	public function __set__(__tmp__) {
		this._identity = __tmp__._identity;
		this._username = __tmp__._username;
		this._password = __tmp__._password;
		this._host = __tmp__._host;
		return this;
	}
}

@:structInit class T_cramMD5Auth {
	public function next(_fromServer:Slice<GoByte>, _more:Bool):{var _0:Slice<GoByte>; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_more) {
			var _d:stdgo.hash.Hash.Hash = stdgo.crypto.hmac.Hmac.new_(stdgo.crypto.md5.Md5.new_, ((_a.value._secret : Slice<GoByte>)));
			_d.write(_fromServer);
			var _s:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_d.size() : GoInt))
				.toBasic());
			return {_0: ((stdgo.fmt.Fmt.sprintf("%s %x", Go.toInterface(_a.value._username),
				Go.toInterface(_d.sum(_s))) : Slice<GoByte>)), _1: ((null : stdgo.Error))};
		};
		return {_0: new Slice<GoUInt8>().nil(), _1: ((null : stdgo.Error))};
	}

	public function start(_server:Pointer<ServerInfo>):{var _0:GoString; var _1:Slice<GoByte>; var _2:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return {_0: "CRAM-MD5", _1: new Slice<GoUInt8>().nil(), _2: ((null : stdgo.Error))};
	}

	public var _username:GoString = (("" : GoString));
	public var _secret:GoString = (("" : GoString));

	public function new(?_username:GoString, ?_secret:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_username) + " " + Go.string(_secret) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_cramMD5Auth(_username, _secret);
	}

	public function __set__(__tmp__) {
		this._username = __tmp__._username;
		this._secret = __tmp__._secret;
		return this;
	}
}

@:structInit class Client {
	public function quit():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((221 : GoInt)), "QUIT"),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return _err;
		};
		return _c.value.text.value.close();
	}

	public function noop():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((250 : GoInt)), "NOOP"),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function reset():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((250 : GoInt)), "RSET"),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function extension(_ext:GoString):{var _0:Bool; var _1:GoString;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return {_0: false, _1: ""};
			};
		};
		if (_c.value._ext == null || _c.value._ext.isNil()) {
			return {_0: false, _1: ""};
		};
		_ext = stdgo.strings.Strings.toUpper(_ext);
		var __tmp__ = _c.value._ext.exists(_ext) ? {value: _c.value._ext[_ext], ok: true} : {value: _c.value._ext.defaultValue(), ok: false},
			_param:GoString = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		return {_0: _ok, _1: _param};
	}

	public function data():{var _0:stdgo.io.Io.WriteCloser; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value._cmd(((354 : GoInt)), "DATA"),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: ((null : stdgo.io.Io.WriteCloser)), _1: _err};
		};
		return {_0: Go.pointer(new T_dataCloser(_c, _c.value.text.value.dotWriter())).value, _1: ((null : stdgo.Error))};
	}

	public function rcpt(_to:GoString):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _validateLine(_to);
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((25 : GoInt)), "RCPT TO:<%s>", Go.toInterface(_to)),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function mail(_from:GoString):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _validateLine(_from);
			if (_err != null) {
				return _err;
			};
		};
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var _cmdStr:GoString = "MAIL FROM:<%s>";
		if (_c.value._ext != null && !_c.value._ext.isNil()) {
			{
				var __tmp__ = _c.value._ext.exists("8BITMIME") ? {value: _c.value._ext["8BITMIME"], ok: true} : {value: _c.value._ext.defaultValue(),
					ok: false},
					_:GoString = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (_ok) {
					_cmdStr = _cmdStr + (" BODY=8BITMIME");
				};
			};
			{
				var __tmp__ = _c.value._ext.exists("SMTPUTF8") ? {value: _c.value._ext["SMTPUTF8"], ok: true} : {value: _c.value._ext.defaultValue(),
					ok: false},
					_:GoString = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (_ok) {
					_cmdStr = _cmdStr + (" SMTPUTF8");
				};
			};
		};
		var __tmp__ = _c.value._cmd(((250 : GoInt)), _cmdStr, Go.toInterface(_from)),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function auth(_a:Auth):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var _encoding:Pointer<stdgo.encoding.base64.Base64.Encoding> = stdgo.encoding.base64.Base64.stdEncoding;
		var __tmp__ = _a.start(Go.pointer(new ServerInfo(_c.value._serverName, _c.value._tls, _c.value._auth))),
			_mech:GoString = __tmp__._0,
			_resp:Slice<GoUInt8> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_c.value.quit();
			return _err;
		};
		var _resp64:Slice<GoUInt8> = new Slice<GoUInt8>(...[
			for (i in 0...((_encoding.value.encodedLen(_resp.length) : GoInt)).toBasic()) ((0 : GoUInt8))
		]);
		_encoding.value.encode(_resp64, _resp);
		var __tmp__ = _c.value._cmd(((0 : GoInt)),
			stdgo.strings.Strings.trimSpace(stdgo.fmt.Fmt.sprintf("AUTH %s %s", Go.toInterface(_mech), Go.toInterface(_resp64)))),
			_code:GoInt = __tmp__._0,
			_msg64:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		while (_err == null) {
			var _msg:Slice<GoByte> = new Slice<GoUInt8>().nil();
			if (_code == ((334 : GoInt))) {
				{
					var __tmp__ = _encoding.value.decodeString(_msg64);
					_msg = __tmp__._0;
					_err = __tmp__._1;
				};
			} else if (_code == ((235 : GoInt))) {
				_msg = ((_msg64 : Slice<GoByte>));
			} else {
				_err = Go.pointer((({code: _code, msg: _msg64} : stdgo.net.textproto.Textproto.Error))).value;
			};
			if (_err == null) {
				{
					var __tmp__ = _a.next(_msg, _code == ((334 : GoInt)));
					_resp = __tmp__._0;
					_err = __tmp__._1;
				};
			};
			if (_err != null) {
				_c.value._cmd(((501 : GoInt)), "*");
				_c.value.quit();
				break;
			};
			if (_resp == null || _resp.isNil()) {
				break;
			};
			_resp64 = new Slice<GoUInt8>(...[
				for (i in 0...((_encoding.value.encodedLen(_resp.length) : GoInt)).toBasic()) ((0 : GoUInt8))
			]);
			_encoding.value.encode(_resp64, _resp);
			{
				var __tmp__ = _c.value._cmd(((0 : GoInt)), ((_resp64 : GoString)));
				_code = __tmp__._0;
				_msg64 = __tmp__._1;
				_err = __tmp__._2;
			};
		};
		return _err;
	}

	public function verify(_addr:GoString):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _validateLine(_addr);
			if (_err != null) {
				return _err;
			};
		};
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((250 : GoInt)), "VRFY %s", Go.toInterface(_addr)),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function tlsconnectionState():{var _0:stdgo.crypto.tls.Tls.ConnectionState; var _1:Bool;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _state:stdgo.crypto.tls.Tls.ConnectionState = new stdgo.crypto.tls.Tls.ConnectionState(),
			_ok:Bool = false;
		var __tmp__ = try {
			{value: ((_c.value._conn.__underlying__().value : stdgo.crypto.tls.Tls.Conn)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.crypto.tls.Tls.Conn>().nil(), ok: false};
		}, _tc = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: _state, _1: _ok};
		};
		return {_0: _tc.value.connectionState().__copy__(), _1: true};
	}

	public function startTLS(_config:Pointer<stdgo.crypto.tls.Tls.Config>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _c.value._hello();
			if (_err != null) {
				return _err;
			};
		};
		var __tmp__ = _c.value._cmd(((220 : GoInt)), "STARTTLS"),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return _err;
		};
		_c.value._conn = stdgo.crypto.tls.Tls.client(_c.value._conn, _config).value;
		_c.value.text = stdgo.net.textproto.Textproto.newConn(_c.value._conn);
		_c.value._tls = true;
		return _c.value._ehlo();
	}

	public function _ehlo():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value._cmd(((250 : GoInt)), "EHLO %s", Go.toInterface(_c.value._localName)),
			_:GoInt = __tmp__._0,
			_msg:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return _err;
		};
		var _ext:GoMap<GoString, GoString> = new GoMap<GoString,
			GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.basic(string_kind))));
		var _extList:Slice<GoString> = stdgo.strings.Strings.split(_msg, "\n");
		if (_extList.length > ((1 : GoInt))) {
			_extList = _extList.__slice__(((1 : GoInt)));
			for (_line in _extList) {
				var _args:Slice<GoString> = stdgo.strings.Strings.splitN(_line, " ", ((2 : GoInt)));
				if (_args.length > ((1 : GoInt))) {
					_ext[_args[((0 : GoInt))]] = _args[((1 : GoInt))];
				} else {
					_ext[_args[((0 : GoInt))]] = "";
				};
			};
		};
		{
			var __tmp__ = _ext.exists("AUTH") ? {value: _ext["AUTH"], ok: true} : {value: _ext.defaultValue(), ok: false},
				_mechs:GoString = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok) {
				_c.value._auth = stdgo.strings.Strings.split(_mechs, " ");
			};
		};
		_c.value._ext = _ext;
		return _err;
	}

	public function _helo():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_c.value._ext = new GoMap<GoString,
			GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
		var __tmp__ = _c.value._cmd(((250 : GoInt)), "HELO %s", Go.toInterface(_c.value._localName)),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public function _cmd(_expectCode:GoInt, _format:GoString, _args:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:GoString; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _args = new Slice<AnyInterface>(..._args);
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var __tmp__ = _c.value.text.value.cmd(_format, ..._args.toArray()),
			_id:GoUInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: "", _2: _err};
		};
		_c.value.text.value.startResponse(_id);
		try {
			{
				var a0 = _id;
				deferstack.unshift(() -> _c.value.text.value.endResponse(a0));
			};
			var __tmp__ = _c.value.text.value.readResponse(_expectCode),
				_code:GoInt = __tmp__._0,
				_msg:GoString = __tmp__._1,
				_err:stdgo.Error = __tmp__._2;
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _code, _1: _msg, _2: _err};
			};
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return {_0: ((0 : GoInt)), _1: (("" : GoString)), _2: ((null : stdgo.Error))};
			};
		};
	}

	public function hello(_localName:GoString):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _err:stdgo.Error = _validateLine(_localName);
			if (_err != null) {
				return _err;
			};
		};
		if (_c.value._didHello) {
			return stdgo.errors.Errors.new_("smtp: Hello called after other methods");
		};
		_c.value._localName = _localName;
		return _c.value._hello();
	}

	public function _hello():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._didHello) {
			_c.value._didHello = true;
			var _err:stdgo.Error = _c.value._ehlo();
			if (_err != null) {
				_c.value._helloError = _c.value._helo();
			};
		};
		return _c.value._helloError;
	}

	public function close():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value.text.value.close();
	}

	public var text:Pointer<stdgo.net.textproto.Textproto.Conn> = new Pointer<stdgo.net.textproto.Textproto.Conn>().nil();
	public var _conn:stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
	public var _tls:Bool = false;
	public var _serverName:GoString = (("" : GoString));
	public var _ext:GoMap<GoString, GoString> = new GoMap<GoString,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
	public var _auth:Slice<GoString> = new Slice<GoString>().nil();
	public var _localName:GoString = (("" : GoString));
	public var _didHello:Bool = false;
	public var _helloError:stdgo.Error = ((null : stdgo.Error));

	public function new(?text:Pointer<stdgo.net.textproto.Textproto.Conn>, ?_conn:stdgo.net.Net.Conn, ?_tls:Bool, ?_serverName:GoString,
			?_ext:GoMap<GoString, GoString>, ?_auth:Slice<GoString>, ?_localName:GoString, ?_didHello:Bool, ?_helloError:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(text) + " " + Go.string(_conn) + " " + Go.string(_tls) + " " + Go.string(_serverName) + " " + Go.string(_ext) + " "
			+ Go.string(_auth) + " " + Go.string(_localName) + " " + Go.string(_didHello) + " " + Go.string(_helloError) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Client(text, _conn, _tls, _serverName, _ext, _auth, _localName, _didHello, _helloError);
	}

	public function __set__(__tmp__) {
		this.text = __tmp__.text;
		this._conn = __tmp__._conn;
		this._tls = __tmp__._tls;
		this._serverName = __tmp__._serverName;
		this._ext = __tmp__._ext;
		this._auth = __tmp__._auth;
		this._localName = __tmp__._localName;
		this._didHello = __tmp__._didHello;
		this._helloError = __tmp__._helloError;
		return this;
	}
}

@:structInit class T_dataCloser {
	public function close():Error {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_d.value.writeCloser.close();
		var __tmp__ = _d.value._c.value.text.value.readResponse(((250 : GoInt))),
			_:GoInt = __tmp__._0,
			_:GoString = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		return _err;
	}

	public var _c:Pointer<Client> = new Pointer<Client>().nil();
	@:embedded
	public var writeCloser:stdgo.io.Io.WriteCloser = ((null : stdgo.io.Io.WriteCloser));

	public function new(?_c:Pointer<Client>, ?writeCloser:stdgo.io.Io.WriteCloser)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_c) + " " + Go.string(writeCloser) + "}";
	}

	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return writeCloser.write(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dataCloser(_c, writeCloser);
	}

	public function __set__(__tmp__) {
		this._c = __tmp__._c;
		this.writeCloser = __tmp__.writeCloser;
		return this;
	}
}

var _testHookStartTLS:Pointer<stdgo.crypto.tls.Tls.Config>->Void = null;

/**
	// PlainAuth returns an Auth that implements the PLAIN authentication
	// mechanism as defined in RFC 4616. The returned Auth uses the given
	// username and password to authenticate to host and act as identity.
	// Usually identity should be the empty string, to act as username.
	//
	// PlainAuth will only send the credentials if the connection is using TLS
	// or is connected to localhost. Otherwise authentication will fail with an
	// error, without sending the credentials.
**/
function plainAuth(_identity:GoString, _username:GoString, _password:GoString, _host:GoString):Auth {
	return Go.pointer(new T_plainAuth(_identity, _username, _password, _host)).value;
}

function _isLocalhost(_name:GoString):Bool {
	return _name == (("localhost" : GoString)) || _name == (("127.0.0.1" : GoString)) || _name == (("::1" : GoString));
}

/**
	// CRAMMD5Auth returns an Auth that implements the CRAM-MD5 authentication
	// mechanism as defined in RFC 2195.
	// The returned Auth uses the given username and secret to authenticate
	// to the server using the challenge-response mechanism.
**/
function crammd5auth(_username:GoString, _secret:GoString):Auth {
	return Go.pointer(new T_cramMD5Auth(_username, _secret)).value;
}

/**
	// Dial returns a new Client connected to an SMTP server at addr.
	// The addr must include a port, as in "mail.example.com:smtp".
**/
function dial(_addr:GoString):{var _0:Pointer<Client>; var _1:Error;} {
	var __tmp__ = stdgo.net.Net.dial("tcp", _addr),
		_conn:stdgo.net.Net.Conn = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Client>().nil(), _1: _err};
	};
	var __tmp__ = stdgo.net.Net.splitHostPort(_addr),
		_host:GoString = __tmp__._0,
		_:GoString = __tmp__._1,
		_:stdgo.Error = __tmp__._2;
	return newClient(_conn, _host);
}

/**
	// NewClient returns a new Client using an existing connection and host as a
	// server name to be used when authenticating.
**/
function newClient(_conn:stdgo.net.Net.Conn, _host:GoString):{var _0:Pointer<Client>; var _1:Error;} {
	var _text:Pointer<stdgo.net.textproto.Textproto.Conn> = stdgo.net.textproto.Textproto.newConn(_conn);
	var __tmp__ = _text.value.readResponse(((220 : GoInt))),
		_:GoInt = __tmp__._0,
		_:GoString = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		_text.value.close();
		return {_0: new Pointer<Client>().nil(), _1: _err};
	};
	var _c:Pointer<Client> = Go.pointer((({
		text: _text,
		_conn: _conn,
		_serverName: _host,
		_localName: "localhost",
		_tls: false,
		_ext: new GoMap<GoString,
			GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(),
		_auth: new Slice<GoString>().nil(),
		_didHello: false,
		_helloError: ((null : stdgo.Error))
	} : Client)));
	{
		var __tmp__ = try {
			{value: ((_conn.__underlying__().value : stdgo.crypto.tls.Tls.Conn)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.crypto.tls.Tls.Conn>().nil(), ok: false};
		};
		_c.value._tls = __tmp__.ok;
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// SendMail connects to the server at addr, switches to TLS if
	// possible, authenticates with the optional mechanism a if possible,
	// and then sends an email from address from, to addresses to, with
	// message msg.
	// The addr must include a port, as in "mail.example.com:smtp".
	//
	// The addresses in the to parameter are the SMTP RCPT addresses.
	//
	// The msg parameter should be an RFC 822-style email with headers
	// first, a blank line, and then the message body. The lines of msg
	// should be CRLF terminated. The msg headers should usually include
	// fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
	// messages is accomplished by including an email address in the to
	// parameter but not including it in the msg headers.
	//
	// The SendMail function and the net/smtp package are low-level
	// mechanisms and provide no support for DKIM signing, MIME
	// attachments (see the mime/multipart package), or other mail
	// functionality. Higher-level packages exist outside of the standard
	// library.
**/
function sendMail(_addr:GoString, _a:Auth, _from:GoString, _to:Slice<GoString>, _msg:Slice<GoByte>):Error {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{
		var _err:stdgo.Error = _validateLine(_from);
		if (_err != null) {
			return _err;
		};
	};
	try {
		for (_recp in _to) {
			{
				var _err:stdgo.Error = _validateLine(_recp);
				if (_err != null) {
					return _err;
				};
			};
		};
		var __tmp__ = dial(_addr),
			_c:Pointer<Client> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		deferstack.unshift(() -> _c.value.close());
		{
			_err = _c.value._hello();
			if (_err != null) {
				{
					for (defer in deferstack) {
						defer();
					};
					return _err;
				};
			};
		};
		{
			var __tmp__ = _c.value.extension("STARTTLS"),
				_ok:Bool = __tmp__._0,
				_:GoString = __tmp__._1;
			if (_ok) {
				var _config:Pointer<stdgo.crypto.tls.Tls.Config> = Go.pointer((({
					serverName: _c.value._serverName,
					rand: ((null : stdgo.io.Io.Reader)),
					time: null,
					certificates: new Slice<stdgo.crypto.tls.Tls.Certificate>().nil(),
					nameToCertificate: new GoMap<GoString,
						Pointer<stdgo.crypto.tls.Tls.Certificate>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.Certificate", [],
							stdgo.reflect.Reflect.GoType.invalidType))))).nil(),
					getCertificate: null,
					getClientCertificate: null,
					getConfigForClient: null,
					verifyPeerCertificate: null,
					verifyConnection: null,
					rootCAs: new Pointer<stdgo.crypto.x509.X509.CertPool>().nil(),
					nextProtos: new Slice<GoString>().nil(),
					clientAuth: new stdgo.crypto.tls.Tls.ClientAuthType(),
					clientCAs: new Pointer<stdgo.crypto.x509.X509.CertPool>().nil(),
					insecureSkipVerify: false,
					cipherSuites: new Slice<GoUInt16>().nil(),
					preferServerCipherSuites: false,
					sessionTicketsDisabled: false,
					sessionTicketKey: new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]),
					clientSessionCache: ((null : stdgo.crypto.tls.Tls.ClientSessionCache)),
					minVersion: 0,
					maxVersion: 0,
					curvePreferences: new Slice<stdgo.crypto.tls.Tls.CurveID>().nil(),
					dynamicRecordSizingDisabled: false,
					renegotiation: new stdgo.crypto.tls.Tls.RenegotiationSupport(),
					keyLogWriter: ((null : stdgo.io.Io.Writer)),
					_mutex: new stdgo.sync.Sync.RWMutex(),
					_sessionTicketKeys: new Slice<stdgo.crypto.tls.Tls.T_ticketKey>().nil(),
					_autoSessionTicketKeys: new Slice<stdgo.crypto.tls.Tls.T_ticketKey>().nil()
				} : stdgo.crypto.tls.Tls.Config)));
				if (_testHookStartTLS != null) {
					_testHookStartTLS(_config);
				};
				{
					_err = _c.value.startTLS(_config);
					if (_err != null) {
						{
							for (defer in deferstack) {
								defer();
							};
							return _err;
						};
					};
				};
			};
		};
		if (_a != null && _c.value._ext != null && !_c.value._ext.isNil()) {
			{
				var __tmp__ = _c.value._ext.exists("AUTH") ? {value: _c.value._ext["AUTH"], ok: true} : {value: _c.value._ext.defaultValue(), ok: false},
					_:GoString = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (!_ok) {
					{
						for (defer in deferstack) {
							defer();
						};
						return stdgo.errors.Errors.new_("smtp: server doesn\'t support AUTH");
					};
				};
			};
			{
				_err = _c.value.auth(_a);
				if (_err != null) {
					{
						for (defer in deferstack) {
							defer();
						};
						return _err;
					};
				};
			};
		};
		{
			_err = _c.value.mail(_from);
			if (_err != null) {
				{
					for (defer in deferstack) {
						defer();
					};
					return _err;
				};
			};
		};
		for (_addr in _to) {
			{
				_err = _c.value.rcpt(_addr);
				if (_err != null) {
					{
						for (defer in deferstack) {
							defer();
						};
						return _err;
					};
				};
			};
		};
		var __tmp__ = _c.value.data(),
			_w:stdgo.io.Io.WriteCloser = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			{
				for (defer in deferstack) {
					defer();
				};
				return _err;
			};
		};
		{
			var __tmp__ = _w.write(_msg);
			_err = __tmp__._1;
		};
		if (_err != null) {
			{
				for (defer in deferstack) {
					defer();
				};
				return _err;
			};
		};
		_err = _w.close();
		if (_err != null) {
			{
				for (defer in deferstack) {
					defer();
				};
				return _err;
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return _c.value.quit();
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return ((null : stdgo.Error));
		};
	};
}

/**
	// validateLine checks to see if a line has CR or LF as per RFC 5321
**/
function _validateLine(_line:GoString):Error {
	if (stdgo.strings.Strings.containsAny(_line, "\n\r")) {
		return stdgo.errors.Errors.new_("smtp: A line must not contain CR or LF");
	};
	return ((null : stdgo.Error));
}

class T_plainAuth_extension_fields {
	public function start(__tmp__, _server:Pointer<ServerInfo>):{var _0:GoString; var _1:Slice<GoByte>; var _2:Error;}
		return __tmp__.start(_server);

	public function next(__tmp__, _fromServer:Slice<GoByte>, _more:Bool):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.next(_fromServer, _more);
}

class T_cramMD5Auth_extension_fields {
	public function start(__tmp__, _server:Pointer<ServerInfo>):{var _0:GoString; var _1:Slice<GoByte>; var _2:Error;}
		return __tmp__.start(_server);

	public function next(__tmp__, _fromServer:Slice<GoByte>, _more:Bool):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.next(_fromServer, _more);
}

class Client_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();

	public function _hello(__tmp__):Error
		return __tmp__._hello();

	public function hello(__tmp__, _localName:GoString):Error
		return __tmp__.hello(_localName);

	public function _cmd(__tmp__, _expectCode:GoInt, _format:GoString, _args:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:GoString; var _2:Error;}
		return __tmp__._cmd(_expectCode, _format, _args);

	public function _helo(__tmp__):Error
		return __tmp__._helo();

	public function _ehlo(__tmp__):Error
		return __tmp__._ehlo();

	public function startTLS(__tmp__, _config:Pointer<stdgo.crypto.tls.Tls.Config>):Error
		return __tmp__.startTLS(_config);

	public function tlsconnectionState(__tmp__):{var _0:stdgo.crypto.tls.Tls.ConnectionState; var _1:Bool;}
		return __tmp__.tlsconnectionState();

	public function verify(__tmp__, _addr:GoString):Error
		return __tmp__.verify(_addr);

	public function auth(__tmp__, _a:Auth):Error
		return __tmp__.auth(_a);

	public function mail(__tmp__, _from:GoString):Error
		return __tmp__.mail(_from);

	public function rcpt(__tmp__, _to:GoString):Error
		return __tmp__.rcpt(_to);

	public function data(__tmp__):{var _0:stdgo.io.Io.WriteCloser; var _1:Error;}
		return __tmp__.data();

	public function extension(__tmp__, _ext:GoString):{var _0:Bool; var _1:GoString;}
		return __tmp__.extension(_ext);

	public function reset(__tmp__):Error
		return __tmp__.reset();

	public function noop(__tmp__):Error
		return __tmp__.noop();

	public function quit(__tmp__):Error
		return __tmp__.quit();
}

class T_dataCloser_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();
}
