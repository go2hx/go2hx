package stdgo.net.http.httputil;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef BufferPool = StructType & {
	public function get():Slice<GoByte>;
	public function put(_0:Slice<GoByte>):Void;
};

typedef T_writeFlusher = StructType & {
	> stdgo.io.Io.Writer,
	> stdgo.net.http.Http.Flusher,
};

@:structInit class T_dumpConn {
	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.Error));
	}

	public function setReadDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.Error));
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.Error));
	}

	public function remoteAddr():stdgo.net.Net.Addr {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.net.Net.Addr));
	}

	public function localAddr():stdgo.net.Net.Addr {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.net.Net.Addr));
	}

	public function close():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((null : stdgo.Error));
	}

	@:embedded
	public var writer:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	@:embedded
	public var reader:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));

	public function new(?writer:stdgo.io.Io.Writer, ?reader:stdgo.io.Io.Reader)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(writer) + " " + Go.string(reader) + "}";
	}

	public function read(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return reader.read(_0);

	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return writer.write(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dumpConn(writer, reader);
	}

	public function __set__(__tmp__) {
		this.writer = __tmp__.writer;
		this.reader = __tmp__.reader;
		return this;
	}
}

@:named class T_neverEnding {
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _b = this.__copy__();
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		{
			var _i;
			for (_obj in _p.keyValueIterator()) {
				_i = _obj.key;
				_p[_i] = _b.__t__;
			};
		};
		return {_0: _p.length, _1: ((null : stdgo.Error))};
	}

	public var __t__:GoUInt8;

	public function new(?t:GoUInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_neverEnding(__t__);
}

@:structInit class T_delegateReader {
	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_r.value._r == null) {
			var _ok:Bool = false;
			{
				{
					var __tmp__ = _r.value._c.smartGet();
					_r.value._r = __tmp__.value;
					_ok = __tmp__.ok;
				};
				if (!_ok) {
					return {_0: ((0 : GoInt)), _1: _r.value._err};
				};
			};
		};
		return _r.value._r.read(_p);
	}

	public var _c:Chan<stdgo.io.Io.Reader> = new Chan<stdgo.io.Io.Reader>(0, () -> ((null : stdgo.io.Io.Reader)), true);
	public var _err:stdgo.Error = ((null : stdgo.Error));
	public var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));

	public function new(?_c:Chan<stdgo.io.Io.Reader>, ?_err:stdgo.Error, ?_r:stdgo.io.Io.Reader)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_c) + " " + Go.string(_err) + " " + Go.string(_r) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_delegateReader(_c, _err, _r);
	}

	public function __set__(__tmp__) {
		this._c = __tmp__._c;
		this._err = __tmp__._err;
		this._r = __tmp__._r;
		return this;
	}
}

@:structInit class T_failureToReadBody {
	public function close():Error {
		return ((null : stdgo.Error));
	}

	public function read(_0:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		return {_0: ((0 : GoInt)), _1: _errNoBody};
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_failureToReadBody();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class ServerConn {
	public function write(_req:Pointer<stdgo.net.http.Http.Request>, _resp:Pointer<stdgo.net.http.Http.Response>):Error {
		var _sc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_sc.value._mu.lock();
		try {
			var __tmp__ = _sc.value._pipereq.exists(_req) ? {value: _sc.value._pipereq[_req], ok: true} : {value: _sc.value._pipereq.defaultValue(), ok: false},
				_id:GoUInt = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			_sc.value._pipereq.remove(_req);
			if (!_ok) {
				_sc.value._mu.unlock();
				return errPipeline.value;
			};
			_sc.value._mu.unlock();
			_sc.value._pipe.startResponse(_id);
			{
				var a0 = _id;
				deferstack.unshift(() -> _sc.value._pipe.endResponse(a0));
			};
			_sc.value._mu.lock();
			if (_sc.value._we != null) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return _sc.value._we;
				};
			};
			if (_sc.value._c == null) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return errClosed.value;
				};
			};
			var _c:stdgo.net.Net.Conn = _sc.value._c;
			if (_sc.value._nread <= _sc.value._nwritten) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return stdgo.errors.Errors.new_("persist server pipe count");
				};
			};
			if (_resp.value.close) {
				_sc.value._re = errPersistEOF.value;
			};
			_sc.value._mu.unlock();
			var _err:stdgo.Error = _resp.value.write(_c);
			_sc.value._mu.lock();
			deferstack.unshift(() -> _sc.value._mu.unlock());
			if (_err != null) {
				_sc.value._we = _err;
				{
					for (defer in deferstack) {
						defer();
					};
					return _err;
				};
			};
			_sc.value._nwritten++;
			{
				for (defer in deferstack) {
					defer();
				};
				return ((null : stdgo.Error));
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

	public function pending():GoInt {
		var _sc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_sc.value._mu.lock();
		try {
			deferstack.unshift(() -> _sc.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _sc.value._nread - _sc.value._nwritten;
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
				return ((0 : GoInt));
			};
		};
	}

	public function read():{var _0:Pointer<stdgo.net.http.Http.Request>; var _1:Error;} {
		var _sc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _req:Pointer<stdgo.net.http.Http.Request> = new Pointer<stdgo.net.http.Http.Request>().nil();
		var _err:Error = ((null : stdgo.Error));
		try {
			var _id:GoUInt = _sc.value._pipe.next();
			_sc.value._pipe.startRequest(_id);
			{
				deferstack.unshift(() -> {
					var a = function():Void {
						_sc.value._pipe.endRequest(_id);
						if (_req == null || _req.isNil()) {
							_sc.value._pipe.startResponse(_id);
							_sc.value._pipe.endResponse(_id);
						} else {
							_sc.value._mu.lock();
							_sc.value._pipereq[_req] = _id;
							_sc.value._mu.unlock();
						};
					};
					a();
				});
			};
			_sc.value._mu.lock();
			if (_sc.value._we != null) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: _sc.value._we};
				};
			};
			if (_sc.value._re != null) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: _sc.value._re};
				};
			};
			if (_sc.value._r == null || _sc.value._r.isNil()) {
				deferstack.unshift(() -> _sc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: _errClosed};
				};
			};
			var _r:Pointer<bufio.Bufio.Reader> = _sc.value._r;
			var _lastbody:stdgo.io.Io.ReadCloser = _sc.value._lastbody;
			_sc.value._lastbody = ((null : stdgo.io.Io.ReadCloser));
			_sc.value._mu.unlock();
			if (_lastbody != null) {
				_err = _lastbody.close();
				if (_err != null) {
					_sc.value._mu.lock();
					deferstack.unshift(() -> _sc.value._mu.unlock());
					_sc.value._re = _err;
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: _err};
					};
				};
			};
			{
				var __tmp__ = stdgo.net.http.Http.readRequest(_r);
				_req = __tmp__._0;
				_err = __tmp__._1;
			};
			_sc.value._mu.lock();
			deferstack.unshift(() -> _sc.value._mu.unlock());
			if (_err != null) {
				if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
					_sc.value._re = errPersistEOF.value;
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: _sc.value._re};
					};
				} else {
					_sc.value._re = _err;
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: _req, _1: _err};
					};
				};
			};
			_sc.value._lastbody = _req.value.body;
			_sc.value._nread++;
			if (_req.value.close) {
				_sc.value._re = errPersistEOF.value;
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _req, _1: _sc.value._re};
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _req, _1: _err};
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
				return {_0: new Pointer<stdgo.net.http.Http.Request>().nil(), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function close():Error {
		var _sc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _sc.value.hijack(),
			_c:stdgo.net.Net.Conn = __tmp__._0,
			_:Pointer<bufio.Bufio.Reader> = __tmp__._1;
		if (_c != null) {
			return _c.close();
		};
		return ((null : stdgo.Error));
	}

	public function hijack():{var _0:stdgo.net.Net.Conn; var _1:Pointer<bufio.Bufio.Reader>;} {
		var _sc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_sc.value._mu.lock();
		deferstack.unshift(() -> _sc.value._mu.unlock());
		try {
			var _c:stdgo.net.Net.Conn = _sc.value._c;
			var _r:Pointer<bufio.Bufio.Reader> = _sc.value._r;
			_sc.value._c = ((null : stdgo.net.Net.Conn));
			_sc.value._r = new Pointer<bufio.Bufio.Reader>().nil();
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _c, _1: _r};
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
				return {_0: ((null : stdgo.net.Net.Conn)), _1: new Pointer<bufio.Bufio.Reader>().nil()};
			};
		};
	}

	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _c:stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
	public var _r:Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
	public var _re:stdgo.Error = ((null : stdgo.Error));
	public var _we:stdgo.Error = ((null : stdgo.Error));
	public var _lastbody:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
	public var _nread:GoInt = ((0 : GoInt));
	public var _nwritten:GoInt = ((0 : GoInt));
	public var _pipereq:GoMap<Pointer<stdgo.net.http.Http.Request>, GoUInt> = new GoMap<Pointer<stdgo.net.http.Http.Request>,
		GoUInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request",
			[], stdgo.reflect.Reflect.GoType.structType([
		{
			name: "method",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "url",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "scheme",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "opaque",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "user",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_username",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "_password",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "_passwordSet",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							}
						])))
				},
				{
					name: "host",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "path",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "rawPath",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "forceQuery",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "rawQuery",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "fragment",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "rawFragment",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				}
			])))
		},
		{
			name: "proto",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "protoMajor",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "protoMinor",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "header",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
				stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
		},
		{
			name: "body",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
		},
		{
			name: "getBody",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "contentLength",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
		},
		{
			name: "transferEncoding",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
		},
		{
			name: "close",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
		},
		{
			name: "host",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "form",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
				stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
		},
		{
			name: "postForm",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "multipartForm",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.Form", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "value",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))
				},
				{
					name: "file",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.FileHeader",
									[], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "filename",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "header",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/textproto.MIMEHeader", [],
									stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
							},
							{
								name: "size",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "_content",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "_tmpfile",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							}
						])))))
				}
			])))
		},
		{
			name: "trailer",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "remoteAddr",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "requestURI",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "tls",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
				stdgo.reflect.Reflect.GoType.structType([
					{
						name: "version",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
					},
					{
						name: "handshakeComplete",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "didResume",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "cipherSuite",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
					},
					{
						name: "negotiatedProtocol",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(string_kind)
					},
					{
						name: "negotiatedProtocolIsMutual",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "serverName",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(string_kind)
					},
					{
						name: "peerCertificates",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
									[], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "raw",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawTBSCertificate",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubjectPublicKeyInfo",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawIssuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signature",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signatureAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKeyAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKey",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
							},
							{
								name: "version",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "serialNumber",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_neg",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "_abs",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("math/big.nat", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [],
													stdgo.reflect.Reflect.GoType.basic(uint_kind))))
										}
									])))
							},
							{
								name: "issuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "country",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organization",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organizationalUnit",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "locality",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "province",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "streetAddress",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "postalCode",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "commonName",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "names",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
														[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "type",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
											}
										])))
									},
									{
										name: "extraNames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
														[], stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))
							},
							{
								name: "subject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "notBefore",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wall",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
									},
									{
										name: "_ext",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_loc",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_name",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_zone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_tx",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_extend",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_cacheStart",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheEnd",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheZone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
														stdgo.reflect.Reflect.GoType.invalidType))
												}
											])))
									}
								]))
							},
							{
								name: "notAfter",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "keyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "extensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "id",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
												stdgo.reflect.Reflect.GoType.invalidType)
										},
										{
											name: "critical",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "value",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										}
									])))
							},
							{
								name: "extraExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "unhandledCriticalExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "extKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [],
									stdgo.reflect.Reflect.GoType.basic(int_kind)))
							},
							{
								name: "unknownExtKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "basicConstraintsValid",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "isCA",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "maxPathLen",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "maxPathLenZero",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "subjectKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "authorityKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "ocspserver",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "issuingCertificateURL",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "dnsnames",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "emailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "ipaddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [],
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
							},
							{
								name: "uris",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL",
												[], stdgo.reflect.Reflect.GoType.invalidType)))
							},
							{
								name: "permittedDNSDomainsCritical",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "permittedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
												[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "ip",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "mask",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net.IPMask", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									}
								]))))
							},
							{
								name: "excludedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
												[], stdgo.reflect.Reflect.GoType.invalidType)))
							},
							{
								name: "permittedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "crldistributionPoints",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "policyIdentifiers",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							}
						]))))
					},
					{
						name: "verifiedChains",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
									[], stdgo.reflect.Reflect.GoType.invalidType))))
					},
					{
						name: "signedCertificateTimestamps",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
					},
					{
						name: "ocspresponse",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "tlsunique",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "_ekm",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
					}
				])))
		},
		{
			name: "cancel",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.chanType(2,
				stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
		},
		{
			name: "response",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "status",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "statusCode",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "proto",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "protoMajor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "protoMinor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "header",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "body",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "contentLength",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
				},
				{
					name: "transferEncoding",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
				},
				{
					name: "close",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "uncompressed",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "trailer",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "request",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
						stdgo.reflect.Reflect.GoType.invalidType))
				},
				{
					name: "tls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
						stdgo.reflect.Reflect.GoType.invalidType))
				}
			])))
		},
		{
			name: "_ctx",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("context.Context", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
		}
	]))), stdgo.reflect.Reflect.GoType.basic(uint_kind)))).nil();
	public var _pipe:stdgo.net.textproto.Textproto.Pipeline = new stdgo.net.textproto.Textproto.Pipeline();

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_c:stdgo.net.Net.Conn, ?_r:Pointer<bufio.Bufio.Reader>, ?_re:stdgo.Error, ?_we:stdgo.Error,
			?_lastbody:stdgo.io.Io.ReadCloser, ?_nread:GoInt, ?_nwritten:GoInt, ?_pipereq:GoMap<Pointer<stdgo.net.http.Http.Request>, GoUInt>,
			?_pipe:stdgo.net.textproto.Textproto.Pipeline)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_mu) + " " + Go.string(_c) + " " + Go.string(_r) + " " + Go.string(_re) + " " + Go.string(_we) + " " + Go.string(_lastbody)
			+ " " + Go.string(_nread) + " " + Go.string(_nwritten) + " " + Go.string(_pipereq) + " " + Go.string(_pipe) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ServerConn(_mu, _c, _r, _re, _we, _lastbody, _nread, _nwritten, _pipereq, _pipe);
	}

	public function __set__(__tmp__) {
		this._mu = __tmp__._mu;
		this._c = __tmp__._c;
		this._r = __tmp__._r;
		this._re = __tmp__._re;
		this._we = __tmp__._we;
		this._lastbody = __tmp__._lastbody;
		this._nread = __tmp__._nread;
		this._nwritten = __tmp__._nwritten;
		this._pipereq = __tmp__._pipereq;
		this._pipe = __tmp__._pipe;
		return this;
	}
}

