package stdgo.net.url;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:local typedef T__interface_6 = StructType & {
	public function timeout():Bool;
};

@:local typedef T__interface_7 = StructType & {
	public function temporary():Bool;
};

@:structInit class T_error {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = try {
			{value: ((_e.value.err.__underlying__().value : T__interface_7)), ok: true};
		} catch (_) {
			{value: ((null : T__interface_7)), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.temporary();
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = try {
			{value: ((_e.value.err.__underlying__().value : T__interface_6)), ok: true};
		} catch (_) {
			{value: ((null : T__interface_6)), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.timeout();
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.fmt.Fmt.sprintf("%s %q: %s", Go.toInterface(_e.value.op), Go.toInterface(_e.value.url), Go.toInterface(_e.value.err));
	}

	public function unwrap():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.err;
	}

	public var op:GoString = (("" : GoString));
	public var url:GoString = (("" : GoString));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?op:GoString, ?url:GoString, ?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(op) + " " + Go.string(url) + " " + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_error(op, url, err);
	}

	public function __set__(__tmp__) {
		this.op = __tmp__.op;
		this.url = __tmp__.url;
		this.err = __tmp__.err;
		return this;
	}
}

@:named class T_encoding {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_encoding(__t__);
}

@:named class EscapeError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("invalid URL escape " : GoString)) + stdgo.strconv.Strconv.quote(_e.__t__);
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new EscapeError(__t__);
}

@:named class InvalidHostError {
	public function error():GoString {
		var _e = this.__copy__();
		return (("invalid character " : GoString)) + stdgo.strconv.Strconv.quote(_e.__t__) + ((" in host name" : GoString));
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new InvalidHostError(__t__);
}

@:structInit class URL {
	public function unmarshalBinary(_text:Slice<GoByte>):Error {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = Url.parse(((_text : GoString))),
			_u1:Pointer<URL> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		_u.value = _u1.value.__copy__();
		return ((null : stdgo.Error));
	}

	public function marshalBinary():{var _0:Slice<GoByte>; var _1:Error;} {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _text:Slice<GoByte> = new Slice<GoUInt8>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: ((_u.value.toString() : Slice<GoByte>)), _1: ((null : stdgo.Error))};
	}

	public function port():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _splitHostPort(_u.value.host),
			_:GoString = __tmp__._0,
			_port:GoString = __tmp__._1;
		return _port;
	}

	public function hostname():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _splitHostPort(_u.value.host),
			_host:GoString = __tmp__._0,
			_:GoString = __tmp__._1;
		return _host;
	}

	public function requestURI():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _result:GoString = _u.value.opaque;
		if (_result == (("" : GoString))) {
			_result = _u.value.escapedPath();
			if (_result == (("" : GoString))) {
				_result = "/";
			};
		} else {
			if (stdgo.strings.Strings.hasPrefix(_result, "//")) {
				_result = _u.value.scheme + ((":" : GoString)) + _result;
			};
		};
		if (_u.value.forceQuery || _u.value.rawQuery != (("" : GoString))) {
			_result = _result + ((("?" : GoString)) + _u.value.rawQuery);
		};
		return _result;
	}

	public function query():Values {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = parseQuery(_u.value.rawQuery),
			_v:Values = __tmp__._0,
			_:stdgo.Error = __tmp__._1;
		return _v.__copy__();
	}

	public function resolveReference(_ref:Pointer<URL>):Pointer<URL> {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _url:URL = _ref.value.__copy__();
		if (_ref.value.scheme == (("" : GoString))) {
			_url.scheme = _u.value.scheme;
		};
		if (_ref.value.scheme != (("" : GoString))
			|| _ref.value.host != (("" : GoString))
			|| _ref.value.user != null
			&& !_ref.value.user.isNil()) {
			_url._setPath(_resolvePath(_ref.value.escapedPath(), ""));
			return Go.pointer(_url);
		};
		if (_ref.value.opaque != (("" : GoString))) {
			_url.user = new Pointer<Userinfo>().nil();
			_url.host = "";
			_url.path = "";
			return Go.pointer(_url);
		};
		if (_ref.value.path == (("" : GoString)) && _ref.value.rawQuery == (("" : GoString))) {
			_url.rawQuery = _u.value.rawQuery;
			if (_ref.value.fragment == (("" : GoString))) {
				_url.fragment = _u.value.fragment;
				_url.rawFragment = _u.value.rawFragment;
			};
		};
		_url.host = _u.value.host;
		_url.user = _u.value.user;
		_url._setPath(_resolvePath(_u.value.escapedPath(), _ref.value.escapedPath()));
		return Go.pointer(_url);
	}

	public function parse(_ref:GoString):{var _0:Pointer<URL>; var _1:Error;} {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = Url.parse(_ref),
			_refURL:Pointer<URL> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<URL>().nil(), _1: _err};
		};
		return {_0: _u.value.resolveReference(_refURL), _1: ((null : stdgo.Error))};
	}

	public function isAbs():Bool {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _u.value.scheme != (("" : GoString));
	}

	public function redacted():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u == null || _u.isNil()) {
			return "";
		};
		var _ru:URL = _u.value.__copy__();
		{
			var __tmp__ = _ru.user.value.password(),
				_:GoString = __tmp__._0,
				_has:Bool = __tmp__._1;
			if (_has) {
				_ru.user = userPassword(_ru.user.value.username(), "xxxxx");
			};
		};
		return _ru.toString();
	}

	public function toString():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
		if (_u.value.scheme != (("" : GoString))) {
			_buf.writeString(_u.value.scheme);
			_buf.writeByte(((":".code : GoRune)));
		};
		if (_u.value.opaque != (("" : GoString))) {
			_buf.writeString(_u.value.opaque);
		} else {
			if (_u.value.scheme != (("" : GoString))
				|| _u.value.host != (("" : GoString))
				|| _u.value.user != null
				&& !_u.value.user.isNil()) {
				if (_u.value.host != (("" : GoString)) || _u.value.path != (("" : GoString)) || _u.value.user != null && !_u.value.user.isNil()) {
					_buf.writeString("//");
				};
				{
					var _ui:Pointer<Userinfo> = _u.value.user;
					if (_ui != null && !_ui.isNil()) {
						_buf.writeString(_ui.value.toString());
						_buf.writeByte((("@".code : GoRune)));
					};
				};
				{
					var _h:GoString = _u.value.host;
					if (_h != (("" : GoString))) {
						_buf.writeString(_escape(_h, _encodeHost));
					};
				};
			};
			var _path:GoString = _u.value.escapedPath();
			if (_path != (("" : GoString)) && _path[((0 : GoInt))] != (("/".code : GoRune)) && _u.value.host != (("" : GoString))) {
				_buf.writeByte((("/".code : GoRune)));
			};
			if (_buf.len() == ((0 : GoInt))) {
				{
					var _i:GoInt = stdgo.strings.Strings.indexByte(_path, ((":".code : GoRune)));
					if (_i > -((1 : GoUnTypedInt))
						&& stdgo.strings.Strings.indexByte(_path.__slice__(0, _i), (("/".code : GoRune))) == -((1 : GoUnTypedInt))) {
						_buf.writeString("./");
					};
				};
			};
			_buf.writeString(_path);
		};
		if (_u.value.forceQuery || _u.value.rawQuery != (("" : GoString))) {
			_buf.writeByte((("?".code : GoRune)));
			_buf.writeString(_u.value.rawQuery);
		};
		if (_u.value.fragment != (("" : GoString))) {
			_buf.writeByte((("#".code : GoRune)));
			_buf.writeString(_u.value.escapedFragment());
		};
		return _buf.toString();
	}

	public function escapedFragment():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u.value.rawFragment != (("" : GoString)) && _validEncoded(_u.value.rawFragment, _encodeFragment)) {
			var __tmp__ = _unescape(_u.value.rawFragment, _encodeFragment),
				_f:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null && _f == _u.value.fragment) {
				return _u.value.rawFragment;
			};
		};
		return _escape(_u.value.fragment, _encodeFragment);
	}

	public function _setFragment(_f:GoString):Error {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _unescape(_f, _encodeFragment),
			_frag:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		_u.value.fragment = _frag;
		{
			var _escf:GoString = _escape(_frag, _encodeFragment);
			if (_f == _escf) {
				_u.value.rawFragment = "";
			} else {
				_u.value.rawFragment = _f;
			};
		};
		return ((null : stdgo.Error));
	}

	public function escapedPath():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u.value.rawPath != (("" : GoString)) && _validEncoded(_u.value.rawPath, _encodePath)) {
			var __tmp__ = _unescape(_u.value.rawPath, _encodePath),
				_p:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null && _p == _u.value.path) {
				return _u.value.rawPath;
			};
		};
		if (_u.value.path == (("*" : GoString))) {
			return "*";
		};
		return _escape(_u.value.path, _encodePath);
	}

	public function _setPath(_p:GoString):Error {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _unescape(_p, _encodePath),
			_path:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
		_u.value.path = _path;
		{
			var _escp:GoString = _escape(_path, _encodePath);
			if (_p == _escp) {
				_u.value.rawPath = "";
			} else {
				_u.value.rawPath = _p;
			};
		};
		return ((null : stdgo.Error));
	}

	public var scheme:GoString = (("" : GoString));
	public var opaque:GoString = (("" : GoString));
	public var user:Pointer<Userinfo> = new Pointer<Userinfo>().nil();
	public var host:GoString = (("" : GoString));
	public var path:GoString = (("" : GoString));
	public var rawPath:GoString = (("" : GoString));
	public var forceQuery:Bool = false;
	public var rawQuery:GoString = (("" : GoString));
	public var fragment:GoString = (("" : GoString));
	public var rawFragment:GoString = (("" : GoString));

	public function new(?scheme:GoString, ?opaque:GoString, ?user:Pointer<Userinfo>, ?host:GoString, ?path:GoString, ?rawPath:GoString, ?forceQuery:Bool,
			?rawQuery:GoString, ?fragment:GoString, ?rawFragment:GoString)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new URL(scheme, opaque, user, host, path, rawPath, forceQuery, rawQuery, fragment, rawFragment);
	}

	public function __set__(__tmp__) {
		this.scheme = __tmp__.scheme;
		this.opaque = __tmp__.opaque;
		this.user = __tmp__.user;
		this.host = __tmp__.host;
		this.path = __tmp__.path;
		this.rawPath = __tmp__.rawPath;
		this.forceQuery = __tmp__.forceQuery;
		this.rawQuery = __tmp__.rawQuery;
		this.fragment = __tmp__.fragment;
		this.rawFragment = __tmp__.rawFragment;
		return this;
	}
}