@:structInit class ClientConn {
	public function do_(_req:Pointer<stdgo.net.http.Http.Request>):{var _0:Pointer<stdgo.net.http.Http.Response>; var _1:Error;} {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:stdgo.Error = _cc.value.write(_req);
		if (_err != null) {
			return {_0: new Pointer<stdgo.net.http.Http.Response>().nil(), _1: _err};
		};
		return _cc.value.read(_req);
	}

	public function read(_req:Pointer<stdgo.net.http.Http.Request>):{var _0:Pointer<stdgo.net.http.Http.Response>; var _1:Error;} {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _resp:Pointer<stdgo.net.http.Http.Response> = new Pointer<stdgo.net.http.Http.Response>().nil(),
			_err:Error = ((null : stdgo.Error));
		_cc.value._mu.lock();
		try {
			var __tmp__ = _cc.value._pipereq.exists(_req) ? {value: _cc.value._pipereq[_req], ok: true} : {value: _cc.value._pipereq.defaultValue(), ok: false},
				_id:GoUInt = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			_cc.value._pipereq.remove(_req);
			if (!_ok) {
				_cc.value._mu.unlock();
				return {_0: new Pointer<stdgo.net.http.Http.Response>().nil(), _1: errPipeline.value};
			};
			_cc.value._mu.unlock();
			_cc.value._pipe.startResponse(_id);
			{
				var a0 = _id;
				deferstack.unshift(() -> _cc.value._pipe.endResponse(a0));
			};
			_cc.value._mu.lock();
			if (_cc.value._re != null) {
				deferstack.unshift(() -> _cc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: new Pointer<stdgo.net.http.Http.Response>().nil(), _1: _cc.value._re};
				};
			};
			if (_cc.value._r == null || _cc.value._r.isNil()) {
				deferstack.unshift(() -> _cc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: new Pointer<stdgo.net.http.Http.Response>().nil(), _1: _errClosed};
				};
			};
			var _r:Pointer<bufio.Bufio.Reader> = _cc.value._r;
			var _lastbody:stdgo.io.Io.ReadCloser = _cc.value._lastbody;
			_cc.value._lastbody = ((null : stdgo.io.Io.ReadCloser));
			_cc.value._mu.unlock();
			if (_lastbody != null) {
				_err = _lastbody.close();
				if (_err != null) {
					_cc.value._mu.lock();
					deferstack.unshift(() -> _cc.value._mu.unlock());
					_cc.value._re = _err;
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: new Pointer<stdgo.net.http.Http.Response>().nil(), _1: _err};
					};
				};
			};
			{
				var __tmp__ = stdgo.net.http.Http.readResponse(_r, _req);
				_resp = __tmp__._0;
				_err = __tmp__._1;
			};
			_cc.value._mu.lock();
			deferstack.unshift(() -> _cc.value._mu.unlock());
			if (_err != null) {
				_cc.value._re = _err;
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _resp, _1: _err};
				};
			};
			_cc.value._lastbody = _resp.value.body;
			_cc.value._nread++;
			if (_resp.value.close) {
				_cc.value._re = errPersistEOF.value;
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _resp, _1: _cc.value._re};
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _resp, _1: _err};
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
				return {_0: _resp, _1: _err};
			};
		};
	}

	public function pending():GoInt {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_cc.value._mu.lock();
		try {
			deferstack.unshift(() -> _cc.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _cc.value._nwritten - _cc.value._nread;
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
				return ((0 : GoInt));
			};
		};
	}

	public function write(_req:Pointer<stdgo.net.http.Http.Request>):Error {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _err:Error = ((null : stdgo.Error));
		try {
			var _id:GoUInt = _cc.value._pipe.next();
			_cc.value._pipe.startRequest(_id);
			{
				deferstack.unshift(() -> {
					var a = function():Void {
						_cc.value._pipe.endRequest(_id);
						if (_err != null) {
							_cc.value._pipe.startResponse(_id);
							_cc.value._pipe.endResponse(_id);
						} else {
							_cc.value._mu.lock();
							_cc.value._pipereq[_req] = _id;
							_cc.value._mu.unlock();
						};
					};
					a();
				});
			};
			_cc.value._mu.lock();
			if (_cc.value._re != null) {
				deferstack.unshift(() -> _cc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return _cc.value._re;
				};
			};
			if (_cc.value._we != null) {
				deferstack.unshift(() -> _cc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return _cc.value._we;
				};
			};
			if (_cc.value._c == null) {
				deferstack.unshift(() -> _cc.value._mu.unlock());
				{
					for (defer in deferstack) {
						defer();
					};
					return _errClosed;
				};
			};
			var _c:stdgo.net.Net.Conn = _cc.value._c;
			if (_req.value.close) {
				_cc.value._we = errPersistEOF.value;
			};
			_cc.value._mu.unlock();
			_err = _cc.value._writeReq(_req, _c);
			_cc.value._mu.lock();
			deferstack.unshift(() -> _cc.value._mu.unlock());
			if (_err != null) {
				_cc.value._we = _err;
				{
					for (defer in deferstack) {
						defer();
					};
					return _err;
				};
			};
			_cc.value._nwritten++;
			{
				for (defer in deferstack) {
					defer();
				};
				return ((null : stdgo.Error));
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

	public function close():Error {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _cc.value.hijack(),
			_c:stdgo.net.Net.Conn = __tmp__._0,
			_:Pointer<bufio.Bufio.Reader> = __tmp__._1;
		if (_c != null) {
			return _c.close();
		};
		return ((null : stdgo.Error));
	}

	public function hijack():{var _0:stdgo.net.Net.Conn; var _1:Pointer<bufio.Bufio.Reader>;} {
		var _cc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _c:stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn)),
			_r:Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
		_cc.value._mu.lock();
		try {
			deferstack.unshift(() -> _cc.value._mu.unlock());
			_c = _cc.value._c;
			_r = _cc.value._r;
			_cc.value._c = ((null : stdgo.net.Net.Conn));
			_cc.value._r = new Pointer<bufio.Bufio.Reader>().nil();
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _c, _1: _r};
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
				return {_0: _c, _1: _r};
			};
		};
	}

	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _c:stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
	public var _r:Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
	public var _re:stdgo.Error = ((null : stdgo.Error));
	public var _we:stdgo.Error = ((null : stdgo.Error));
	public var _lastbody:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
	public var _nread:GoInt = ((0 : GoInt));
	public var _nwritten:GoInt = ((0 : GoInt));
	public var _pipereq:GoMap<Pointer<stdgo.net.http.Http.Request>, GoUInt> = new GoMap<Pointer<stdgo.net.http.Http.Request>,
		GoUInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request",
			[], stdgo.reflect.Reflect.GoType.structType([
		{
			name: "method",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "url",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "scheme",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "opaque",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "user",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_username",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "_password",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "_passwordSet",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							}
						])))
				},
				{
					name: "host",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "path",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "rawPath",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "forceQuery",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "rawQuery",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "fragment",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "rawFragment",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				}
			])))
		},
		{
			name: "proto",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "protoMajor",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "protoMinor",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int_kind)
		},
		{
			name: "header",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
				stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
		},
		{
			name: "body",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
		},
		{
			name: "getBody",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "contentLength",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
		},
		{
			name: "transferEncoding",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
		},
		{
			name: "close",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
		},
		{
			name: "host",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "form",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
				stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
		},
		{
			name: "postForm",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "multipartForm",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.Form", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "value",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))
				},
				{
					name: "file",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.FileHeader",
									[], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "filename",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "header",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/textproto.MIMEHeader", [],
									stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
										stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
							},
							{
								name: "size",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "_content",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "_tmpfile",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							}
						])))))
				}
			])))
		},
		{
			name: "trailer",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
		},
		{
			name: "remoteAddr",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "requestURI",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.basic(string_kind)
		},
		{
			name: "tls",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
				stdgo.reflect.Reflect.GoType.structType([
					{
						name: "version",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
					},
					{
						name: "handshakeComplete",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "didResume",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "cipherSuite",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
					},
					{
						name: "negotiatedProtocol",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(string_kind)
					},
					{
						name: "negotiatedProtocolIsMutual",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "serverName",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(string_kind)
					},
					{
						name: "peerCertificates",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
									[], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "raw",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawTBSCertificate",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubjectPublicKeyInfo",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawSubject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "rawIssuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signature",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "signatureAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKeyAlgorithm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "publicKey",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
							},
							{
								name: "version",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "serialNumber",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_neg",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "_abs",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("math/big.nat", [],
												stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [],
													stdgo.reflect.Reflect.GoType.basic(uint_kind))))
										}
									])))
							},
							{
								name: "issuer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "country",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organization",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "organizationalUnit",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "locality",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "province",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "streetAddress",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "postalCode",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "commonName",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "names",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
														[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "type",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
											},
											{
												name: "value",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
											}
										])))
									},
									{
										name: "extraNames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
														[], stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))
							},
							{
								name: "subject",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "notBefore",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wall",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
									},
									{
										name: "_ext",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_loc",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_name",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_zone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_name",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "_offset",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int_kind)
															},
															{
																name: "_isDST",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_tx",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_when",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
															},
															{
																name: "_index",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
															},
															{
																name: "_isstd",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_isutc",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															}
														])))
												},
												{
													name: "_extend",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_cacheStart",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheEnd",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_cacheZone",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
														stdgo.reflect.Reflect.GoType.invalidType))
												}
											])))
									}
								]))
							},
							{
								name: "notAfter",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "keyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
							},
							{
								name: "extensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "id",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
												stdgo.reflect.Reflect.GoType.invalidType)
										},
										{
											name: "critical",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "value",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										}
									])))
							},
							{
								name: "extraExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "unhandledCriticalExtensions",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "extKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [],
									stdgo.reflect.Reflect.GoType.basic(int_kind)))
							},
							{
								name: "unknownExtKeyUsage",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "basicConstraintsValid",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "isCA",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "maxPathLen",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "maxPathLenZero",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "subjectKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "authorityKeyId",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "ocspserver",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "issuingCertificateURL",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "dnsnames",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "emailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "ipaddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [],
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
							},
							{
								name: "uris",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL",
												[], stdgo.reflect.Reflect.GoType.invalidType)))
							},
							{
								name: "permittedDNSDomainsCritical",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "permittedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedDNSDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
												[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "ip",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "mask",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net.IPMask", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
									}
								]))))
							},
							{
								name: "excludedIPRanges",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
												[], stdgo.reflect.Reflect.GoType.invalidType)))
							},
							{
								name: "permittedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedEmailAddresses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "permittedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "excludedURIDomains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "crldistributionPoints",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "policyIdentifiers",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							}
						]))))
					},
					{
						name: "verifiedChains",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
									[], stdgo.reflect.Reflect.GoType.invalidType))))
					},
					{
						name: "signedCertificateTimestamps",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
					},
					{
						name: "ocspresponse",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "tlsunique",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "_ekm",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
					}
				])))
		},
		{
			name: "cancel",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.chanType(2,
				stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
		},
		{
			name: "response",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "status",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "statusCode",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "proto",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "protoMajor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "protoMinor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "header",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "body",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "contentLength",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
				},
				{
					name: "transferEncoding",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
				},
				{
					name: "close",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "uncompressed",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "trailer",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "request",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
						stdgo.reflect.Reflect.GoType.invalidType))
				},
				{
					name: "tls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
						stdgo.reflect.Reflect.GoType.invalidType))
				}
			])))
		},
		{
			name: "_ctx",
			embedded: false,
			tag: "",
			type: stdgo.reflect.Reflect.GoType.named("context.Context", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
		}
	]))), stdgo.reflect.Reflect.GoType.basic(uint_kind)))).nil();
	public var _pipe:stdgo.net.textproto.Textproto.Pipeline = new stdgo.net.textproto.Textproto.Pipeline();
	public var _writeReq:(Pointer<stdgo.net.http.Http.Request>, stdgo.io.Io.Writer) -> stdgo.Error = null;

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_c:stdgo.net.Net.Conn, ?_r:Pointer<bufio.Bufio.Reader>, ?_re:stdgo.Error, ?_we:stdgo.Error,
			?_lastbody:stdgo.io.Io.ReadCloser, ?_nread:GoInt, ?_nwritten:GoInt, ?_pipereq:GoMap<Pointer<stdgo.net.http.Http.Request>, GoUInt>,
			?_pipe:stdgo.net.textproto.Textproto.Pipeline, ?_writeReq:(Pointer<stdgo.net.http.Http.Request>, stdgo.io.Io.Writer) -> stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_mu) + " " + Go.string(_c) + " " + Go.string(_r) + " " + Go.string(_re) + " " + Go.string(_we) + " " + Go.string(_lastbody)
			+ " " + Go.string(_nread) + " " + Go.string(_nwritten) + " " + Go.string(_pipereq) + " " + Go.string(_pipe) + " " + Go.string(_writeReq) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ClientConn(_mu, _c, _r, _re, _we, _lastbody, _nread, _nwritten, _pipereq, _pipe, _writeReq);
	}

	public function __set__(__tmp__) {
		this._mu = __tmp__._mu;
		this._c = __tmp__._c;
		this._r = __tmp__._r;
		this._re = __tmp__._re;
		this._we = __tmp__._we;
		this._lastbody = __tmp__._lastbody;
		this._nread = __tmp__._nread;
		this._nwritten = __tmp__._nwritten;
		this._pipereq = __tmp__._pipereq;
		this._pipe = __tmp__._pipe;
		this._writeReq = __tmp__._writeReq;
		return this;
	}
}

@:structInit class ReverseProxy {
	public function _handleUpgradeResponse(_rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>,
			_res:Pointer<stdgo.net.http.Http.Response>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			var _reqUpType:GoString = _upgradeType(_req.value.header.__copy__());
			var _resUpType:GoString = _upgradeType(_res.value.header.__copy__());
			if (!net.http.internal.ascii.Ascii.isPrint(_resUpType)) {
				_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("backend tried to switch to invalid protocol %q", Go.toInterface(_resUpType)));
			};
			if (!net.http.internal.ascii.Ascii.equalFold(_reqUpType, _resUpType)) {
				_p.value._getErrorHandler()(_rw, _req,
					stdgo.fmt.Fmt.errorf("backend tried to switch protocol %q when %q was requested", Go.toInterface(_resUpType), Go.toInterface(_reqUpType)));
				return;
			};
			var __tmp__ = try {
				{value: ((_rw.__underlying__().value : stdgo.net.http.Http.Hijacker)), ok: true};
			} catch (_) {
				{value: ((null : stdgo.net.http.Http.Hijacker)), ok: false};
			}, _hj = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_p.value._getErrorHandler()(_rw, _req,
					stdgo.fmt.Fmt.errorf("can\'t switch protocols using non-Hijacker ResponseWriter type %T", Go.toInterface(_rw)));
				return;
			};
			var __tmp__ = try {
				{value: ((_res.value.body.__underlying__().value : stdgo.io.Io.ReadWriteCloser)), ok: true};
			} catch (_) {
				{value: ((null : stdgo.io.Io.ReadWriteCloser)), ok: false};
			}, _backConn = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("internal error: 101 switching protocols response with non-writable body"));
				return;
			};
			var _backConnCloseCh:Chan<Bool> = new Chan<Bool>(0, () -> false);
			Go.routine({
				var a = function():Void {
					{
						_req.value.context().done().get();
						_backConnCloseCh.get();
					};
					_backConn.close();
				};
				a();
			});
			{
				var a0 = _backConnCloseCh;
				deferstack.unshift(() -> a0.close());
			};
			var __tmp__ = _hj.hijack(),
				_conn:stdgo.net.Net.Conn = __tmp__._0,
				_brw:Pointer<bufio.Bufio.ReadWriter> = __tmp__._1,
				_err:stdgo.Error = __tmp__._2;
			if (_err != null) {
				_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("Hijack failed on protocol switch: %v", Go.toInterface(_err)));
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			deferstack.unshift(() -> _conn.close());
			_copyHeader(_rw.header().__copy__(), _res.value.header.__copy__());
			_res.value.header = _rw.header().__copy__();
			_res.value.body = ((null : stdgo.io.Io.ReadCloser));
			{
				var _err:stdgo.Error = _res.value.write(_brw.value);
				if (_err != null) {
					_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("response write: %v", Go.toInterface(_err)));
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
			};
			{
				var _err:stdgo.Error = _brw.value.flush();
				if (_err != null) {
					_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("response flush: %v", Go.toInterface(_err)));
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
			};
			var _errc:Chan<stdgo.Error> = new Chan<stdgo.Error>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((null : stdgo.Error)));
			var _spc:T_switchProtocolCopier = (({_user: _conn, _backend: _backConn} : T_switchProtocolCopier)).__copy__();
			Go.routine(_spc._copyToBackend(_errc));
			Go.routine(_spc._copyFromBackend(_errc));
			_errc.get();
			{
				for (defer in deferstack) {
					defer();
				};
				return;
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
				return;
			};
		};
	}

	public function _logf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _args = new Slice<AnyInterface>(..._args);
		if (_p.value.errorLog != null && !_p.value.errorLog.isNil()) {
			_p.value.errorLog.value.printf(_format, ..._args.toArray());
		} else {
			stdgo.log.Log.printf(_format, ..._args.toArray());
		};
	}

	public function _copyBuffer(_dst:stdgo.io.Io.Writer, _src:stdgo.io.Io.Reader, _buf:Slice<GoByte>):{var _0:GoInt64; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_buf.length == ((0 : GoInt))) {
			_buf = new Slice<GoUInt8>(...[
				for (i in 0...((((32 : GoUnTypedInt)) * ((1024 : GoUnTypedInt)) : GoInt)).toBasic()) ((0 : GoUInt8))
			]);
		};
		var _written:GoInt64 = ((0 : GoInt64));
		while (true) {
			var __tmp__ = _src.read(_buf),
				_nr:GoInt = __tmp__._0,
				_rerr:stdgo.Error = __tmp__._1;
			if (_rerr != null
				&& Go.toInterface(_rerr) != Go.toInterface(stdgo.io.Io.eof)
				&& Go.toInterface(_rerr) != Go.toInterface(stdgo.context.Context.canceled)) {
				_p.value._logf("httputil: ReverseProxy read error during body copy: %v", Go.toInterface(_rerr));
			};
			if (_nr > ((0 : GoInt))) {
				var __tmp__ = _dst.write(_buf.__slice__(0, _nr)),
					_nw:GoInt = __tmp__._0,
					_werr:stdgo.Error = __tmp__._1;
				if (_nw > ((0 : GoInt))) {
					_written = _written + (((_nw : GoInt64)));
				};
				if (_werr != null) {
					return {_0: _written, _1: _werr};
				};
				if (_nr != _nw) {
					return {_0: _written, _1: stdgo.io.Io.errShortWrite};
				};
			};
			if (_rerr != null) {
				if (Go.toInterface(_rerr) == Go.toInterface(stdgo.io.Io.eof)) {
					_rerr = ((null : stdgo.Error));
				};
				return {_0: _written, _1: _rerr};
			};
		};
	}

	public function _copyResponse(_dst:stdgo.io.Io.Writer, _src:stdgo.io.Io.Reader, _flushInterval:stdgo.time.Time.Duration):Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		if (_flushInterval.__t__ != ((0 : GoInt64))) {
			{
				var __tmp__ = try {
					{value: ((_dst.__underlying__().value : T_writeFlusher)), ok: true};
				} catch (_) {
					{value: ((null : T_writeFlusher)), ok: false};
				}, _wf = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					var _mlw:Pointer<T_maxLatencyWriter> = Go.pointer((({
						_dst: _wf,
						_latency: _flushInterval,
						_mu: new stdgo.sync.Sync.Mutex(),
						_t: new Pointer<stdgo.time.Time.Timer>().nil(),
						_flushPending: false
					} : T_maxLatencyWriter)));
					deferstack.unshift(() -> _mlw.value._stop());
					_mlw.value._flushPending = true;
					_mlw.value._t = stdgo.time.Time.afterFunc(_flushInterval, _mlw.value._delayedFlush);
					_dst = _mlw.value;
				};
			};
		};
		try {
			var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
			if (_p.value.bufferPool != null) {
				_buf = _p.value.bufferPool.get();
				{
					var a0 = _buf;
					deferstack.unshift(() -> _p.value.bufferPool.put(a0));
				};
			};
			var __tmp__ = _p.value._copyBuffer(_dst, _src, _buf),
				_:GoInt64 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			{
				for (defer in deferstack) {
					defer();
				};
				return _err;
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

	public function _flushInterval(_res:Pointer<stdgo.net.http.Http.Response>):stdgo.time.Time.Duration {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _resCT:GoString = _res.value.header.get("Content-Type");
		if (_resCT == (("text/event-stream" : GoString))) {
			return new stdgo.time.Time.Duration(-((1 : GoUnTypedInt)));
		};
		if (_res.value.contentLength == -((1 : GoUnTypedInt))) {
			return new stdgo.time.Time.Duration(-((1 : GoUnTypedInt)));
		};
		return _p.value.flushInterval;
	}

	public function serveHTTP(_rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			var _transport:stdgo.net.http.Http.RoundTripper = _p.value.transport;
			if (_transport == null) {
				_transport = stdgo.net.http.Http.defaultTransport;
			};
			var _ctx:stdgo.context.Context.Context = _req.value.context();
			{
				var __tmp__ = try {
					{value: ((_rw.__underlying__().value : stdgo.net.http.Http.CloseNotifier)), ok: true};
				} catch (_) {
					{value: ((null : stdgo.net.http.Http.CloseNotifier)), ok: false};
				}, _cn = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					var _cancel:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
					{
						var __tmp__ = stdgo.context.Context.withCancel(_ctx);
						_ctx = __tmp__._0;
						_cancel = __tmp__._1.__copy__();
					};
					deferstack.unshift(() -> _cancel.__t__());
					var _notifyChan:Chan<Bool> = _cn.closeNotify();
					Go.routine({
						var a = function():Void {
							{
								{
									_notifyChan.get();
									_cancel.__t__();
								};
								_ctx.done().get();
							};
						};
						a();
					});
				};
			};
			var _outreq:Pointer<stdgo.net.http.Http.Request> = _req.value.clone(_ctx);
			if (_req.value.contentLength == ((0 : GoInt64))) {
				_outreq.value.body = ((null : stdgo.io.Io.ReadCloser));
			};
			if (_outreq.value.body != null) {
				deferstack.unshift(() -> _outreq.value.body.close());
			};
			if (_outreq.value.header.__t__ == null || _outreq.value.header.__t__.isNil()) {
				_outreq.value.header = new stdgo.net.http.Http.Header(new GoMap<GoString,
					Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
			};
			_p.value.director(_outreq);
			_outreq.value.close = false;
			var _reqUpType:GoString = _upgradeType(_outreq.value.header.__copy__());
			if (!net.http.internal.ascii.Ascii.isPrint(_reqUpType)) {
				_p.value._getErrorHandler()(_rw, _req, stdgo.fmt.Fmt.errorf("client tried to switch to invalid protocol %q", Go.toInterface(_reqUpType)));
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			_removeConnectionHeaders(_outreq.value.header.__copy__());
			for (_h in _hopHeaders) {
				_outreq.value.header.del(_h);
			};
			if (golang_org.x.net.http.httpguts.Httpguts.headerValuesContainsToken(_req.value.header.__t__["Te"], "trailers")) {
				_outreq.value.header.set("Te", "trailers");
			};
			if (_reqUpType != (("" : GoString))) {
				_outreq.value.header.set("Connection", "Upgrade");
				_outreq.value.header.set("Upgrade", _reqUpType);
			};
			{
				var __tmp__ = stdgo.net.Net.splitHostPort(_req.value.remoteAddr),
					_clientIP:GoString = __tmp__._0,
					_:GoString = __tmp__._1,
					_err:stdgo.Error = __tmp__._2;
				if (_err == null) {
					var __tmp__ = _outreq.value.header.exists("X-Forwarded-For") ? {value: _outreq.value.header["X-Forwarded-For"],
						ok: true} : {value: _outreq.value.header.defaultValue(), ok: false},
						_prior:Slice<GoString> = __tmp__.value,
						_ok:Bool = __tmp__.ok;
					var _omit:Bool = _ok && _prior == null || _prior.isNil();
					if (_prior.length > ((0 : GoInt))) {
						_clientIP = stdgo.strings.Strings.join(_prior, ", ") + ((", " : GoString)) + _clientIP;
					};
					if (!_omit) {
						_outreq.value.header.set("X-Forwarded-For", _clientIP);
					};
				};
			};
			var __tmp__ = _transport.roundTrip(_outreq),
				_res:Pointer<stdgo.net.http.Http.Response> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_p.value._getErrorHandler()(_rw, _outreq, _err);
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			if (_res.value.statusCode == stdgo.net.http.Http.statusSwitchingProtocols) {
				if (!_p.value._modifyResponse(_rw, _res, _outreq)) {
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
				_p.value._handleUpgradeResponse(_rw, _outreq, _res);
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			_removeConnectionHeaders(_res.value.header.__copy__());
			for (_h in _hopHeaders) {
				_res.value.header.del(_h);
			};
			if (!_p.value._modifyResponse(_rw, _res, _outreq)) {
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			_copyHeader(_rw.header().__copy__(), _res.value.header.__copy__());
			var _announcedTrailers:GoInt = (_res.value.trailer.__t__ == null ? 0 : _res.value.trailer.__t__.length);
			if (_announcedTrailers > ((0 : GoInt))) {
				var _trailerKeys:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))])
					.setCap((((_res.value.trailer.__t__ == null ? 0 : _res.value.trailer.__t__.length) : GoInt)).toBasic());
				{
					var _k;
					for (_obj in _res.value.trailer.__t__.keyValueIterator()) {
						_k = _obj.key;
						_trailerKeys = _trailerKeys.__append__(_k);
					};
				};
				_rw.header().add("Trailer", stdgo.strings.Strings.join(_trailerKeys, ", "));
			};
			_rw.writeHeader(_res.value.statusCode);
			_err = _p.value._copyResponse(_rw, _res.value.body, _p.value._flushInterval(_res));
			if (_err != null) {
				deferstack.unshift(() -> _res.value.body.close());
				if (!_shouldPanicOnCopyError(_req)) {
					_p.value._logf("suppressing panic for copyResponse error in test; copy error: %v", Go.toInterface(_err));
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
				throw stdgo.net.http.Http.errAbortHandler;
			};
			_res.value.body.close();
			if ((_res.value.trailer.__t__ == null ? 0 : _res.value.trailer.__t__.length) > ((0 : GoInt))) {
				{
					var __tmp__ = try {
						{value: ((_rw.__underlying__().value : stdgo.net.http.Http.Flusher)), ok: true};
					} catch (_) {
						{value: ((null : stdgo.net.http.Http.Flusher)), ok: false};
					}, _fl = __tmp__.value, _ok = __tmp__.ok;
					if (_ok) {
						_fl.flush();
					};
				};
			};
			if ((_res.value.trailer.__t__ == null ? 0 : _res.value.trailer.__t__.length) == _announcedTrailers) {
				_copyHeader(_rw.header().__copy__(), _res.value.trailer.__copy__());
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			{
				var _k;
				var _vv;
				for (_obj in _res.value.trailer.__t__.keyValueIterator()) {
					_k = _obj.key;
					_vv = _obj.value;
					_k = stdgo.net.http.Http.trailerPrefix + _k;
					for (_v in _vv) {
						_rw.header().add(_k, _v);
					};
				};
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
				return;
			};
		};
	}

	public function _modifyResponse(_rw:stdgo.net.http.Http.ResponseWriter, _res:Pointer<stdgo.net.http.Http.Response>,
			_req:Pointer<stdgo.net.http.Http.Request>):Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.modifyResponse == null) {
			return true;
		};
		{
			var _err:stdgo.Error = _p.value.modifyResponse(_res);
			if (_err != null) {
				_res.value.body.close();
				_p.value._getErrorHandler()(_rw, _req, _err);
				return false;
			};
		};
		return true;
	}

	public function _getErrorHandler():(stdgo.net.http.Http.ResponseWriter, Pointer<stdgo.net.http.Http.Request>, Error) -> Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value.errorHandler != null) {
			return _p.value.errorHandler;
		};
		return _p.value._defaultErrorHandler;
	}

	public function _defaultErrorHandler(_rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>, _err:Error):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p.value._logf("http: proxy error: %v", Go.toInterface(_err));
		_rw.writeHeader(stdgo.net.http.Http.statusBadGateway);
	}

	public var director:Pointer<stdgo.net.http.Http.Request>->Void = null;
	public var transport:stdgo.net.http.Http.RoundTripper = ((null : stdgo.net.http.Http.RoundTripper));
	public var flushInterval:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
	public var errorLog:Pointer<stdgo.log.Log.Logger> = new Pointer<stdgo.log.Log.Logger>().nil();
	public var bufferPool:BufferPool = ((null : BufferPool));
	public var modifyResponse:Pointer<stdgo.net.http.Http.Response>->stdgo.Error = null;
	public var errorHandler:(stdgo.net.http.Http.ResponseWriter, Pointer<stdgo.net.http.Http.Request>, stdgo.Error) -> Void = null;

	public function new(?director:Pointer<stdgo.net.http.Http.Request>->Void, ?transport:stdgo.net.http.Http.RoundTripper,
			?flushInterval:stdgo.time.Time.Duration, ?errorLog:Pointer<stdgo.log.Log.Logger>, ?bufferPool:BufferPool,
			?modifyResponse:Pointer<stdgo.net.http.Http.Response>->stdgo.Error,
			?errorHandler:(stdgo.net.http.Http.ResponseWriter, Pointer<stdgo.net.http.Http.Request>, stdgo.Error) -> Void)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(director) + " " + Go.string(transport) + " " + Go.string(flushInterval) + " " + Go.string(errorLog) + " "
			+ Go.string(bufferPool) + " " + Go.string(modifyResponse) + " " + Go.string(errorHandler) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ReverseProxy(director, transport, flushInterval, errorLog, bufferPool, modifyResponse, errorHandler);
	}

	public function __set__(__tmp__) {
		this.director = __tmp__.director;
		this.transport = __tmp__.transport;
		this.flushInterval = __tmp__.flushInterval;
		this.errorLog = __tmp__.errorLog;
		this.bufferPool = __tmp__.bufferPool;
		this.modifyResponse = __tmp__.modifyResponse;
		this.errorHandler = __tmp__.errorHandler;
		return this;
	}
}