@:structInit class Userinfo {
	public function toString():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u == null || _u.isNil()) {
			return "";
		};
		var _s:GoString = _escape(_u.value._username, _encodeUserPassword);
		if (_u.value._passwordSet) {
			_s = _s + (((":" : GoString)) + _escape(_u.value._password, _encodeUserPassword));
		};
		return _s;
	}

	public function password():{var _0:GoString; var _1:Bool;} {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u == null || _u.isNil()) {
			return {_0: "", _1: false};
		};
		return {_0: _u.value._password, _1: _u.value._passwordSet};
	}

	public function username():GoString {
		var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_u == null || _u.isNil()) {
			return "";
		};
		return _u.value._username;
	}

	public var _username:GoString = (("" : GoString));
	public var _password:GoString = (("" : GoString));
	public var _passwordSet:Bool = false;

	public function new(?_username:GoString, ?_password:GoString, ?_passwordSet:Bool)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Userinfo(_username, _password, _passwordSet);
	}

	public function __set__(__tmp__) {
		this._username = __tmp__._username;
		this._password = __tmp__._password;
		this._passwordSet = __tmp__._passwordSet;
		return this;
	}
}

@:named class Values {
	public function encode():GoString {
		var _v = this.__copy__();
		if (_v.__t__ == null || _v.__t__.isNil()) {
			return "";
		};
		var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
		var _keys:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))])
			.setCap((((_v.__t__ == null ? 0 : _v.__t__.length) : GoInt)).toBasic());
		{
			var _k;
			for (_obj in _v.__t__.keyValueIterator()) {
				_k = _obj.key;
				_keys = _keys.__append__(_k);
			};
		};
		stdgo.sort.Sort.strings(_keys);
		for (_k in _keys) {
			var _vs:Slice<GoString> = _v.__t__[_k];
			var _keyEscaped:GoString = queryEscape(_k);
			for (_v in _vs) {
				if (_buf.len() > ((0 : GoInt))) {
					_buf.writeByte((("&".code : GoRune)));
				};
				_buf.writeString(_keyEscaped);
				_buf.writeByte((("=".code : GoRune)));
				_buf.writeString(queryEscape(_v));
			};
		};
		return _buf.toString();
	}

	public function has(_key:GoString):Bool {
		var _v = this.__copy__();
		var __tmp__ = _v.exists(_key) ? {value: _v[_key], ok: true} : {value: _v.defaultValue(), ok: false},
			_:Slice<GoString> = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		return _ok;
	}

	public function del(_key:GoString):Void {
		var _v = this.__copy__();
		_v.remove(_key);
	}

	public function add(_key:GoString, _value:GoString):Void {
		var _v = this.__copy__();
		_v.__t__[_key] = _v.__t__[_key].__append__(_value);
	}

	public function set(_key:GoString, _value:GoString):Void {
		var _v = this.__copy__();
		_v.__t__[_key] = new Slice<GoString>(_value);
	}

	public function get(_key:GoString):GoString {
		var _v = this.__copy__();
		if (_v.__t__ == null || _v.__t__.isNil()) {
			return "";
		};
		var _vs:Slice<GoString> = _v.__t__[_key];
		if (_vs.length == ((0 : GoInt))) {
			return "";
		};
		return _vs[((0 : GoInt))];
	}

	public var __t__:GoMap<GoString, Slice<GoString>>;

	public function new(?t:GoMap<GoString, Slice<GoString>>) {
		__t__ = t == null ? new GoMap<GoString,
			Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Values(__t__);
}