@:structInit class T_maxLatencyWriter {
	public function _stop():Void {
		var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_m.value._mu.lock();
			deferstack.unshift(() -> _m.value._mu.unlock());
			_m.value._flushPending = false;
			if (_m.value._t != null && !_m.value._t.isNil()) {
				_m.value._t.value.stop();
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
				return;
			};
		};
	}

	public function _delayedFlush():Void {
		var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_m.value._mu.lock();
			deferstack.unshift(() -> _m.value._mu.unlock());
			if (!_m.value._flushPending) {
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			_m.value._dst.flush();
			_m.value._flushPending = false;
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
				return;
			};
		};
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_m.value._mu.lock();
		try {
			deferstack.unshift(() -> _m.value._mu.unlock());
			{
				var __tmp__ = _m.value._dst.write(_p);
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_m.value._latency.__t__ < ((0 : GoInt64))) {
				_m.value._dst.flush();
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _n, _1: _err};
				};
			};
			if (_m.value._flushPending) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: _n, _1: _err};
				};
			};
			if (_m.value._t == null || _m.value._t.isNil()) {
				_m.value._t = stdgo.time.Time.afterFunc(_m.value._latency, _m.value._delayedFlush);
			} else {
				_m.value._t.value.reset(_m.value._latency);
			};
			_m.value._flushPending = true;
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _n, _1: _err};
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
				return {_0: _n, _1: _err};
			};
		};
	}

	public var _dst:T_writeFlusher = ((null : T_writeFlusher));
	public var _latency:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _t:Pointer<stdgo.time.Time.Timer> = new Pointer<stdgo.time.Time.Timer>().nil();
	public var _flushPending:Bool = false;

	public function new(?_dst:T_writeFlusher, ?_latency:stdgo.time.Time.Duration, ?_mu:stdgo.sync.Sync.Mutex, ?_t:Pointer<stdgo.time.Time.Timer>,
			?_flushPending:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_dst)
			+ " "
			+ Go.string(_latency)
			+ " "
			+ Go.string(_mu)
			+ " "
			+ Go.string(_t)
			+ " "
			+ Go.string(_flushPending)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_maxLatencyWriter(_dst, _latency, _mu, _t, _flushPending);
	}

	public function __set__(__tmp__) {
		this._dst = __tmp__._dst;
		this._latency = __tmp__._latency;
		this._mu = __tmp__._mu;
		this._t = __tmp__._t;
		this._flushPending = __tmp__._flushPending;
		return this;
	}
}

@:structInit class T_switchProtocolCopier {
	public function _copyToBackend(_errc:Chan<Error>):Void {
		var _c = this.__copy__();
		var __tmp__ = stdgo.io.Io.copy(_c._backend, _c._user),
			_:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_errc.send(_err);
	}

	public function _copyFromBackend(_errc:Chan<Error>):Void {
		var _c = this.__copy__();
		var __tmp__ = stdgo.io.Io.copy(_c._user, _c._backend),
			_:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_errc.send(_err);
	}

	public var _user:stdgo.io.Io.ReadWriter = ((null : stdgo.io.Io.ReadWriter));
	public var _backend:stdgo.io.Io.ReadWriter = ((null : stdgo.io.Io.ReadWriter));

	public function new(?_user:stdgo.io.Io.ReadWriter, ?_backend:stdgo.io.Io.ReadWriter)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_user) + " " + Go.string(_backend) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_switchProtocolCopier(_user, _backend);
	}

	public function __set__(__tmp__) {
		this._user = __tmp__._user;
		this._backend = __tmp__._backend;
		return this;
	}
}

@:structInit @:local class T__struct_71 {
	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_71();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

var _hopHeaders:Slice<GoString> = new Slice<GoString>("Connection", "Proxy-Connection", "Keep-Alive", "Proxy-Authenticate", "Proxy-Authorization", "Te",
	"Trailer", "Transfer-Encoding", "Upgrade");

var _emptyBody:stdgo.io.Io.ReadCloser = stdgo.io.Io.nopCloser(stdgo.strings.Strings.newReader("").value);

var _reqWriteExcludeHeaderDump:GoMap<GoString, Bool> = new GoMap<GoString,
	Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(bool_kind))),
	{
		key: "Host",
		value: true
	}, {key: "Transfer-Encoding", value: true}, {key: "Trailer", value: true});

var errPipeline:Pointer<stdgo.net.http.Http.ProtocolError> = Go.pointer((({errorString: "pipeline error"} : stdgo.net.http.Http.ProtocolError)));
var errClosed:Pointer<stdgo.net.http.Http.ProtocolError> = Go.pointer((({errorString: "connection closed by user"} : stdgo.net.http.Http.ProtocolError)));
var _inOurTests:Bool = false;
var errLineTooLong:stdgo.Error = net.http.internal.Internal.errLineTooLong;
var _errNoBody:stdgo.Error = stdgo.errors.Errors.new_("sentinel error value");
var _errClosed:stdgo.Error = stdgo.errors.Errors.new_("i/o operation on closed connection");
var errPersistEOF:Pointer<stdgo.net.http.Http.ProtocolError> = Go.pointer((({errorString: "persistent connection closed"} : stdgo.net.http.Http.ProtocolError)));