final _encodeQueryComponent:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (5 : GoUnTypedInt));
final _encodeZone:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (3 : GoUnTypedInt));
final _encodeHost:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (2 : GoUnTypedInt));
final _encodePath:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (0 : GoUnTypedInt));
final _encodePathSegment:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (1 : GoUnTypedInt));
final _encodeUserPassword:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (4 : GoUnTypedInt));
final _upperhex:GoString = "0123456789ABCDEF";
final _encodeFragment:T_encoding = new T_encoding(((1 : GoUnTypedInt)) + (6 : GoUnTypedInt));

function _ishex(_c:GoByte):Bool {
	if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
		return true;
	} else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
		return true;
	} else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
		return true;
	};
	return false;
}

function _unhex(_c:GoByte):GoByte {
	if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
		return _c - (("0".code : GoRune));
	} else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
		return _c - (("a".code : GoRune)) + ((10 : GoUInt8));
	} else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
		return _c - (("A".code : GoRune)) + ((10 : GoUInt8));
	};
	return ((0 : GoUInt8));
}

/**
	// Return true if the specified character should be escaped when
	// appearing in a URL string, according to RFC 3986.
	//
	// Please be informed that for now shouldEscape does not check all
	// reserved characters correctly. See golang.org/issue/5684.
**/
function _shouldEscape(_c:GoByte, _mode:T_encoding):Bool {
	if ((("a".code : GoRune)) <= _c
		&& _c <= (("z".code : GoRune))
		|| (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)) || (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
		return false;
	};
	if (_mode.__t__ == _encodeHost.__t__ || _mode.__t__ == _encodeZone.__t__) {
		if (_c == (("!".code : GoRune)) || _c == (("$".code : GoRune)) || _c == (("&".code : GoRune)) || _c == (("\'".code : GoRune))
			|| _c == (("(".code : GoRune)) || _c == ((")".code : GoRune)) || _c == (("*".code : GoRune)) || _c == (("+".code : GoRune))
			|| _c == ((",".code : GoRune)) || _c == ((";".code : GoRune)) || _c == (("=".code : GoRune)) || _c == ((":".code : GoRune))
			|| _c == (("[".code : GoRune)) || _c == (("]".code : GoRune)) || _c == (("<".code : GoRune)) || _c == ((">".code : GoRune))
			|| _c == (("\"".code : GoRune))) {
			return false;
		};
	};
	if (_c == (("-".code : GoRune)) || _c == (("_".code : GoRune)) || _c == ((".".code : GoRune)) || _c == (("~".code : GoRune))) {
		return false;
	} else if (_c == (("$".code : GoRune)) || _c == (("&".code : GoRune)) || _c == (("+".code : GoRune)) || _c == ((",".code : GoRune))
		|| _c == (("/".code : GoRune)) || _c == ((":".code : GoRune)) || _c == ((";".code : GoRune)) || _c == (("=".code : GoRune))
		|| _c == (("?".code : GoRune)) || _c == (("@".code : GoRune))) {
		if (_mode.__t__ == _encodePath.__t__) {
			return _c == (("?".code : GoRune));
		} else if (_mode.__t__ == _encodePathSegment.__t__) {
			return _c == (("/".code : GoRune)) || _c == ((";".code : GoRune)) || _c == ((",".code : GoRune)) || _c == (("?".code : GoRune));
		} else if (_mode.__t__ == _encodeUserPassword.__t__) {
			return _c == (("@".code : GoRune)) || _c == (("/".code : GoRune)) || _c == (("?".code : GoRune)) || _c == ((":".code : GoRune));
		} else if (_mode.__t__ == _encodeQueryComponent.__t__) {
			return true;
		} else if (_mode.__t__ == _encodeFragment.__t__) {
			return false;
		};
	};
	if (_mode.__t__ == _encodeFragment.__t__) {
		if (_c == (("!".code : GoRune)) || _c == (("(".code : GoRune)) || _c == ((")".code : GoRune)) || _c == (("*".code : GoRune))) {
			return false;
		};
	};
	return true;
}

/**
	// QueryUnescape does the inverse transformation of QueryEscape,
	// converting each 3-byte encoded substring of the form "%AB" into the
	// hex-decoded byte 0xAB.
	// It returns an error if any % is not followed by two hexadecimal
	// digits.
**/
function queryUnescape(_s:GoString):{var _0:GoString; var _1:Error;} {
	return _unescape(_s, _encodeQueryComponent);
}