/**
	// drainBody reads all of b to memory and then returns two equivalent
	// ReadClosers yielding the same bytes.
	//
	// It returns an error if the initial slurp of all bytes fails. It does not attempt
	// to make the returned ReadClosers have identical error-matching behavior.
**/
function _drainBody(_b:stdgo.io.Io.ReadCloser):{var _0:stdgo.io.Io.ReadCloser; var _1:stdgo.io.Io.ReadCloser; var _2:Error;} {
	var _r1:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser)),
		_r2:stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser)),
		_err:Error = ((null : stdgo.Error));
	if (_b == null || Go.toInterface(_b) == Go.toInterface(stdgo.net.http.Http.noBody)) {
		return {_0: stdgo.net.http.Http.noBody.__copy__(), _1: stdgo.net.http.Http.noBody.__copy__(), _2: ((null : stdgo.Error))};
	};
	var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	{
		{
			var __tmp__ = _buf.readFrom(_b);
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: ((null : stdgo.io.Io.ReadCloser)), _1: _b, _2: _err};
		};
	};
	{
		_err = _b.close();
		if (_err != null) {
			return {_0: ((null : stdgo.io.Io.ReadCloser)), _1: _b, _2: _err};
		};
	};
	return {_0: stdgo.io.Io.nopCloser(Go.pointer(_buf)
		.value), _1: stdgo.io.Io.nopCloser(stdgo.bytes.Bytes.newReader(_buf.bytes()).value), _2: ((null : stdgo.Error))};
}

/**
	// outGoingLength is a copy of the unexported
	// (*http.Request).outgoingLength method.
**/
function _outgoingLength(_req:Pointer<stdgo.net.http.Http.Request>):GoInt64 {
	if (_req.value.body == null || Go.toInterface(_req.value.body) == Go.toInterface(stdgo.net.http.Http.noBody)) {
		return ((0 : GoInt64));
	};
	if (_req.value.contentLength != ((0 : GoInt64))) {
		return _req.value.contentLength;
	};
	return -((1 : GoUnTypedInt));
}

/**
	// DumpRequestOut is like DumpRequest but for outgoing client requests. It
	// includes any headers that the standard http.Transport adds, such as
	// User-Agent.
**/
function dumpRequestOut(_req:Pointer<stdgo.net.http.Http.Request>, _body:Bool):{var _0:Slice<GoByte>; var _1:Error;} {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	var _save:stdgo.io.Io.ReadCloser = _req.value.body;
	var _dummyBody:Bool = false;
	try {
		if (!_body) {
			var _contentLength:GoInt64 = _outgoingLength(_req);
			if (_contentLength != ((0 : GoInt64))) {
				_req.value.body = stdgo.io.Io.nopCloser(stdgo.io.Io.limitReader(new T_neverEnding((("x".code : GoRune))), _contentLength));
				_dummyBody = true;
			};
		} else {
			var _err:Error = ((null : stdgo.Error));
			{
				var __tmp__ = _drainBody(_req.value.body);
				_save = __tmp__._0;
				_req.value.body = __tmp__._1;
				_err = __tmp__._2;
			};
			if (_err != null) {
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		var _reqSend:Pointer<stdgo.net.http.Http.Request> = _req;
		if (_req.value.url.value.scheme == (("https" : GoString))) {
			_reqSend = Go.pointer(new stdgo.net.http.Http.Request());
			_reqSend.value = _req.value.__copy__();
			_reqSend.value.url = Go.pointer(new stdgo.net.url.Url.URL());
			_reqSend.value.url.value = _req.value.url.value.__copy__();
			_reqSend.value.url.value.scheme = "http";
		};
		var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
		var __tmp__ = stdgo.io.Io.pipe(),
			_pr:Pointer<stdgo.io.Io.PipeReader> = __tmp__._0,
			_pw:Pointer<stdgo.io.Io.PipeWriter> = __tmp__._1;
		deferstack.unshift(() -> _pr.value.close());
		deferstack.unshift(() -> _pw.value.close());
		var _dr:Pointer<T_delegateReader> = Go.pointer((({_c: new Chan<stdgo.io.Io.Reader>(0,
			() -> ((null : stdgo.io.Io.Reader))), _err: ((null : stdgo.Error)), _r: ((null : stdgo.io.Io.Reader))} : T_delegateReader)));
		var _t:Pointer<stdgo.net.http.Http.Transport> = Go.pointer((({
			dial: function(_net:GoString, _addr:GoString):{var _0:_net.Conn; var _1:Error;} {
				return {_0: Go.pointer(new T_dumpConn(stdgo.io.Io.multiWriter(Go.pointer(_buf).value, _pw.value), _dr.value))
					.value, _1: ((null : stdgo.Error))};
			},
			_idleMu: new stdgo.sync.Sync.Mutex(),
			_closeIdle: false,
			_idleConn: new GoMap<stdgo.net.http.Http.T_connectMethodKey,
				Slice<Pointer<stdgo.net.http.Http.T_persistConn>>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey",
					[], stdgo.reflect.Reflect.GoType.invalidType),
					stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.persistConn", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_alt",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.RoundTripper", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
							},
							{
								name: "_t",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Transport", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "_cacheKey",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_proxy",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_scheme",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_addr",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_onlyH1",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									}
								]))
							},
							{
								name: "_conn",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net.Conn", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
							},
							{
								name: "_tlsState",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "version",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
										},
										{
											name: "handshakeComplete",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "didResume",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "cipherSuite",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
										},
										{
											name: "negotiatedProtocol",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "negotiatedProtocolIsMutual",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "serverName",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "peerCertificates",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
												[], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "raw",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "rawTBSCertificate",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "rawSubjectPublicKeyInfo",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "rawSubject",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "rawIssuer",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "signature",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "signatureAlgorithm",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [],
														stdgo.reflect.Reflect.GoType.basic(int_kind))
												},
												{
													name: "publicKeyAlgorithm",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [],
														stdgo.reflect.Reflect.GoType.basic(int_kind))
												},
												{
													name: "publicKey",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												},
												{
													name: "version",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int_kind)
												},
												{
													name: "serialNumber",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "_neg",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
															},
															{
																name: "_abs",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.named("math/big.nat", [],
																	stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word",
																		[], stdgo.reflect.Reflect.GoType.basic(uint_kind))))
															}
														])))
												},
												{
													name: "issuer",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [],
														stdgo.reflect.Reflect.GoType.structType([
															{
																name: "country",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "organization",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "organizationalUnit",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "locality",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "province",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "streetAddress",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "postalCode",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
															},
															{
																name: "serialNumber",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "commonName",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.basic(string_kind)
															},
															{
																name: "names",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
																		[], stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "type",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
																			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
																	},
																	{
																		name: "value",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
																	}
																])))
															},
															{
																name: "extraNames",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
																		[], stdgo.reflect.Reflect.GoType.invalidType))
															}
														]))
												},
												{
													name: "subject",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [],
														stdgo.reflect.Reflect.GoType.invalidType)
												},
												{
													name: "notBefore",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_wall",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
														},
														{
															name: "_ext",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_loc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
																stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_name",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_zone",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone",
																				[], stdgo.reflect.Reflect.GoType.structType([
																			{
																				name: "_name",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																			},
																			{
																				name: "_offset",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																			},
																			{
																				name: "_isDST",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																			}
																		])))
																	},
																	{
																		name: "_tx",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans",
																				[], stdgo.reflect.Reflect.GoType.structType([
																			{
																				name: "_when",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																			},
																			{
																				name: "_index",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																			},
																			{
																				name: "_isstd",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																			},
																			{
																				name: "_isutc",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																			}
																		])))
																	},
																	{
																		name: "_extend",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_cacheStart",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																	},
																	{
																		name: "_cacheEnd",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																	},
																	{
																		name: "_cacheZone",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone",
																				[], stdgo.reflect.Reflect.GoType.invalidType))
																	}
																])))
														}
													]))
												},
												{
													name: "notAfter",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
												},
												{
													name: "keyUsage",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [],
														stdgo.reflect.Reflect.GoType.basic(int_kind))
												},
												{
													name: "extensions",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension",
															[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "id",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
																stdgo.reflect.Reflect.GoType.invalidType)
														},
														{
															name: "critical",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "value",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
														}
													])))
												},
												{
													name: "extraExtensions",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												},
												{
													name: "unhandledCriticalExtensions",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												},
												{
													name: "extKeyUsage",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage",
														[], stdgo.reflect.Reflect.GoType.basic(int_kind)))
												},
												{
													name: "unknownExtKeyUsage",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												},
												{
													name: "basicConstraintsValid",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "isCA",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "maxPathLen",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int_kind)
												},
												{
													name: "maxPathLenZero",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "subjectKeyId",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "authorityKeyId",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												},
												{
													name: "ocspserver",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "issuingCertificateURL",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "dnsnames",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "emailAddresses",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "ipaddresses",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
												},
												{
													name: "uris",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL",
															[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "scheme",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "opaque",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "user",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo",
																[], stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_username",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_password",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_passwordSet",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	}
																])))
														},
														{
															name: "host",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "path",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "rawPath",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "forceQuery",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "rawQuery",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "fragment",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "rawFragment",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														}
													]))))
												},
												{
													name: "permittedDNSDomainsCritical",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "permittedDNSDomains",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "excludedDNSDomains",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "permittedIPRanges",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
															[], stdgo.reflect.Reflect.GoType.structType([
														{
															name: "ip",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType)
														},
														{
															name: "mask",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.named("net.IPMask", [],
																stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
														}
													]))))
												},
												{
													name: "excludedIPRanges",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
															[], stdgo.reflect.Reflect.GoType.invalidType)))
												},
												{
													name: "permittedEmailAddresses",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "excludedEmailAddresses",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "permittedURIDomains",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "excludedURIDomains",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "crldistributionPoints",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
												},
												{
													name: "policyIdentifiers",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier",
															[], stdgo.reflect.Reflect.GoType.invalidType))
												}
											]))))
										},
										{
											name: "verifiedChains",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
												[], stdgo.reflect.Reflect.GoType.invalidType))))
										},
										{
											name: "signedCertificateTimestamps",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
										},
										{
											name: "ocspresponse",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "tlsunique",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "_ekm",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
										}
									])))
							},
							{
								name: "_br",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("bufio.Reader", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_buf",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "_rd",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("io.Reader", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
										},
										{
											name: "_r",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int_kind)
										},
										{
											name: "_w",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int_kind)
										},
										{
											name: "_err",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
										},
										{
											name: "_lastByte",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int_kind)
										},
										{
											name: "_lastRuneSize",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int_kind)
										}
									])))
							},
							{
								name: "_bw",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("bufio.Writer", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_err",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
										},
										{
											name: "_buf",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "_n",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int_kind)
										},
										{
											name: "_wr",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("io.Writer", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
										}
									])))
							},
							{
								name: "_nwrite",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "_reqch",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.named("net/http.requestAndChan", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("net/http.incomparable", [],
												stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.signature(false, [], [],
													stdgo.reflect.Reflect.GoType.invalidType), 0))
										},
										{
											name: "_req",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "method",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "url",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													},
													{
														name: "proto",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "protoMajor",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int_kind)
													},
													{
														name: "protoMinor",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int_kind)
													},
													{
														name: "header",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
															stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
																stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
													},
													{
														name: "body",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [],
															stdgo.reflect.Reflect.GoType.interfaceType(false, []))
													},
													{
														name: "getBody",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "contentLength",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "transferEncoding",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
													},
													{
														name: "close",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
													},
													{
														name: "host",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "form",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
															stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
																stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
													},
													{
														name: "postForm",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
															stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "multipartForm",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.Form",
															[], stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "value",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
																		stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))
																},
																{
																	name: "file",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
																		stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.FileHeader",
																			[], stdgo.reflect.Reflect.GoType.structType([
																			{
																				name: "filename",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																			},
																			{
																				name: "header",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.named("net/textproto.MIMEHeader", [],
																					stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
																						stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
																			},
																			{
																				name: "size",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																			},
																			{
																				name: "_content",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
																			},
																			{
																				name: "_tmpfile",
																				embedded: false,
																				tag: "",
																				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																			}
																		])))))
																}
															])))
													},
													{
														name: "trailer",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
															stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "remoteAddr",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "requestURI",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "tls",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState",
															[], stdgo.reflect.Reflect.GoType.invalidType))
													},
													{
														name: "cancel",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.chanType(2,
															stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [],
																stdgo.reflect.Reflect.GoType.structType([])))
													},
													{
														name: "response",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "status",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "statusCode",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "proto",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "protoMajor",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "protoMinor",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "header",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
																		stdgo.reflect.Reflect.GoType.invalidType)
																},
																{
																	name: "body",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [],
																		stdgo.reflect.Reflect.GoType.invalidType)
																},
																{
																	name: "contentLength",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "transferEncoding",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
																},
																{
																	name: "close",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "uncompressed",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "trailer",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
																		stdgo.reflect.Reflect.GoType.invalidType)
																},
																{
																	name: "request",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request",
																		[], stdgo.reflect.Reflect.GoType.invalidType))
																},
																{
																	name: "tls",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState",
																		[], stdgo.reflect.Reflect.GoType.invalidType))
																}
															])))
													},
													{
														name: "_ctx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("context.Context", [],
															stdgo.reflect.Reflect.GoType.interfaceType(false, []))
													}
												])))
										},
										{
											name: "_cancelKey",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("net/http.cancelKey", [], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_req",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
														stdgo.reflect.Reflect.GoType.invalidType))
												}
											]))
										},
										{
											name: "_ch",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(0,
												stdgo.reflect.Reflect.GoType.named("net/http.responseAndError", [], stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/http.incomparable", [],
															stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "_res",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													},
													{
														name: "_err",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
													}
												])))
										},
										{
											name: "_addedGzip",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										},
										{
											name: "_continueCh",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(1,
												stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [],
													stdgo.reflect.Reflect.GoType.structType([])))
										},
										{
											name: "_callerGone",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(2,
												stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [],
													stdgo.reflect.Reflect.GoType.structType([])))
										}
									])))
							},
							{
								name: "_writech",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.named("net/http.writeRequest", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_req",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.transportRequest", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "request",
														embedded: true,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													},
													{
														name: "_extra",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
															stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "_trace",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http/httptrace.ClientTrace",
															[], stdgo.reflect.Reflect.GoType.structType([
															{
																name: "getConn",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "gotConn",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "putIdleConn",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "gotFirstResponseByte",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "got100Continue",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "got1xxResponse",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "dnsstart",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "dnsdone",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "connectStart",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "connectDone",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "tlshandshakeStart",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "tlshandshakeDone",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "wroteHeaderField",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "wroteHeaders",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "wait100Continue",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															},
															{
																name: "wroteRequest",
																embedded: false,
																tag: "",
																type: stdgo.reflect.Reflect.GoType.signature(false, [], [],
																	stdgo.reflect.Reflect.GoType.invalidType)
															}
														])))
													},
													{
														name: "_cancelKey",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("net/http.cancelKey", [],
															stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "_mu",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType)
													},
													{
														name: "_err",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
													}
												])))
										},
										{
											name: "_ch",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(1,
												stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType))
										},
										{
											name: "_continueCh",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(2,
												stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [],
													stdgo.reflect.Reflect.GoType.structType([])))
										}
									])))
							},
							{
								name: "_closech",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
							},
							{
								name: "_isProxy",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "_sawEOF",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "_readLimit",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "_writeErrCh",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "_writeLoopDone",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
							},
							{
								name: "_idleAt",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "_idleTimer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Timer", [],
									stdgo.reflect.Reflect.GoType.structType([
										{
											name: "c",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.chanType(2,
												stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType))
										},
										{
											name: "_r",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("time.runtimeTimer", [], stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_pp",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
												},
												{
													name: "_when",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_period",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_f",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
												},
												{
													name: "_arg",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
												},
												{
													name: "_seq",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
												},
												{
													name: "_nextwhen",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_status",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
												}
											]))
										}
									])))
							},
							{
								name: "_mu",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "_numExpectedResponses",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "_closed",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "_canceledErr",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "_broken",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "_reused",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "_mutateHeaderFunc",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
							}
						]))))))).nil(),
			_idleConnWait: new GoMap<stdgo.net.http.Http.T_connectMethodKey,
				stdgo.net.http.Http.T_wantConnQueue>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey",
					[], stdgo.reflect.Reflect.GoType.invalidType),
					stdgo.reflect.Reflect.GoType.named("net/http.wantConnQueue", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_head",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.wantConn",
									[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_cm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net/http.connectMethod", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("net/http.incomparable", [], stdgo.reflect.Reflect.GoType.invalidType)
											},
											{
												name: "_proxyURL",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [],
													stdgo.reflect.Reflect.GoType.invalidType))
											},
											{
												name: "_targetScheme",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_targetAddr",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_onlyH1",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
											}
										]))
									},
									{
										name: "_key",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_ctx",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("context.Context", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_ready",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.chanType(0,
											stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [],
												stdgo.reflect.Reflect.GoType.structType([])))
									},
									{
										name: "_beforeDial",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_afterDial",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_mu",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_pc",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.persistConn", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "_err",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.invalidType)
									}
								]))))
							},
							{
								name: "_headPos",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "_tail",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.wantConn",
									[], stdgo.reflect.Reflect.GoType.invalidType)))
							}
						]))))).nil(),
			_idleLRU: new stdgo.net.http.Http.T_connLRU(),
			_reqMu: ((null : stdgo.sync.Sync.Mutex)),
			_reqCanceler: new GoMap<stdgo.net.http.Http.T_cancelKey, stdgo.Error->
				Void>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http.cancelKey", [],
					stdgo.reflect.Reflect.GoType.invalidType),
				stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))).nil(),
			_altMu: ((null : stdgo.sync.Sync.Mutex)),
			_altProto: new stdgo.sync.atomic.Atomic.Value(),
			_connsPerHostMu: ((null : stdgo.sync.Sync.Mutex)),
			_connsPerHost: new GoMap<stdgo.net.http.Http.T_connectMethodKey,
				GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey", [],
					stdgo.reflect.Reflect.GoType.invalidType),
				stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil(),
			_connsPerHostWait: new GoMap<stdgo.net.http.Http.T_connectMethodKey,
				stdgo.net.http.Http.T_wantConnQueue>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http.connectMethodKey",
					[], stdgo.reflect.Reflect.GoType.invalidType),
					stdgo.reflect.Reflect.GoType.named("net/http.wantConnQueue", [], stdgo.reflect.Reflect.GoType.invalidType)))).nil(),
			proxy: null,
			dialContext: null,
			dialTLSContext: null,
			dialTLS: null,
			tlsclientConfig: new Pointer<stdgo.crypto.tls.Tls.Config>().nil(),
			tlshandshakeTimeout: ((null : stdgo.time.Time.Duration)),
			disableKeepAlives: false,
			disableCompression: false,
			maxIdleConns: 0,
			maxIdleConnsPerHost: 0,
			maxConnsPerHost: 0,
			idleConnTimeout: ((null : stdgo.time.Time.Duration)),
			responseHeaderTimeout: ((null : stdgo.time.Time.Duration)),
			expectContinueTimeout: ((null : stdgo.time.Time.Duration)),
			tlsnextProto: new GoMap<GoString,
				(GoString,
						Pointer<stdgo.crypto.tls.Tls.Conn>) ->
						stdgo.net.http.Http.RoundTripper>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))).nil(),
			proxyConnectHeader: ((null : stdgo.net.http.Http.Header)),
			getProxyConnectHeader: null,
			maxResponseHeaderBytes: 0,
			writeBufferSize: 0,
			readBufferSize: 0,
			_nextProtoOnce: new stdgo.sync.Sync.Once(),
			_h2transport: ((null : stdgo.net.http.Http.T_h2Transport)),
			_tlsNextProtoWasNil: false,
			forceAttemptHTTP2: false
		} : stdgo.net.http.Http.Transport)));
		deferstack.unshift(() -> _t.value.closeIdleConnections());
		var _quitReadCh:Chan<T_failureToReadBody> = new Chan<T_failureToReadBody>(0, () -> new T_failureToReadBody());
		Go.routine({
			var a = function():Void {
				var __tmp__ = stdgo.net.http.Http.readRequest(bufio.Bufio.newReader(_pr.value)), _req:Pointer<stdgo.net.http.Http.Request> = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					stdgo.io.Io.copy(stdgo.io.Io.discard, _req.value.body);
					_req.value.body.close();
				};
				{
					_dr.value._c.send(stdgo.strings.Strings.newReader("HTTP/1.1 204 No Content\r\nConnection: close\r\n\r\n"));
					{
						_quitReadCh.get();
						_dr.value._c.close();
					};
				};
			};
			a();
		});
		var __tmp__ = _t.value.roundTrip(_reqSend),
			_:Pointer<stdgo.net.http.Http.Response> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_req.value.body = _save;
		if (_err != null) {
			_pw.value.close();
			_dr.value._err = _err;
			_quitReadCh.close();
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: new Slice<GoUInt8>().nil(), _1: _err};
			};
		};
		var _dump:Slice<GoUInt8> = _buf.bytes();
		if (_dummyBody) {
			{
				var _i:GoInt = stdgo.bytes.Bytes.index(_dump, (("\r\n\r\n" : Slice<GoByte>)));
				if (_i >= ((0 : GoInt))) {
					_dump = _dump.__slice__(0, _i + ((4 : GoInt)));
				};
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: _dump, _1: ((null : stdgo.Error))};
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
			return {_0: new Slice<GoUInt8>().nil(), _1: ((null : stdgo.Error))};
		};
	};
}

/**
	// Return value if nonempty, def otherwise.
**/
function _valueOrDefault(_value:GoString, _def:GoString):GoString {
	if (_value != (("" : GoString))) {
		return _value;
	};
	return _def;
}

/**
	// DumpRequest returns the given request in its HTTP/1.x wire
	// representation. It should only be used by servers to debug client
	// requests. The returned representation is an approximation only;
	// some details of the initial request are lost while parsing it into
	// an http.Request. In particular, the order and case of header field
	// names are lost. The order of values in multi-valued headers is kept
	// intact. HTTP/2 requests are dumped in HTTP/1.x form, not in their
	// original binary representations.
	//
	// If body is true, DumpRequest also returns the body. To do so, it
	// consumes req.Body and then replaces it with a new io.ReadCloser
	// that yields the same bytes. If DumpRequest returns an error,
	// the state of req is undefined.
	//
	// The documentation for http.Request.Write details which fields
	// of req are included in the dump.
**/
function dumpRequest(_req:Pointer<stdgo.net.http.Http.Request>, _body:Bool):{var _0:Slice<GoByte>; var _1:Error;} {
	var _err:Error = ((null : stdgo.Error));
	var _save:stdgo.io.Io.ReadCloser = _req.value.body;
	if (!_body || _req.value.body == null) {
		_req.value.body = ((null : stdgo.io.Io.ReadCloser));
	} else {
		{
			var __tmp__ = _drainBody(_req.value.body);
			_save = __tmp__._0;
			_req.value.body = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	var _reqURI:GoString = _req.value.requestURI;
	if (_reqURI == (("" : GoString))) {
		_reqURI = _req.value.url.value.requestURI();
	};
	stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "%s %s HTTP/%d.%d\r\n", Go.toInterface(_valueOrDefault(_req.value.method, "GET")), Go.toInterface(_reqURI),
		Go.toInterface(_req.value.protoMajor), Go.toInterface(_req.value.protoMinor));
	var _absRequestURI:Bool = stdgo.strings.Strings.hasPrefix(_req.value.requestURI, "http://")
		|| stdgo.strings.Strings.hasPrefix(_req.value.requestURI, "https://");
	if (!_absRequestURI) {
		var _host:GoString = _req.value.host;
		if (_host == (("" : GoString)) && _req.value.url != null && !_req.value.url.isNil()) {
			_host = _req.value.url.value.host;
		};
		if (_host != (("" : GoString))) {
			stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "Host: %s\r\n", Go.toInterface(_host));
		};
	};
	var _chunked:Bool = _req.value.transferEncoding.length > ((0 : GoInt))
		&& _req.value.transferEncoding[((0 : GoInt))] == (("chunked" : GoString));
	if (_req.value.transferEncoding.length > ((0 : GoInt))) {
		stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "Transfer-Encoding: %s\r\n", Go.toInterface(stdgo.strings.Strings.join(_req.value.transferEncoding, ",")));
	};
	if (_req.value.close) {
		stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "Connection: close\r\n");
	};
	_err = _req.value.header.writeSubset(Go.pointer(_b).value, _reqWriteExcludeHeaderDump);
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	stdgo.io.Io.writeString(Go.pointer(_b).value, "\r\n");
	if (_req.value.body != null) {
		var _dest:stdgo.io.Io.Writer = Go.pointer(_b).value;
		if (_chunked) {
			_dest = newChunkedWriter(_dest);
		};
		{
			var __tmp__ = stdgo.io.Io.copy(_dest, _req.value.body);
			_err = __tmp__._1;
		};
		if (_chunked) {
			((_dest.__underlying__().value : stdgo.io.Io.Closer)).close();
			stdgo.io.Io.writeString(Go.pointer(_b).value, "\r\n");
		};
	};
	_req.value.body = _save;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	return {_0: _b.bytes(), _1: ((null : stdgo.Error))};
}