/**
	// PathUnescape does the inverse transformation of PathEscape,
	// converting each 3-byte encoded substring of the form "%AB" into the
	// hex-decoded byte 0xAB. It returns an error if any % is not followed
	// by two hexadecimal digits.
	//
	// PathUnescape is identical to QueryUnescape except that it does not
	// unescape '+' to ' ' (space).
**/
function pathUnescape(_s:GoString):{var _0:GoString; var _1:Error;} {
	return _unescape(_s, _encodePathSegment);
}

/**
	// unescape unescapes a string; the mode specifies
	// which section of the URL string is being unescaped.
**/
function _unescape(_s:GoString, _mode:T_encoding):{var _0:GoString; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt));
	var _hasPlus:Bool = false;
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			if (_s[_i] == (("%".code : GoRune))) {
				_n++;
				if (_i + ((2 : GoInt)) >= _s.length || !_ishex(_s[_i + ((1 : GoInt))]) || !_ishex(_s[_i + ((2 : GoInt))])) {
					_s = _s.__slice__(_i);
					if (_s.length > ((3 : GoInt))) {
						_s = _s.__slice__(0, ((3 : GoInt)));
					};
					return {_0: "", _1: new EscapeError(_s)};
				};
				if (_mode.__t__ == _encodeHost.__t__
					&& _unhex(_s[_i + ((1 : GoInt))]) < ((8 : GoUInt8))
					&& _s.__slice__(_i, _i + ((3 : GoInt))) != (("%25" : GoString))) {
					return {_0: "", _1: new EscapeError(_s.__slice__(_i, _i + ((3 : GoInt))))};
				};
				if (_mode.__t__ == _encodeZone.__t__) {
					var _v:GoUInt8 = (_unhex(_s[_i + ((1 : GoInt))]) << ((4 : GoUnTypedInt))) | _unhex(_s[_i + ((2 : GoInt))]);
					if (_s.__slice__(_i, _i + ((3 : GoInt))) != (("%25" : GoString))
						&& _v != ((" ".code : GoRune))
						&& _shouldEscape(_v, _encodeHost)) {
						return {_0: "", _1: new EscapeError(_s.__slice__(_i, _i + ((3 : GoInt))))};
					};
				};
				_i = _i + (((3 : GoInt)));
			} else if (_s[_i] == (("+".code : GoRune))) {
				_hasPlus = _mode.__t__ == _encodeQueryComponent.__t__;
				_i++;
			} else {
				if ((_mode.__t__ == _encodeHost.__t__ || _mode.__t__ == _encodeZone.__t__)
					&& _s[_i] < ((128 : GoUInt8))
					&& _shouldEscape(_s[_i], _mode)) {
					return {_0: "", _1: new InvalidHostError(_s.__slice__(_i, _i + ((1 : GoInt))))};
				};
				_i++;
			};
		};
	};
	if (_n == ((0 : GoInt)) && !_hasPlus) {
		return {_0: _s, _1: ((null : stdgo.Error))};
	};
	var _t:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
	_t.grow(_s.length - ((2 : GoInt)) * _n);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == (("%".code : GoRune))) {
				_t.writeByte((_unhex(_s[_i + ((1 : GoInt))]) << ((4 : GoUnTypedInt))) | _unhex(_s[_i + ((2 : GoInt))]));
				_i = _i + (((2 : GoInt)));
			} else if (_s[_i] == (("+".code : GoRune))) {
				if (_mode.__t__ == _encodeQueryComponent.__t__) {
					_t.writeByte(((" ".code : GoRune)));
				} else {
					_t.writeByte((("+".code : GoRune)));
				};
			} else {
				_t.writeByte(_s[_i]);
			};
		});
	};
	return {_0: _t.toString(), _1: ((null : stdgo.Error))};
}

/**
	// QueryEscape escapes the string so it can be safely placed
	// inside a URL query.
**/
function queryEscape(_s:GoString):GoString {
	return _escape(_s, _encodeQueryComponent);
}

/**
	// PathEscape escapes the string so it can be safely placed inside a URL path segment,
	// replacing special characters (including /) with %XX sequences as needed.
**/
function pathEscape(_s:GoString):GoString {
	return _escape(_s, _encodePathSegment);
}

function _escape(_s:GoString, _mode:T_encoding):GoString {
	var _spaceCount:GoInt = ((0 : GoInt)), _hexCount:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_shouldEscape(_c, _mode)) {
				if (_c == ((" ".code : GoRune)) && _mode.__t__ == _encodeQueryComponent.__t__) {
					_spaceCount++;
				} else {
					_hexCount++;
				};
			};
		});
	};
	if (_spaceCount == ((0 : GoInt)) && _hexCount == ((0 : GoInt))) {
		return _s;
	};
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...64) ((0 : GoUInt8))]);
	var _t:Slice<GoByte> = new Slice<GoUInt8>().nil();
	var _required:GoInt = _s.length + ((2 : GoInt)) * _hexCount;
	if (_required <= _buf.length) {
		_t = _buf.__slice__(0, _required);
	} else {
		_t = new Slice<GoUInt8>(...[for (i in 0...((_required : GoInt)).toBasic()) ((0 : GoUInt8))]);
	};
	if (_hexCount == ((0 : GoInt))) {
		Go.copy(_t, _s);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _s.length, _i++, {
				if (_s[_i] == ((" ".code : GoRune))) {
					_t[_i] = (("+".code : GoRune));
				};
			});
		};
		return ((_t : GoString));
	};
	var _j:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			{
				var _c:GoUInt8 = _s[_i];
				if (_c == ((" ".code : GoRune)) && _mode.__t__ == _encodeQueryComponent.__t__) {
					_t[_j] = (("+".code : GoRune));
					_j++;
				} else if (_shouldEscape(_c, _mode)) {
					_t[_j] = (("%".code : GoRune));
					_t[_j + ((1 : GoInt))] = _upperhex[(_c >> ((4 : GoUnTypedInt)))];
					_t[_j + ((2 : GoInt))] = _upperhex[_c & ((15 : GoUInt8))];
					_j = _j + (((3 : GoInt)));
				} else {
					_t[_j] = _s[_i];
					_j++;
				};
			};
		});
	};
	return ((_t : GoString));
}

/**
	// User returns a Userinfo containing the provided username
	// and no password set.
**/
function user(_username:GoString):Pointer<Userinfo> {
	return Go.pointer(new Userinfo(_username, "", false));
}

/**
	// UserPassword returns a Userinfo containing the provided username
	// and password.
	//
	// This functionality should only be used with legacy web sites.
	// RFC 2396 warns that interpreting Userinfo this way
	// ``is NOT RECOMMENDED, because the passing of authentication
	// information in clear text (such as URI) has proven to be a
	// security risk in almost every case where it has been used.''
**/
function userPassword(_username:GoString, _password:GoString):Pointer<Userinfo> {
	return Go.pointer(new Userinfo(_username, _password, true));
}

/**
	// Maybe rawURL is of the form scheme:path.
	// (Scheme must be [a-zA-Z][a-zA-Z0-9+-.]*)
	// If so, return scheme, path; else return "", rawURL.
**/
function _getScheme(_rawURL:GoString):{var _0:GoString; var _1:GoString; var _2:Error;} {
	var _scheme:GoString = (("" : GoString)),
		_path:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _rawURL.length, _i++, {
			var _c:GoUInt8 = _rawURL[_i];
			if ((("a".code : GoRune)) <= _c
				&& _c <= (("z".code : GoRune))
				|| (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {} else if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))
				|| _c == (("+".code : GoRune)) || _c == (("-".code : GoRune)) || _c == ((".".code : GoRune))) {
				if (_i == ((0 : GoInt))) {
					return {_0: "", _1: _rawURL, _2: ((null : stdgo.Error))};
				};
			} else if (_c == ((":".code : GoRune))) {
				if (_i == ((0 : GoInt))) {
					return {_0: "", _1: "", _2: stdgo.errors.Errors.new_("missing protocol scheme")};
				};
				return {_0: _rawURL.__slice__(0, _i), _1: _rawURL.__slice__(_i + ((1 : GoInt))), _2: ((null : stdgo.Error))};
			} else {
				return {_0: "", _1: _rawURL, _2: ((null : stdgo.Error))};
			};
		});
	};
	return {_0: "", _1: _rawURL, _2: ((null : stdgo.Error))};
}

/**
	// split slices s into two substrings separated by the first occurrence of
	// sep. If cutc is true then sep is excluded from the second substring.
	// If sep does not occur in s then s and the empty string is returned.
**/
function _split(_s:GoString, _sep:GoByte, _cutc:Bool):{var _0:GoString; var _1:GoString;} {
	var _i:GoInt = stdgo.strings.Strings.indexByte(_s, _sep);
	if (_i < ((0 : GoInt))) {
		return {_0: _s, _1: ""};
	};
	if (_cutc) {
		return {_0: _s.__slice__(0, _i), _1: _s.__slice__(_i + ((1 : GoInt)))};
	};
	return {_0: _s.__slice__(0, _i), _1: _s.__slice__(_i)};
}

/**
	// Parse parses a raw url into a URL structure.
	//
	// The url may be relative (a path, without a host) or absolute
	// (starting with a scheme). Trying to parse a hostname and path
	// without a scheme is invalid but may not necessarily return an
	// error, due to parsing ambiguities.
**/
function parse(_rawURL:GoString):{var _0:Pointer<URL>; var _1:Error;} {
	var __tmp__ = _split(_rawURL, (("#".code : GoRune)), true),
		_u:GoString = __tmp__._0,
		_frag:GoString = __tmp__._1;
	var __tmp__ = _parse(_u, false),
		_url:Pointer<URL> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<URL>().nil(), _1: Go.pointer(new T_error("parse", _u, _err)).value};
	};
	if (_frag == (("" : GoString))) {
		return {_0: _url, _1: ((null : stdgo.Error))};
	};
	{
		_err = _url.value._setFragment(_frag);
		if (_err != null) {
			return {_0: new Pointer<URL>().nil(), _1: Go.pointer(new T_error("parse", _rawURL, _err)).value};
		};
	};
	return {_0: _url, _1: ((null : stdgo.Error))};
}

/**
	// ParseRequestURI parses a raw url into a URL structure. It assumes that
	// url was received in an HTTP request, so the url is interpreted
	// only as an absolute URI or an absolute path.
	// The string url is assumed not to have a #fragment suffix.
	// (Web browsers strip #fragment before sending the URL to a web server.)
**/
function parseRequestURI(_rawURL:GoString):{var _0:Pointer<URL>; var _1:Error;} {
	var __tmp__ = _parse(_rawURL, true),
		_url:Pointer<URL> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<URL>().nil(), _1: Go.pointer(new T_error("parse", _rawURL, _err)).value};
	};
	return {_0: _url, _1: ((null : stdgo.Error))};
}