/**
	// DumpResponse is like DumpRequest but dumps a response.
**/
function dumpResponse(_resp:Pointer<stdgo.net.http.Http.Response>, _body:Bool):{var _0:Slice<GoByte>; var _1:Error;} {
	var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	var _err:Error = ((null : stdgo.Error));
	var _save:stdgo.io.Io.ReadCloser = _resp.value.body;
	var _savecl:GoInt64 = _resp.value.contentLength;
	if (!_body) {
		if (_resp.value.contentLength == ((0 : GoInt64))) {
			_resp.value.body = _emptyBody;
		} else {
			_resp.value.body = new T_failureToReadBody().__copy__();
		};
	} else if (_resp.value.body == null) {
		_resp.value.body = _emptyBody;
	} else {
		{
			var __tmp__ = _drainBody(_resp.value.body);
			_save = __tmp__._0;
			_resp.value.body = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
	_err = _resp.value.write(Go.pointer(_b).value);
	if (Go.toInterface(_err) == Go.toInterface(_errNoBody)) {
		_err = ((null : stdgo.Error));
	};
	_resp.value.body = _save;
	_resp.value.contentLength = _savecl;
	if (_err != null) {
		return {_0: new Slice<GoUInt8>().nil(), _1: _err};
	};
	return {_0: _b.bytes(), _1: ((null : stdgo.Error))};
}

/**
	// NewChunkedReader returns a new chunkedReader that translates the data read from r
	// out of HTTP "chunked" format before returning it.
	// The chunkedReader returns io.EOF when the final 0-length chunk is read.
	//
	// NewChunkedReader is not needed by normal applications. The http package
	// automatically decodes chunking when reading response bodies.
**/
function newChunkedReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
	return net.http.internal.Internal.newChunkedReader(_r);
}

/**
	// NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
	// "chunked" format before writing them to w. Closing the returned chunkedWriter
	// sends the final 0-length chunk that marks the end of the stream but does
	// not send the final CRLF that appears after trailers; trailers and the last
	// CRLF must be written separately.
	//
	// NewChunkedWriter is not needed by normal applications. The http
	// package adds chunking automatically if handlers don't set a
	// Content-Length header. Using NewChunkedWriter inside a handler
	// would result in double chunking or chunking with a Content-Length
	// length, both of which are wrong.
**/
function newChunkedWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
	return net.http.internal.Internal.newChunkedWriter(_w);
}

/**
	// NewServerConn is an artifact of Go's early HTTP implementation.
	// It is low-level, old, and unused by Go's current HTTP stack.
	// We should have deleted it before Go 1.
	//
	// Deprecated: Use the Server in package net/http instead.
**/
function newServerConn(_c:stdgo.net.Net.Conn, _r:Pointer<bufio.Bufio.Reader>):Pointer<ServerConn> {
	if (_r == null || _r.isNil()) {
		_r = bufio.Bufio.newReader(_c);
	};
	return Go.pointer((({
		_c: _c,
		_r: _r,
		_pipereq: new GoMap<Pointer<stdgo.net.http.Http.Request>,
			GoUInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request",
				[],
			stdgo.reflect.Reflect.GoType.structType([
				{
					name: "method",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "url",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "scheme",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "opaque",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "user",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_username",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_password",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_passwordSet",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									}
								])))
						},
						{
							name: "host",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "path",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "rawPath",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "forceQuery",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "rawQuery",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "fragment",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "rawFragment",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						}
					])))
				},
				{
					name: "proto",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "protoMajor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "protoMinor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "header",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
						stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
							stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
				},
				{
					name: "body",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "getBody",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "contentLength",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
				},
				{
					name: "transferEncoding",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
				},
				{
					name: "close",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "host",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "form",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
						stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
							stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
				},
				{
					name: "postForm",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "multipartForm",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.Form", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "value",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))
							},
							{
								name: "file",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.FileHeader",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "filename",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "header",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("net/textproto.MIMEHeader", [],
												stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
										},
										{
											name: "size",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_content",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "_tmpfile",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										}
									])))))
							}
						])))
				},
				{
					name: "trailer",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "remoteAddr",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "requestURI",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "tls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "version",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
							},
							{
								name: "handshakeComplete",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "didResume",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "cipherSuite",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
							},
							{
								name: "negotiatedProtocol",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "negotiatedProtocolIsMutual",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "serverName",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "peerCertificates",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
										[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "raw",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawTBSCertificate",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubjectPublicKeyInfo",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawIssuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signature",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signatureAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKeyAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKey",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
									},
									{
										name: "version",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_neg",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "_abs",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("math/big.nat", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [],
															stdgo.reflect.Reflect.GoType.basic(uint_kind))))
												}
											])))
									},
									{
										name: "issuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "country",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "organization",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "organizationalUnit",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "locality",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "province",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "streetAddress",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "postalCode",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "serialNumber",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "commonName",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "names",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.structType([
													{
														name: "type",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
															stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
													},
													{
														name: "value",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
													}
												])))
											},
											{
												name: "extraNames",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.invalidType))
											}
										]))
									},
									{
										name: "subject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "notBefore",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_wall",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
											},
											{
												name: "_ext",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_loc",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_zone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
																stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_name",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_offset",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																	},
																	{
																		name: "_isDST",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	}
																])))
														},
														{
															name: "_tx",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_when",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																	},
																	{
																		name: "_index",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																	},
																	{
																		name: "_isstd",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	},
																	{
																		name: "_isutc",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	}
																])))
														},
														{
															name: "_extend",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_cacheStart",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheEnd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheZone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
																stdgo.reflect.Reflect.GoType.invalidType))
														}
													])))
											}
										]))
									},
									{
										name: "notAfter",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "keyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "extensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "id",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.invalidType)
												},
												{
													name: "critical",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												}
											])))
									},
									{
										name: "extraExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "unhandledCriticalExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "extKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind)))
									},
									{
										name: "unknownExtKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "basicConstraintsValid",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "isCA",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "maxPathLen",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "maxPathLenZero",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "subjectKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "authorityKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "ocspserver",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "issuingCertificateURL",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "dnsnames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "emailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "ipaddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
									},
									{
										name: "uris",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL",
													[], stdgo.reflect.Reflect.GoType.invalidType)))
									},
									{
										name: "permittedDNSDomainsCritical",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "permittedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
													[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "ip",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType)
											},
											{
												name: "mask",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("net.IPMask", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											}
										]))))
									},
									{
										name: "excludedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
													[], stdgo.reflect.Reflect.GoType.invalidType)))
									},
									{
										name: "permittedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "crldistributionPoints",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "policyIdentifiers",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))))
							},
							{
								name: "verifiedChains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
										[], stdgo.reflect.Reflect.GoType.invalidType))))
							},
							{
								name: "signedCertificateTimestamps",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
							},
							{
								name: "ocspresponse",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "tlsunique",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "_ekm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
							}
						])))
				},
				{
					name: "cancel",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.chanType(2,
						stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
				},
				{
					name: "response",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "status",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "statusCode",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "proto",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "protoMajor",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "protoMinor",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "header",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "body",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "contentLength",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "transferEncoding",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "close",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "uncompressed",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "trailer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "request",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "tls",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							}
						])))
				},
				{
					name: "_ctx",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("context.Context", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				}
			]))),
			stdgo.reflect.Reflect.GoType.basic(uint_kind)))),
		_mu: new stdgo.sync.Sync.Mutex(),
		_re: ((null : stdgo.Error)),
		_we: ((null : stdgo.Error)),
		_lastbody: ((null : stdgo.io.Io.ReadCloser)),
		_nread: 0,
		_nwritten: 0,
		_pipe: new stdgo.net.textproto.Textproto.Pipeline()
	} : ServerConn)));
}

/**
	// NewClientConn is an artifact of Go's early HTTP implementation.
	// It is low-level, old, and unused by Go's current HTTP stack.
	// We should have deleted it before Go 1.
	//
	// Deprecated: Use the Client or Transport in package net/http instead.
**/
function newClientConn(_c:stdgo.net.Net.Conn, _r:Pointer<bufio.Bufio.Reader>):Pointer<ClientConn> {
	if (_r == null || _r.isNil()) {
		_r = bufio.Bufio.newReader(_c);
	};
	return Go.pointer((({
		_c: _c,
		_r: _r,
		_pipereq: new GoMap<Pointer<stdgo.net.http.Http.Request>,
			GoUInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request",
				[],
			stdgo.reflect.Reflect.GoType.structType([
				{
					name: "method",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "url",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "scheme",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "opaque",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "user",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.Userinfo", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_username",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_password",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_passwordSet",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									}
								])))
						},
						{
							name: "host",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "path",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "rawPath",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "forceQuery",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "rawQuery",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "fragment",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "rawFragment",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						}
					])))
				},
				{
					name: "proto",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "protoMajor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "protoMinor",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "header",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [],
						stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
							stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
				},
				{
					name: "body",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "getBody",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "contentLength",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
				},
				{
					name: "transferEncoding",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
				},
				{
					name: "close",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "host",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "form",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [],
						stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
							stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
				},
				{
					name: "postForm",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/url.Values", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "multipartForm",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.Form", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "value",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))
							},
							{
								name: "file",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
									stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("mime/multipart.FileHeader",
											[], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "filename",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										},
										{
											name: "header",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.named("net/textproto.MIMEHeader", [],
												stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))
										},
										{
											name: "size",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_content",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
										},
										{
											name: "_tmpfile",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(string_kind)
										}
									])))))
							}
						])))
				},
				{
					name: "trailer",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "remoteAddr",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "requestURI",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "tls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "version",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
							},
							{
								name: "handshakeComplete",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "didResume",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "cipherSuite",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
							},
							{
								name: "negotiatedProtocol",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "negotiatedProtocolIsMutual",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "serverName",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "peerCertificates",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
										[], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "raw",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawTBSCertificate",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubjectPublicKeyInfo",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawSubject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "rawIssuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signature",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "signatureAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.SignatureAlgorithm", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKeyAlgorithm",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.PublicKeyAlgorithm", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "publicKey",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
									},
									{
										name: "version",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "serialNumber",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("math/big.Int", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_neg",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "_abs",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("math/big.nat", [],
														stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("math/big.Word", [],
															stdgo.reflect.Reflect.GoType.basic(uint_kind))))
												}
											])))
									},
									{
										name: "issuer",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "country",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "organization",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "organizationalUnit",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "locality",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "province",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "streetAddress",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "postalCode",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
											},
											{
												name: "serialNumber",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "commonName",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "names",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.structType([
													{
														name: "type",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
															stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)))
													},
													{
														name: "value",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
													}
												])))
											},
											{
												name: "extraNames",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.AttributeTypeAndValue",
															[], stdgo.reflect.Reflect.GoType.invalidType))
											}
										]))
									},
									{
										name: "subject",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Name", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "notBefore",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_wall",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
											},
											{
												name: "_ext",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_loc",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_zone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
																stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_name",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																	},
																	{
																		name: "_offset",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																	},
																	{
																		name: "_isDST",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	}
																])))
														},
														{
															name: "_tx",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans",
																[], stdgo.reflect.Reflect.GoType.structType([
																	{
																		name: "_when",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																	},
																	{
																		name: "_index",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																	},
																	{
																		name: "_isstd",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	},
																	{
																		name: "_isutc",
																		embedded: false,
																		tag: "",
																		type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																	}
																])))
														},
														{
															name: "_extend",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_cacheStart",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheEnd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_cacheZone",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
																stdgo.reflect.Reflect.GoType.invalidType))
														}
													])))
											}
										]))
									},
									{
										name: "notAfter",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "keyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("crypto/x509.KeyUsage", [], stdgo.reflect.Reflect.GoType.basic(int_kind))
									},
									{
										name: "extensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "id",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
														stdgo.reflect.Reflect.GoType.invalidType)
												},
												{
													name: "critical",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "value",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
												}
											])))
									},
									{
										name: "extraExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509/pkix.Extension", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "unhandledCriticalExtensions",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "extKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("crypto/x509.ExtKeyUsage", [],
											stdgo.reflect.Reflect.GoType.basic(int_kind)))
									},
									{
										name: "unknownExtKeyUsage",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									},
									{
										name: "basicConstraintsValid",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "isCA",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "maxPathLen",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "maxPathLenZero",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "subjectKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "authorityKeyId",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "ocspserver",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "issuingCertificateURL",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "dnsnames",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "emailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "ipaddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("net.IP", [],
											stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))
									},
									{
										name: "uris",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/url.URL",
													[], stdgo.reflect.Reflect.GoType.invalidType)))
									},
									{
										name: "permittedDNSDomainsCritical",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "permittedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedDNSDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
													[], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "ip",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("net.IP", [], stdgo.reflect.Reflect.GoType.invalidType)
											},
											{
												name: "mask",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("net.IPMask", [],
													stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
											}
										]))))
									},
									{
										name: "excludedIPRanges",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.IPNet",
													[], stdgo.reflect.Reflect.GoType.invalidType)))
									},
									{
										name: "permittedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedEmailAddresses",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "permittedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "excludedURIDomains",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "crldistributionPoints",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
									},
									{
										name: "policyIdentifiers",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("encoding/asn1.ObjectIdentifier", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									}
								]))))
							},
							{
								name: "verifiedChains",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/x509.Certificate",
										[], stdgo.reflect.Reflect.GoType.invalidType))))
							},
							{
								name: "signedCertificateTimestamps",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))
							},
							{
								name: "ocspresponse",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "tlsunique",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
							},
							{
								name: "_ekm",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
							}
						])))
				},
				{
					name: "cancel",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.chanType(2,
						stdgo.reflect.Reflect.GoType.named("net/http/httputil.failureToReadBody", [], stdgo.reflect.Reflect.GoType.structType([])))
				},
				{
					name: "response",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Response", [],
						stdgo.reflect.Reflect.GoType.structType([
							{
								name: "status",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "statusCode",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "proto",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "protoMajor",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "protoMinor",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int_kind)
							},
							{
								name: "header",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "body",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("io.ReadCloser", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "contentLength",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
							},
							{
								name: "transferEncoding",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
							},
							{
								name: "close",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "uncompressed",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							},
							{
								name: "trailer",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("net/http.Header", [], stdgo.reflect.Reflect.GoType.invalidType)
							},
							{
								name: "request",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/http.Request", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "tls",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("crypto/tls.ConnectionState", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							}
						])))
				},
				{
					name: "_ctx",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("context.Context", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				}
			]))),
			stdgo.reflect.Reflect.GoType.basic(uint_kind)))),
		_writeReq: (stdgo.net.http.Http.request.value).value.write,
		_mu: new stdgo.sync.Sync.Mutex(),
		_re: ((null : stdgo.Error)),
		_we: ((null : stdgo.Error)),
		_lastbody: ((null : stdgo.io.Io.ReadCloser)),
		_nread: 0,
		_nwritten: 0,
		_pipe: new stdgo.net.textproto.Textproto.Pipeline()
	} : ClientConn)));
}

/**
	// NewProxyClientConn is an artifact of Go's early HTTP implementation.
	// It is low-level, old, and unused by Go's current HTTP stack.
	// We should have deleted it before Go 1.
	//
	// Deprecated: Use the Client or Transport in package net/http instead.
**/
function newProxyClientConn(_c:stdgo.net.Net.Conn, _r:Pointer<bufio.Bufio.Reader>):Pointer<ClientConn> {
	var _cc:Pointer<ClientConn> = newClientConn(_c, _r);
	_cc.value._writeReq = (stdgo.net.http.Http.request.value).value.writeProxy;
	return _cc;
}

function _singleJoiningSlash(_a:GoString, _b:GoString):GoString {
	var _aslash:Bool = stdgo.strings.Strings.hasSuffix(_a, "/");
	var _bslash:Bool = stdgo.strings.Strings.hasPrefix(_b, "/");
	if (_aslash && _bslash) {
		return _a + _b.__slice__(((1 : GoInt)));
	} else if (!_aslash && !_bslash) {
		return _a + (("/" : GoString)) + _b;
	};
	return _a + _b;
}

function _joinURLPath(_a:Pointer<stdgo.net.url.Url.URL>, _b:Pointer<stdgo.net.url.Url.URL>):{var _0:GoString; var _1:GoString;} {
	var _path:GoString = (("" : GoString)),
		_rawpath:GoString = (("" : GoString));
	if (_a.value.rawPath == (("" : GoString)) && _b.value.rawPath == (("" : GoString))) {
		return {_0: _singleJoiningSlash(_a.value.path, _b.value.path), _1: ""};
	};
	var _apath:GoString = _a.value.escapedPath();
	var _bpath:GoString = _b.value.escapedPath();
	var _aslash:Bool = stdgo.strings.Strings.hasSuffix(_apath, "/");
	var _bslash:Bool = stdgo.strings.Strings.hasPrefix(_bpath, "/");
	if (_aslash && _bslash) {
		return {_0: _a.value.path + _b.value.path.__slice__(((1 : GoInt))), _1: _apath + _bpath.__slice__(((1 : GoInt)))};
	} else if (!_aslash && !_bslash) {
		return {_0: _a.value.path + (("/" : GoString)) + _b.value.path, _1: _apath + (("/" : GoString)) + _bpath};
	};
	return {_0: _a.value.path + _b.value.path, _1: _apath + _bpath};
}

/**
	// NewSingleHostReverseProxy returns a new ReverseProxy that routes
	// URLs to the scheme, host, and base path provided in target. If the
	// target's path is "/base" and the incoming request was for "/dir",
	// the target request will be for /base/dir.
	// NewSingleHostReverseProxy does not rewrite the Host header.
	// To rewrite Host headers, use ReverseProxy directly with a custom
	// Director policy.
**/
function newSingleHostReverseProxy(_target:Pointer<stdgo.net.url.Url.URL>):Pointer<ReverseProxy> {
	var _targetQuery:GoString = _target.value.rawQuery;
	var _director:Pointer<stdgo.net.http.Http.Request>->Void = function(_req:Pointer<stdgo.net.http.Http.Request>):Void {
		_req.value.url.value.scheme = _target.value.scheme;
		_req.value.url.value.host = _target.value.host;
		{
			var __tmp__ = _joinURLPath(_target, _req.value.url);
			_req.value.url.value.path = __tmp__._0;
			_req.value.url.value.rawPath = __tmp__._1;
		};
		if (_targetQuery == (("" : GoString)) || _req.value.url.value.rawQuery == (("" : GoString))) {
			_req.value.url.value.rawQuery = _targetQuery + _req.value.url.value.rawQuery;
		} else {
			_req.value.url.value.rawQuery = _targetQuery + (("&" : GoString)) + _req.value.url.value.rawQuery;
		};
		{
			var __tmp__ = _req.value.header.exists("User-Agent") ? {value: _req.value.header["User-Agent"],
				ok: true} : {value: _req.value.header.defaultValue(), ok: false}, _:Slice<GoString> = __tmp__.value, _ok:Bool = __tmp__.ok;
			if (!_ok) {
				_req.value.header.set("User-Agent", "");
			};
		};
	};
	return Go.pointer((({
		director: _director,
		transport: ((null : stdgo.net.http.Http.RoundTripper)),
		flushInterval: new stdgo.time.Time.Duration(),
		errorLog: new Pointer<stdgo.log.Log.Logger>().nil(),
		bufferPool: ((null : BufferPool)),
		modifyResponse: null,
		errorHandler: null
	} : ReverseProxy)));
}

function _copyHeader(_dst:stdgo.net.http.Http.Header, _src:stdgo.net.http.Http.Header):Void {
	{
		var _k;
		var _vv;
		for (_obj in _src.__t__.keyValueIterator()) {
			_k = _obj.key;
			_vv = _obj.value;
			for (_v in _vv) {
				_dst.add(_k, _v);
			};
		};
	};
}

/**
	// shouldPanicOnCopyError reports whether the reverse proxy should
	// panic with http.ErrAbortHandler. This is the right thing to do by
	// default, but Go 1.10 and earlier did not, so existing unit tests
	// weren't expecting panics. Only panic in our own tests, or when
	// running under the HTTP server.
**/
function _shouldPanicOnCopyError(_req:Pointer<stdgo.net.http.Http.Request>):Bool {
	if (_inOurTests) {
		return true;
	};
	if (_req.value.context().value(Go.toInterface(stdgo.net.http.Http.serverContextKey)) != null) {
		return true;
	};
	return false;
}

/**
	// removeConnectionHeaders removes hop-by-hop headers listed in the "Connection" header of h.
	// See RFC 7230, section 6.1
**/
function _removeConnectionHeaders(_h:stdgo.net.http.Http.Header):Void {
	for (_f in _h.__t__["Connection"]) {
		for (_sf in stdgo.strings.Strings.split(_f, ",")) {
			{
				_sf = stdgo.net.textproto.Textproto.trimString(_sf);
				if (_sf != (("" : GoString))) {
					_h.del(_sf);
				};
			};
		};
	};
}

function _upgradeType(_h:stdgo.net.http.Http.Header):GoString {
	if (!golang_org.x.net.http.httpguts.Httpguts.headerValuesContainsToken(_h.__t__["Connection"], "Upgrade")) {
		return "";
	};
	return _h.get("Upgrade");
}

class T_dumpConn_extension_fields {
	public function close(__tmp__):Error
		return __tmp__.close();

	public function localAddr(__tmp__):stdgo.net.Net.Addr
		return __tmp__.localAddr();

	public function remoteAddr(__tmp__):stdgo.net.Net.Addr
		return __tmp__.remoteAddr();

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setReadDeadline(_t);

	public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setWriteDeadline(_t);
}

class T_neverEnding_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);
}

class T_delegateReader_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);
}

class T_failureToReadBody_extension_fields {
	public function read(__tmp__, _0:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_0);

	public function close(__tmp__):Error
		return __tmp__.close();
}

class ServerConn_extension_fields {
	public function hijack(__tmp__):{var _0:stdgo.net.Net.Conn; var _1:Pointer<bufio.Bufio.Reader>;}
		return __tmp__.hijack();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function read(__tmp__):{var _0:Pointer<stdgo.net.http.Http.Request>; var _1:Error;}
		return __tmp__.read();

	public function pending(__tmp__):GoInt
		return __tmp__.pending();

	public function write(__tmp__, _req:Pointer<stdgo.net.http.Http.Request>, _resp:Pointer<stdgo.net.http.Http.Response>):Error
		return __tmp__.write(_req, _resp);
}

class ClientConn_extension_fields {
	public function hijack(__tmp__):{var _0:stdgo.net.Net.Conn; var _1:Pointer<bufio.Bufio.Reader>;}
		return __tmp__.hijack();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function write(__tmp__, _req:Pointer<stdgo.net.http.Http.Request>):Error
		return __tmp__.write(_req);

	public function pending(__tmp__):GoInt
		return __tmp__.pending();

	public function read(__tmp__, _req:Pointer<stdgo.net.http.Http.Request>):{var _0:Pointer<stdgo.net.http.Http.Response>; var _1:Error;}
		return __tmp__.read(_req);

	public function do_(__tmp__, _req:Pointer<stdgo.net.http.Http.Request>):{var _0:Pointer<stdgo.net.http.Http.Response>; var _1:Error;}
		return __tmp__.do_(_req);
}

class ReverseProxy_extension_fields {
	public function _defaultErrorHandler(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>, _err:Error):Void
		__tmp__._defaultErrorHandler(_rw, _req, _err);

	public function _getErrorHandler(__tmp__):(stdgo.net.http.Http.ResponseWriter, Pointer<stdgo.net.http.Http.Request>, Error) -> Void
		return __tmp__._getErrorHandler();

	public function _modifyResponse(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _res:Pointer<stdgo.net.http.Http.Response>,
			_req:Pointer<stdgo.net.http.Http.Request>):Bool
		return __tmp__._modifyResponse(_rw, _res, _req);

	public function serveHTTP(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void
		__tmp__.serveHTTP(_rw, _req);

	public function _flushInterval(__tmp__, _res:Pointer<stdgo.net.http.Http.Response>):stdgo.time.Time.Duration
		return __tmp__._flushInterval(_res);

	public function _copyResponse(__tmp__, _dst:stdgo.io.Io.Writer, _src:stdgo.io.Io.Reader, _flushInterval:stdgo.time.Time.Duration):Error
		return __tmp__._copyResponse(_dst, _src, _flushInterval);

	public function _copyBuffer(__tmp__, _dst:stdgo.io.Io.Writer, _src:stdgo.io.Io.Reader, _buf:Slice<GoByte>):{var _0:GoInt64; var _1:Error;}
		return __tmp__._copyBuffer(_dst, _src, _buf);

	public function _logf(__tmp__, _format:GoString, _args:haxe.Rest<AnyInterface>):Void
		__tmp__._logf(_format, _args);

	public function _handleUpgradeResponse(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>,
			_res:Pointer<stdgo.net.http.Http.Response>):Void
		__tmp__._handleUpgradeResponse(_rw, _req, _res);
}

class T_maxLatencyWriter_extension_fields {
	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function _delayedFlush(__tmp__):Void
		__tmp__._delayedFlush();

	public function _stop(__tmp__):Void
		__tmp__._stop();
}

class T_switchProtocolCopier_extension_fields {
	public function _copyFromBackend(__tmp__, _errc:Chan<Error>):Void
		__tmp__._copyFromBackend(_errc);

	public function _copyToBackend(__tmp__, _errc:Chan<Error>):Void
		__tmp__._copyToBackend(_errc);
}