/**
	// parse parses a URL from a string in one of two contexts. If
	// viaRequest is true, the URL is assumed to have arrived via an HTTP request,
	// in which case only absolute URLs or path-absolute relative URLs are allowed.
	// If viaRequest is false, all forms of relative URLs are allowed.
**/
function _parse(_rawURL:GoString, _viaRequest:Bool):{var _0:Pointer<URL>; var _1:Error;} {
	var _rest:GoString = (("" : GoString));
	var _err:Error = ((null : stdgo.Error));
	if (_stringContainsCTLByte(_rawURL)) {
		return {_0: new Pointer<URL>().nil(), _1: stdgo.errors.Errors.new_("net/url: invalid control character in URL")};
	};
	if (_rawURL == (("" : GoString)) && _viaRequest) {
		return {_0: new Pointer<URL>().nil(), _1: stdgo.errors.Errors.new_("empty url")};
	};
	var _url:Pointer<URL> = Go.pointer(new URL());
	if (_rawURL == (("*" : GoString))) {
		_url.value.path = "*";
		return {_0: _url, _1: ((null : stdgo.Error))};
	};
	{
		{
			var __tmp__ = _getScheme(_rawURL);
			_url.value.scheme = __tmp__._0;
			_rest = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: new Pointer<URL>().nil(), _1: _err};
		};
	};
	_url.value.scheme = stdgo.strings.Strings.toLower(_url.value.scheme);
	if (stdgo.strings.Strings.hasSuffix(_rest, "?") && stdgo.strings.Strings.count(_rest, "?") == ((1 : GoInt))) {
		_url.value.forceQuery = true;
		_rest = _rest.__slice__(0, _rest.length - ((1 : GoInt)));
	} else {
		{
			var __tmp__ = _split(_rest, (("?".code : GoRune)), true);
			_rest = __tmp__._0;
			_url.value.rawQuery = __tmp__._1;
		};
	};
	if (!stdgo.strings.Strings.hasPrefix(_rest, "/")) {
		if (_url.value.scheme != (("" : GoString))) {
			_url.value.opaque = _rest;
			return {_0: _url, _1: ((null : stdgo.Error))};
		};
		if (_viaRequest) {
			return {_0: new Pointer<URL>().nil(), _1: stdgo.errors.Errors.new_("invalid URI for request")};
		};
		var _colon:GoInt = stdgo.strings.Strings.index(_rest, ":");
		var _slash:GoInt = stdgo.strings.Strings.index(_rest, "/");
		if (_colon >= ((0 : GoInt)) && (_slash < ((0 : GoInt)) || _colon < _slash)) {
			return {_0: new Pointer<URL>().nil(), _1: stdgo.errors.Errors.new_("first path segment in URL cannot contain colon")};
		};
	};
	if ((_url.value.scheme != (("" : GoString)) || !_viaRequest && !stdgo.strings.Strings.hasPrefix(_rest, "///"))
		&& stdgo.strings.Strings.hasPrefix(_rest, "//")) {
		var _authority:GoString = (("" : GoString));
		{
			var __tmp__ = _split(_rest.__slice__(((2 : GoInt))), (("/".code : GoRune)), false);
			_authority = __tmp__._0;
			_rest = __tmp__._1;
		};
		{
			var __tmp__ = _parseAuthority(_authority);
			_url.value.user = __tmp__._0;
			_url.value.host = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: new Pointer<URL>().nil(), _1: _err};
		};
	};
	{
		var _err:stdgo.Error = _url.value._setPath(_rest);
		if (_err != null) {
			return {_0: new Pointer<URL>().nil(), _1: _err};
		};
	};
	return {_0: _url, _1: ((null : stdgo.Error))};
}

function _parseAuthority(_authority:GoString):{var _0:Pointer<Userinfo>; var _1:GoString; var _2:Error;} {
	var _user:Pointer<Userinfo> = new Pointer<Userinfo>().nil(),
		_host:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	var _i:GoInt = stdgo.strings.Strings.lastIndex(_authority, "@");
	if (_i < ((0 : GoInt))) {
		{
			var __tmp__ = _parseHost(_authority);
			_host = __tmp__._0;
			_err = __tmp__._1;
		};
	} else {
		{
			var __tmp__ = _parseHost(_authority.__slice__(_i + ((1 : GoInt))));
			_host = __tmp__._0;
			_err = __tmp__._1;
		};
	};
	if (_err != null) {
		return {_0: new Pointer<Userinfo>().nil(), _1: "", _2: _err};
	};
	if (_i < ((0 : GoInt))) {
		return {_0: new Pointer<Userinfo>().nil(), _1: _host, _2: ((null : stdgo.Error))};
	};
	var _userinfo:GoString = _authority.__slice__(0, _i);
	if (!_validUserinfo(_userinfo)) {
		return {_0: new Pointer<Userinfo>().nil(), _1: "", _2: stdgo.errors.Errors.new_("net/url: invalid userinfo")};
	};
	if (!stdgo.strings.Strings.contains(_userinfo, ":")) {
		{
			{
				var __tmp__ = _unescape(_userinfo, _encodeUserPassword);
				_userinfo = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<Userinfo>().nil(), _1: "", _2: _err};
			};
		};
		_user = user(_userinfo);
	} else {
		var __tmp__ = _split(_userinfo, ((":".code : GoRune)), true),
			_username:GoString = __tmp__._0,
			_password:GoString = __tmp__._1;
		{
			{
				var __tmp__ = _unescape(_username, _encodeUserPassword);
				_username = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<Userinfo>().nil(), _1: "", _2: _err};
			};
		};
		{
			{
				var __tmp__ = _unescape(_password, _encodeUserPassword);
				_password = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: new Pointer<Userinfo>().nil(), _1: "", _2: _err};
			};
		};
		_user = userPassword(_username, _password);
	};
	return {_0: _user, _1: _host, _2: ((null : stdgo.Error))};
}

/**
	// parseHost parses host as an authority without user
	// information. That is, as host[:port].
**/
function _parseHost(_host:GoString):{var _0:GoString; var _1:Error;} {
	if (stdgo.strings.Strings.hasPrefix(_host, "[")) {
		var _i:GoInt = stdgo.strings.Strings.lastIndex(_host, "]");
		if (_i < ((0 : GoInt))) {
			return {_0: "", _1: stdgo.errors.Errors.new_("missing \']\' in host")};
		};
		var _colonPort:GoString = _host.__slice__(_i + ((1 : GoInt)));
		if (!_validOptionalPort(_colonPort)) {
			return {_0: "", _1: stdgo.fmt.Fmt.errorf("invalid port %q after host", Go.toInterface(_colonPort))};
		};
		var _zone:GoInt = stdgo.strings.Strings.index(_host.__slice__(0, _i), "%25");
		if (_zone >= ((0 : GoInt))) {
			var __tmp__ = _unescape(_host.__slice__(0, _zone), _encodeHost),
				_host1:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: "", _1: _err};
			};
			var __tmp__ = _unescape(_host.__slice__(_zone, _i), _encodeZone),
				_host2:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: "", _1: _err};
			};
			var __tmp__ = _unescape(_host.__slice__(_i), _encodeHost),
				_host3:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: "", _1: _err};
			};
			return {_0: _host1 + _host2 + _host3, _1: ((null : stdgo.Error))};
		};
	} else {
		var _i:GoInt = stdgo.strings.Strings.lastIndex(_host, ":");
		if (_i != -((1 : GoUnTypedInt))) {
			var _colonPort:GoString = _host.__slice__(_i);
			if (!_validOptionalPort(_colonPort)) {
				return {_0: "", _1: stdgo.fmt.Fmt.errorf("invalid port %q after host", Go.toInterface(_colonPort))};
			};
		};
	};
	var _err:Error = ((null : stdgo.Error));
	{
		{
			var __tmp__ = _unescape(_host, _encodeHost);
			_host = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: "", _1: _err};
		};
	};
	return {_0: _host, _1: ((null : stdgo.Error))};
}

/**
	// validEncoded reports whether s is a valid encoded path or fragment,
	// according to mode.
	// It must not contain any bytes that require escaping during encoding.
**/
function _validEncoded(_s:GoString, _mode:T_encoding):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == (("!".code : GoRune)) || _s[_i] == (("$".code : GoRune)) || _s[_i] == (("&".code : GoRune)) || _s[_i] == (("\'".code : GoRune))
				|| _s[_i] == (("(".code : GoRune)) || _s[_i] == ((")".code : GoRune)) || _s[_i] == (("*".code : GoRune)) || _s[_i] == (("+".code : GoRune))
				|| _s[_i] == ((",".code : GoRune)) || _s[_i] == ((";".code : GoRune)) || _s[_i] == (("=".code : GoRune)) || _s[_i] == ((":".code : GoRune))
				|| _s[_i] == (("@".code : GoRune))) {} else if (_s[_i] == (("[".code : GoRune)) || _s[_i] == (("]".code : GoRune))) {} else
				if (_s[_i] == (("%".code : GoRune))) {} else {
				if (_shouldEscape(_s[_i], _mode)) {
					return false;
				};
			};
		});
	};
	return true;
}

/**
	// validOptionalPort reports whether port is either an empty string
	// or matches /^:\d*$/
**/
function _validOptionalPort(_port:GoString):Bool {
	if (_port == (("" : GoString))) {
		return true;
	};
	if (_port[((0 : GoInt))] != ((":".code : GoRune))) {
		return false;
	};
	for (_b in _port.__slice__(((1 : GoInt)))) {
		if (_b < (("0".code : GoRune)) || _b > (("9".code : GoRune))) {
			return false;
		};
	};
	return true;
}

/**
	// ParseQuery parses the URL-encoded query string and returns
	// a map listing the values specified for each key.
	// ParseQuery always returns a non-nil map containing all the
	// valid query parameters found; err describes the first decoding error
	// encountered, if any.
	//
	// Query is expected to be a list of key=value settings separated by ampersands.
	// A setting without an equals sign is interpreted as a key set to an empty
	// value.
	// Settings containing a non-URL-encoded semicolon are considered invalid.
**/
function parseQuery(_query:GoString):{var _0:Values; var _1:Error;} {
	var _m:Values = new Values(new GoMap<GoString,
		Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
	var _err:stdgo.Error = _parseQuery(_m.__copy__(), _query);
	return {_0: _m.__copy__(), _1: _err};
}

function _parseQuery(_m:Values, _query:GoString):Error {
	var _err:Error = ((null : stdgo.Error));
	while (_query != (("" : GoString))) {
		var _key:GoString = _query;
		{
			var _i:GoInt = stdgo.strings.Strings.indexAny(_key, "&");
			if (_i >= ((0 : GoInt))) {
				{
					final __tmp__0 = _key.__slice__(0, _i);
					final __tmp__1 = _key.__slice__(_i + ((1 : GoInt)));
					_key = __tmp__0;
					_query = __tmp__1;
				};
			} else {
				_query = "";
			};
		};
		if (stdgo.strings.Strings.contains(_key, ";")) {
			_err = stdgo.fmt.Fmt.errorf("invalid semicolon separator in query");
			continue;
		};
		if (_key == (("" : GoString))) {
			continue;
		};
		var _value:GoString = "";
		{
			var _i:GoInt = stdgo.strings.Strings.index(_key, "=");
			if (_i >= ((0 : GoInt))) {
				{
					final __tmp__0 = _key.__slice__(0, _i);
					final __tmp__1 = _key.__slice__(_i + ((1 : GoInt)));
					_key = __tmp__0;
					_value = __tmp__1;
				};
			};
		};
		var __tmp__ = queryUnescape(_key),
			_key:GoString = __tmp__._0,
			_err1:stdgo.Error = __tmp__._1;
		if (_err1 != null) {
			if (_err == null) {
				_err = _err1;
			};
			continue;
		};
		{
			var __tmp__ = queryUnescape(_value);
			_value = __tmp__._0;
			_err1 = __tmp__._1;
		};
		if (_err1 != null) {
			if (_err == null) {
				_err = _err1;
			};
			continue;
		};
		_m.__t__[_key] = _m.__t__[_key].__append__(_value);
	};
	return _err;
}

/**
	// resolvePath applies special path segments from refs and applies
	// them to base, per RFC 3986.
**/
function _resolvePath(_base:GoString, _ref:GoString):GoString {
	var _full:GoString = (("" : GoString));
	if (_ref == (("" : GoString))) {
		_full = _base;
	} else if (_ref[((0 : GoInt))] != (("/".code : GoRune))) {
		var _i:GoInt = stdgo.strings.Strings.lastIndex(_base, "/");
		_full = _base.__slice__(0, _i + ((1 : GoInt))) + _ref;
	} else {
		_full = _ref;
	};
	if (_full == (("" : GoString))) {
		return "";
	};
	var _last:GoString = (("" : GoString)),
		_elem:GoString = (("" : GoString)),
		_i:GoInt = ((0 : GoInt)),
		_dst:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
	var _first:Bool = true;
	var _remaining:GoString = _full;
	_dst.writeByte((("/".code : GoRune)));
	while (_i >= ((0 : GoInt))) {
		_i = stdgo.strings.Strings.indexByte(_remaining, (("/".code : GoRune)));
		if (_i < ((0 : GoInt))) {
			{
				final __tmp__0 = _remaining;
				final __tmp__1 = _remaining;
				final __tmp__2 = "";
				_last = __tmp__0;
				_elem = __tmp__1;
				_remaining = __tmp__2;
			};
		} else {
			{
				final __tmp__0 = _remaining.__slice__(0, _i);
				final __tmp__1 = _remaining.__slice__(_i + ((1 : GoInt)));
				_elem = __tmp__0;
				_remaining = __tmp__1;
			};
		};
		if (_elem == (("." : GoString))) {
			_first = false;
			continue;
		};
		if (_elem == ((".." : GoString))) {
			var _str:GoString = _dst.toString().__slice__(((1 : GoInt)));
			var _index:GoInt = stdgo.strings.Strings.lastIndexByte(_str, (("/".code : GoRune)));
			_dst.reset();
			_dst.writeByte((("/".code : GoRune)));
			if (_index == -((1 : GoUnTypedInt))) {
				_first = true;
			} else {
				_dst.writeString(_str.__slice__(0, _index));
			};
		} else {
			if (!_first) {
				_dst.writeByte((("/".code : GoRune)));
			};
			_dst.writeString(_elem);
			_first = false;
		};
	};
	if (_last == (("." : GoString)) || _last == ((".." : GoString))) {
		_dst.writeByte((("/".code : GoRune)));
	};
	var _r:GoString = _dst.toString();
	if (_r.length > ((1 : GoInt)) && _r[((1 : GoInt))] == (("/".code : GoRune))) {
		_r = _r.__slice__(((1 : GoInt)));
	};
	return _r;
}

/**
	// splitHostPort separates host and port. If the port is not valid, it returns
	// the entire input as host, and it doesn't check the validity of the host.
	// Unlike net.SplitHostPort, but per RFC 3986, it requires ports to be numeric.
**/
function _splitHostPort(_hostPort:GoString):{var _0:GoString; var _1:GoString;} {
	var _host:GoString = (("" : GoString)), _port:GoString = (("" : GoString));
	_host = _hostPort;
	var _colon:GoInt = stdgo.strings.Strings.lastIndexByte(_host, ((":".code : GoRune)));
	if (_colon != -((1 : GoUnTypedInt)) && _validOptionalPort(_host.__slice__(_colon))) {
		{
			final __tmp__0 = _host.__slice__(0, _colon);
			final __tmp__1 = _host.__slice__(_colon + ((1 : GoInt)));
			_host = __tmp__0;
			_port = __tmp__1;
		};
	};
	if (stdgo.strings.Strings.hasPrefix(_host, "[") && stdgo.strings.Strings.hasSuffix(_host, "]")) {
		_host = _host.__slice__(((1 : GoInt)), _host.length - ((1 : GoInt)));
	};
	return {_0: _host, _1: _port};
}

/**
	// validUserinfo reports whether s is a valid userinfo string per RFC 3986
	// Section 3.2.1:
	//     userinfo    = *( unreserved / pct-encoded / sub-delims / ":" )
	//     unreserved  = ALPHA / DIGIT / "-" / "." / "_" / "~"
	//     sub-delims  = "!" / "$" / "&" / "'" / "(" / ")"
	//                   / "*" / "+" / "," / ";" / "="
	//
	// It doesn't validate pct-encoded. The caller does that via func unescape.
**/
function _validUserinfo(_s:GoString):Bool {
	for (_r in _s) {
		if ((("A".code : GoRune)) <= _r && _r <= (("Z".code : GoRune))) {
			continue;
		};
		if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {
			continue;
		};
		if ((("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune))) {
			continue;
		};
		if (_r == (("-".code : GoRune)) || _r == ((".".code : GoRune)) || _r == (("_".code : GoRune)) || _r == ((":".code : GoRune))
			|| _r == (("~".code : GoRune)) || _r == (("!".code : GoRune)) || _r == (("$".code : GoRune)) || _r == (("&".code : GoRune))
			|| _r == (("\'".code : GoRune)) || _r == (("(".code : GoRune)) || _r == ((")".code : GoRune)) || _r == (("*".code : GoRune))
			|| _r == (("+".code : GoRune)) || _r == ((",".code : GoRune)) || _r == ((";".code : GoRune)) || _r == (("=".code : GoRune))
			|| _r == (("%".code : GoRune)) || _r == (("@".code : GoRune))) {
			continue;
		} else {
			return false;
		};
	};
	return true;
}

/**
	// stringContainsCTLByte reports whether s contains any ASCII control character.
**/
function _stringContainsCTLByte(_s:GoString):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _b:GoUInt8 = _s[_i];
			if (_b < ((" ".code : GoRune)) || _b == ((127 : GoUInt8))) {
				return true;
			};
		});
	};
	return false;
}

class T_error_extension_fields {
	public function unwrap(__tmp__):Error
		return __tmp__.unwrap();

	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class EscapeError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class InvalidHostError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class URL_extension_fields {
	public function _setPath(__tmp__, _p:GoString):Error
		return __tmp__._setPath(_p);

	public function escapedPath(__tmp__):GoString
		return __tmp__.escapedPath();

	public function _setFragment(__tmp__, _f:GoString):Error
		return __tmp__._setFragment(_f);

	public function escapedFragment(__tmp__):GoString
		return __tmp__.escapedFragment();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function redacted(__tmp__):GoString
		return __tmp__.redacted();

	public function isAbs(__tmp__):Bool
		return __tmp__.isAbs();

	public function parse(__tmp__, _ref:GoString):{var _0:Pointer<URL>; var _1:Error;}
		return __tmp__.parse(_ref);

	public function resolveReference(__tmp__, _ref:Pointer<URL>):Pointer<URL>
		return __tmp__.resolveReference(_ref);

	public function query(__tmp__):Values
		return __tmp__.query();

	public function requestURI(__tmp__):GoString
		return __tmp__.requestURI();

	public function hostname(__tmp__):GoString
		return __tmp__.hostname();

	public function port(__tmp__):GoString
		return __tmp__.port();

	public function marshalBinary(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.marshalBinary();

	public function unmarshalBinary(__tmp__, _text:Slice<GoByte>):Error
		return __tmp__.unmarshalBinary(_text);
}

class Userinfo_extension_fields {
	public function username(__tmp__):GoString
		return __tmp__.username();

	public function password(__tmp__):{var _0:GoString; var _1:Bool;}
		return __tmp__.password();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class Values_extension_fields {
	public function get(__tmp__, _key:GoString):GoString
		return __tmp__.get(_key);

	public function set(__tmp__, _key:GoString, _value:GoString):Void
		__tmp__.set(_key, _value);

	public function add(__tmp__, _key:GoString, _value:GoString):Void
		__tmp__.add(_key, _value);

	public function del(__tmp__, _key:GoString):Void
		__tmp__.del(_key);

	public function has(__tmp__, _key:GoString):Bool
		return __tmp__.has(_key);

	public function encode(__tmp__):GoString
		return __tmp__.encode();
}
