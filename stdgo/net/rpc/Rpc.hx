package stdgo.net.rpc;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef ClientCodec = StructType & {
	public function writeRequest(arg0:Pointer<Request>, arg1:AnyInterface):Error;
	public function readResponseHeader(arg0:Pointer<Response>):Error;
	public function readResponseBody(arg0:AnyInterface):Error;
	public function close():Error;
};

typedef ServerCodec = StructType & {
	public function readRequestHeader(arg0:Pointer<Request>):Error;
	public function readRequestBody(arg0:AnyInterface):Error;
	public function writeResponse(arg0:Pointer<Response>, arg1:AnyInterface):Error;
	public function close():Error;
};

@:named class ServerError {
	public function error():GoString {
		var _e = this.__copy__();
		return _e.__t__;
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
		return new ServerError(__t__);
}

@:structInit class Call {
	public function _done():Void {
		var _call = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			_call.value.done.send(_call);
			null;
		};
	}

	public var serviceMethod:GoString = (("" : GoString));
	public var args:AnyInterface = ((null : AnyInterface));
	public var reply:AnyInterface = ((null : AnyInterface));
	public var error:stdgo.Error = ((null : stdgo.Error));
	public var done:Chan<Pointer<Call>> = new Chan<Pointer<Call>>(0, () -> new Pointer<Call>().nil(), true);

	public function new(?serviceMethod:GoString, ?args:AnyInterface, ?reply:AnyInterface, ?error:stdgo.Error, ?done:Chan<Pointer<Call>>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(serviceMethod)
			+ " "
			+ Go.string(args)
			+ " "
			+ Go.string(reply)
			+ " "
			+ Go.string(error)
			+ " "
			+ Go.string(done)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Call(serviceMethod, args, reply, error, done);
	}

	public function __set__(__tmp__) {
		this.serviceMethod = __tmp__.serviceMethod;
		this.args = __tmp__.args;
		this.reply = __tmp__.reply;
		this.error = __tmp__.error;
		this.done = __tmp__.done;
		return this;
	}
}

@:structInit class Client {
	public function call(_serviceMethod:GoString, _args:AnyInterface, _reply:AnyInterface):Error {
		var _client = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _call:Pointer<Call> = _client.value.go(_serviceMethod, Go.toInterface(_args), Go.toInterface(_reply),
			new Chan<Pointer<Call>>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new Pointer<Call>().nil()))
			.value.done.get();
		return _call.value.error;
	}

	public function go(_serviceMethod:GoString, _args:AnyInterface, _reply:AnyInterface, _done:Chan<Pointer<Call>>):Pointer<Call> {
		var _client = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _call:Pointer<Call> = Go.pointer(new Call());
		_call.value.serviceMethod = _serviceMethod;
		_call.value.args = Go.toInterface(_args);
		_call.value.reply = Go.toInterface(_reply);
		if (_done == null || _done.isNil()) {
			_done = new Chan<Pointer<Call>>(((((10 : GoInt)) : GoInt)).toBasic(), () -> new Pointer<Call>().nil());
		} else {
			if (_done.cap() == ((0 : GoInt))) {
				stdgo.log.Log.panic(Go.toInterface("rpc: done channel is unbuffered"));
			};
		};
		_call.value.done = _done;
		_client.value._send(_call);
		return _call;
	}

	public function close():Error {
		var _client = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_client.value._mutex.lock();
		if (_client.value._closing) {
			_client.value._mutex.unlock();
			return errShutdown;
		};
		_client.value._closing = true;
		_client.value._mutex.unlock();
		return _client.value._codec.close();
	}

	public function _input():Void {
		var _client = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		var _response:Response = new Response();
		while (_err == null) {
			_response = new Response().__copy__();
			_err = _client.value._codec.readResponseHeader(Go.pointer(_response));
			if (_err != null) {
				break;
			};
			var _seq:GoUInt64 = _response.seq;
			_client.value._mutex.lock();
			var _call:Pointer<Call> = _client.value._pending[_seq];
			_client.value._pending.remove(_seq);
			_client.value._mutex.unlock();
			if (_call == null || _call.isNil()) {
				_err = _client.value._codec.readResponseBody(((null : AnyInterface)));
				if (_err != null) {
					_err = stdgo.errors.Errors.new_((("reading error body: " : GoString)) + _err.error());
				};
			} else if (_response.error != (("" : GoString))) {
				_call.value.error = new ServerError(_response.error);
				_err = _client.value._codec.readResponseBody(((null : AnyInterface)));
				if (_err != null) {
					_err = stdgo.errors.Errors.new_((("reading error body: " : GoString)) + _err.error());
				};
				_call.value._done();
			} else {
				_err = _client.value._codec.readResponseBody(Go.toInterface(_call.value.reply));
				if (_err != null) {
					_call.value.error = stdgo.errors.Errors.new_((("reading body " : GoString)) + _err.error());
				};
				_call.value._done();
			};
		};
		_client.value._reqMutex.lock();
		_client.value._mutex.lock();
		_client.value._shutdown = true;
		var _closing:Bool = _client.value._closing;
		if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
			if (_closing) {
				_err = errShutdown;
			} else {
				_err = stdgo.io.Io.errUnexpectedEOF;
			};
		};
		for (_call in _client.value._pending) {
			_call.value.error = _err;
			_call.value._done();
		};
		_client.value._mutex.unlock();
		_client.value._reqMutex.unlock();
		if (_debugLog && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof) && !_closing) {
			stdgo.log.Log.println(Go.toInterface("rpc: client protocol error:"), Go.toInterface(_err));
		};
	}

	public function _send(_call:Pointer<Call>):Void {
		var _client = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_client.value._reqMutex.lock();
			deferstack.unshift(() -> _client.value._reqMutex.unlock());
			_client.value._mutex.lock();
			if (_client.value._shutdown || _client.value._closing) {
				_client.value._mutex.unlock();
				_call.value.error = errShutdown;
				_call.value._done();
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			var _seq:GoUInt64 = _client.value._seq;
			_client.value._seq++;
			_client.value._pending[_seq] = _call;
			_client.value._mutex.unlock();
			_client.value._request.seq = _seq;
			_client.value._request.serviceMethod = _call.value.serviceMethod;
			var _err:stdgo.Error = _client.value._codec.writeRequest(Go.pointer(_client.value._request), Go.toInterface(_call.value.args));
			if (_err != null) {
				_client.value._mutex.lock();
				_call = _client.value._pending[_seq];
				_client.value._pending.remove(_seq);
				_client.value._mutex.unlock();
				if (_call != null && !_call.isNil()) {
					_call.value.error = _err;
					_call.value._done();
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

	public var _codec:ClientCodec = ((null : ClientCodec));
	public var _reqMutex:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _request:Request = new Request();
	public var _mutex:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _seq:GoUInt64 = ((0 : GoUInt64));
	public var _pending:GoMap<GoUInt64, Pointer<Call>> = new GoMap<GoUInt64,
		Pointer<Call>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind),
		stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [],
			stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "serviceMethod",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "args",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
				},
				{
					name: "reply",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
				},
				{
					name: "error",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "done",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.chanType(0,
						stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "serviceMethod",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(string_kind)
							},
							{
								name: "args",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
							},
							{
								name: "reply",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
							},
							{
								name: "error",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
							},
							{
								name: "done",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.chanType(0,
									stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [],
										stdgo.reflect.Reflect.GoType.invalidType)))
							}
						]))))
				}
			]))))))).nil();
	public var _closing:Bool = false;
	public var _shutdown:Bool = false;

	public function new(?_codec:ClientCodec, ?_reqMutex:stdgo.sync.Sync.Mutex, ?_request:Request, ?_mutex:stdgo.sync.Sync.Mutex, ?_seq:GoUInt64,
			?_pending:GoMap<GoUInt64, Pointer<Call>>, ?_closing:Bool, ?_shutdown:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_codec) + " " + Go.string(_reqMutex) + " " + Go.string(_request) + " " + Go.string(_mutex) + " " + Go.string(_seq) + " "
			+ Go.string(_pending) + " " + Go.string(_closing) + " " + Go.string(_shutdown) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Client(_codec, _reqMutex, _request, _mutex, _seq, _pending, _closing, _shutdown);
	}

	public function __set__(__tmp__) {
		this._codec = __tmp__._codec;
		this._reqMutex = __tmp__._reqMutex;
		this._request = __tmp__._request;
		this._mutex = __tmp__._mutex;
		this._seq = __tmp__._seq;
		this._pending = __tmp__._pending;
		this._closing = __tmp__._closing;
		this._shutdown = __tmp__._shutdown;
		return this;
	}
}

@:structInit class T_gobClientCodec {
	public function close():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value._rwc.close();
	}

	public function readResponseBody(_body:AnyInterface):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value._dec.value.decode(Go.toInterface(_body));
	}

	public function readResponseHeader(_r:Pointer<Response>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value._dec.value.decode(Go.toInterface(_r));
	}

	public function writeRequest(_r:Pointer<Request>, _body:AnyInterface):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		{
			_err = _c.value._enc.value.encode(Go.toInterface(_r));
			if (_err != null) {
				return _err;
			};
		};
		{
			_err = _c.value._enc.value.encode(Go.toInterface(_body));
			if (_err != null) {
				return _err;
			};
		};
		return _c.value._encBuf.value.flush();
	}

	public var _rwc:stdgo.io.Io.ReadWriteCloser = ((null : stdgo.io.Io.ReadWriteCloser));
	public var _dec:Pointer<stdgo.encoding.gob.Gob.Decoder> = new Pointer<stdgo.encoding.gob.Gob.Decoder>().nil();
	public var _enc:Pointer<stdgo.encoding.gob.Gob.Encoder> = new Pointer<stdgo.encoding.gob.Gob.Encoder>().nil();
	public var _encBuf:Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();

	public function new(?_rwc:stdgo.io.Io.ReadWriteCloser, ?_dec:Pointer<stdgo.encoding.gob.Gob.Decoder>, ?_enc:Pointer<stdgo.encoding.gob.Gob.Encoder>,
			?_encBuf:Pointer<bufio.Bufio.Writer>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_rwc) + " " + Go.string(_dec) + " " + Go.string(_enc) + " " + Go.string(_encBuf) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_gobClientCodec(_rwc, _dec, _enc, _encBuf);
	}

	public function __set__(__tmp__) {
		this._rwc = __tmp__._rwc;
		this._dec = __tmp__._dec;
		this._enc = __tmp__._enc;
		this._encBuf = __tmp__._encBuf;
		return this;
	}
}

@:structInit class T_debugMethod {
	public var type:Pointer<T_methodType> = new Pointer<T_methodType>().nil();
	public var name:GoString = (("" : GoString));

	public function new(?type:Pointer<T_methodType>, ?name:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(type) + " " + Go.string(name) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_debugMethod(type, name);
	}

	public function __set__(__tmp__) {
		this.type = __tmp__.type;
		this.name = __tmp__.name;
		return this;
	}
}

@:named class T_methodArray {
	public function swap(_i:GoInt, _j:GoInt):Void {
		var _m = this.__copy__();
		{
			final __tmp__0 = _m.__t__[_j].__copy__();
			final __tmp__1 = _m.__t__[_i].__copy__();
			_m.__t__[_i] = __tmp__0;
			_m.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _m = this.__copy__();
		return _m.__t__[_i].name < _m.__t__[_j].name;
	}

	public function len():GoInt {
		var _m = this.__copy__();
		return _m.__t__.length;
	}

	public var __t__:Slice<T_debugMethod>;

	public function new(?t:Slice<T_debugMethod>) {
		__t__ = t == null ? new Slice<T_debugMethod>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_methodArray(__t__);

	public function __append__(args:haxe.Rest<T_debugMethod>)
		return new T_methodArray(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_methodArray(this.__t__.__slice__(low, high));
}

@:structInit class T_debugService {
	public var service:Pointer<T_service> = new Pointer<T_service>().nil();
	public var name:GoString = (("" : GoString));
	public var method:T_methodArray = new T_methodArray();

	public function new(?service:Pointer<T_service>, ?name:GoString, ?method:T_methodArray)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(service) + " " + Go.string(name) + " " + Go.string(method) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_debugService(service, name, method);
	}

	public function __set__(__tmp__) {
		this.service = __tmp__.service;
		this.name = __tmp__.name;
		this.method = __tmp__.method;
		return this;
	}
}

@:named class T_serviceArray {
	public function swap(_i:GoInt, _j:GoInt):Void {
		var _s = this.__copy__();
		{
			final __tmp__0 = _s.__t__[_j].__copy__();
			final __tmp__1 = _s.__t__[_i].__copy__();
			_s.__t__[_i] = __tmp__0;
			_s.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _s = this.__copy__();
		return _s.__t__[_i].name < _s.__t__[_j].name;
	}

	public function len():GoInt {
		var _s = this.__copy__();
		return _s.__t__.length;
	}

	public var __t__:Slice<T_debugService>;

	public function new(?t:Slice<T_debugService>) {
		__t__ = t == null ? new Slice<T_debugService>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_serviceArray(__t__);

	public function __append__(args:haxe.Rest<T_debugService>)
		return new T_serviceArray(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_serviceArray(this.__t__.__slice__(low, high));
}

@:structInit class T_debugHTTP {
	public function serveHTTP(_w:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void {
		var _server = this.__copy__();
		var _services:T_serviceArray = new T_serviceArray();
		_server.server.value._serviceMap.range(function(_snamei:AnyInterface, _svci:AnyInterface):Bool {
			var _svc:Pointer<T_service> = ((_svci.value : Pointer<T_service>));
			var _ds:T_debugService = new T_debugService(_svc, ((_snamei.value : GoString)),
				new T_methodArray(new Slice<T_debugMethod>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new T_debugMethod()])
					.setCap((((_svc.value._method == null ? 0 : _svc.value._method.length) : GoInt)).toBasic())).__copy__()).__copy__();
			{
				var _mname;
				var _method;
				for (_obj in _svc.value._method.keyValueIterator()) {
					_mname = _obj.key;
					_method = _obj.value;
					_ds.method = _ds.method.__append__(new T_debugMethod(_method, _mname).__copy__()).__copy__();
				};
			};
			stdgo.sort.Sort.sort(_ds.method.__copy__());
			_services = _services.__append__(_ds.__copy__()).__copy__();
			return true;
		});
		stdgo.sort.Sort.sort(_services.__copy__());
		var _err:stdgo.Error = _debug.value.execute(_w, Go.toInterface(_services.__copy__()));
		if (_err != null) {
			stdgo.fmt.Fmt.fprintln(_w, "rpc: error executing template:", _err.error());
		};
	}

	@:embedded
	public var server:Pointer<Server> = new Pointer<Server>().nil();

	public function new(?server:Pointer<Server>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(server) + "}";
	}

	public function accept(_lis:stdgo.net.Net.Listener)
		server.accept(_0);

	public function handleHTTP(_rpcPath:GoString, _debugPath:GoString)
		server.handleHTTP(_0, _1);

	public function register(_rcvr:AnyInterface):stdgo.Error
		return server.register(_0);

	public function registerName(_name:GoString, _rcvr:AnyInterface):stdgo.Error
		return server.registerName(_0, _1);

	public function serveCodec(_codec:ServerCodec)
		server.serveCodec(_0);

	public function serveConn(_conn:stdgo.io.Io.ReadWriteCloser)
		server.serveConn(_0);

	public function serveRequest(_codec:ServerCodec):stdgo.Error
		return server.serveRequest(_0);

	public function _freeRequest(_req:Pointer<Request>)
		server._freeRequest(_0);

	public function _freeResponse(_resp:Pointer<Response>)
		server._freeResponse(_0);

	public function _getRequest():Pointer<Request>
		return server._getRequest();

	public function _getResponse():Pointer<Response>
		return server._getResponse();

	public function _readRequest(_codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:stdgo.reflect.Reflect.Value;
		var _4:stdgo.reflect.Reflect.Value;
		var _5:Bool;
		var _6:stdgo.Error;
	}
		return server._readRequest(_0);

	public function _readRequestHeader(_codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:Bool;
		var _4:stdgo.Error;
	}
		return server._readRequestHeader(_0);

	public function _register(_rcvr:AnyInterface, _name:GoString, _useName:Bool):stdgo.Error
		return server._register(_0, _1, _2);

	public function _sendResponse(_sending:Pointer<stdgo.sync.Sync.Mutex>, _req:Pointer<Request>, _reply:AnyInterface, _codec:ServerCodec, _errmsg:GoString)
		server._sendResponse(_0, _1, _2, _3, _4);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_debugHTTP(server);
	}

	public function __set__(__tmp__) {
		this.server = __tmp__.server;
		return this;
	}
}

@:structInit class T_methodType {
	public function numCalls():GoUInt {
		var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoUInt = ((0 : GoUInt));
		_m.value.lock();
		_n = _m.value._numCalls;
		_m.value.unlock();
		return _n;
	}

	@:embedded
	public var mutex:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _method:stdgo.reflect.Reflect.Method = new stdgo.reflect.Reflect.Method();
	public var argType:stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
	public var replyType:stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
	public var _numCalls:GoUInt = ((0 : GoUInt));

	public function new(?mutex:stdgo.sync.Sync.Mutex, ?_method:stdgo.reflect.Reflect.Method, ?argType:stdgo.reflect.Reflect.Type,
			?replyType:stdgo.reflect.Reflect.Type, ?_numCalls:GoUInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(mutex)
			+ " "
			+ Go.string(_method)
			+ " "
			+ Go.string(argType)
			+ " "
			+ Go.string(replyType)
			+ " "
			+ Go.string(_numCalls)
			+ "}";
	}

	public function lock()
		mutex.lock();

	public function unlock()
		mutex.unlock();

	public function _lockSlow()
		mutex._lockSlow();

	public function _unlockSlow(_new:GoInt32)
		mutex._unlockSlow(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_methodType(mutex, _method, argType, replyType, _numCalls);
	}

	public function __set__(__tmp__) {
		this.mutex = __tmp__.mutex;
		this._method = __tmp__._method;
		this.argType = __tmp__.argType;
		this.replyType = __tmp__.replyType;
		this._numCalls = __tmp__._numCalls;
		return this;
	}
}

@:structInit class T_service {
	public function _call(_server:Pointer<Server>, _sending:Pointer<stdgo.sync.Sync.Mutex>, _wg:Pointer<stdgo.sync.Sync.WaitGroup>,
			_mtype:Pointer<T_methodType>, _req:Pointer<Request>, _argv:stdgo.reflect.Reflect.Value, _replyv:stdgo.reflect.Reflect.Value,
			_codec:ServerCodec):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			if (_wg != null && !_wg.isNil()) {
				deferstack.unshift(() -> _wg.value.done());
			};
			_mtype.value.lock();
			_mtype.value._numCalls++;
			_mtype.value.unlock();
			var _function:stdgo.reflect.Reflect.Value = _mtype.value._method.func.__copy__();
			var _returnValues:Slice<stdgo.reflect.Reflect.Value> = _function.call(new Slice<stdgo.reflect.Reflect.Value>(_s.value._rcvr.__copy__(),
				_argv.__copy__(), _replyv.__copy__()));
			var _errInter:AnyInterface = Go.toInterface(_returnValues[((0 : GoInt))].interface_());
			var _errmsg:GoString = "";
			if (_errInter != null) {
				_errmsg = ((_errInter.value : Error)).error();
			};
			_server.value._sendResponse(_sending, _req, Go.toInterface(_replyv.interface_()), _codec, _errmsg);
			_server.value._freeRequest(_req);
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

	public var _name:GoString = (("" : GoString));
	public var _rcvr:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
	public var _typ:stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
	public var _method:GoMap<GoString, Pointer<T_methodType>> = new GoMap<GoString,
		Pointer<T_methodType>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.methodType", [],
			stdgo.reflect.Reflect.GoType.named("net/rpc.methodType", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "mutex",
					embedded: true,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "_state",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int32_kind)
						},
						{
							name: "_sema",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))
				},
				{
					name: "_method",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Method", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "pkgPath",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "type",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
						},
						{
							name: "func",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_typ",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_size",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
											},
											{
												name: "_ptrdata",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
											},
											{
												name: "_hash",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
											},
											{
												name: "_tflag",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											},
											{
												name: "_align",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_fieldAlign",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_kind",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_equal",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
											},
											{
												name: "_gcdata",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											},
											{
												name: "_str",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))
											},
											{
												name: "_ptrToThis",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))
											}
										])))
								},
								{
									name: "_ptr",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
								},
								{
									name: "_flag",
									embedded: true,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind))
								}
							]))
						},
						{
							name: "index",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int_kind)
						}
					]))
				},
				{
					name: "argType",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "replyType",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "_numCalls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(uint_kind)
				}
			]))))))).nil();

	public function new(?_name:GoString, ?_rcvr:stdgo.reflect.Reflect.Value, ?_typ:stdgo.reflect.Reflect.Type, ?_method:GoMap<GoString, Pointer<T_methodType>>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_name) + " " + Go.string(_rcvr) + " " + Go.string(_typ) + " " + Go.string(_method) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_service(_name, _rcvr, _typ, _method);
	}

	public function __set__(__tmp__) {
		this._name = __tmp__._name;
		this._rcvr = __tmp__._rcvr;
		this._typ = __tmp__._typ;
		this._method = __tmp__._method;
		return this;
	}
}

@:structInit class Request {
	public var serviceMethod:GoString = (("" : GoString));
	public var seq:GoUInt64 = ((0 : GoUInt64));
	public var _next:Pointer<Request> = new Pointer<Request>().nil();

	public function new(?serviceMethod:GoString, ?seq:GoUInt64, ?_next:Pointer<Request>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(serviceMethod) + " " + Go.string(seq) + " " + Go.string(_next) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Request(serviceMethod, seq, _next);
	}

	public function __set__(__tmp__) {
		this.serviceMethod = __tmp__.serviceMethod;
		this.seq = __tmp__.seq;
		this._next = __tmp__._next;
		return this;
	}
}

@:structInit class Response {
	public var serviceMethod:GoString = (("" : GoString));
	public var seq:GoUInt64 = ((0 : GoUInt64));
	public var error:GoString = (("" : GoString));
	public var _next:Pointer<Response> = new Pointer<Response>().nil();

	public function new(?serviceMethod:GoString, ?seq:GoUInt64, ?error:GoString, ?_next:Pointer<Response>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(serviceMethod) + " " + Go.string(seq) + " " + Go.string(error) + " " + Go.string(_next) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Response(serviceMethod, seq, error, _next);
	}

	public function __set__(__tmp__) {
		this.serviceMethod = __tmp__.serviceMethod;
		this.seq = __tmp__.seq;
		this.error = __tmp__.error;
		this._next = __tmp__._next;
		return this;
	}
}

@:structInit class Server {
	public function handleHTTP(_rpcPath:GoString, _debugPath:GoString):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		stdgo.net.http.Http.handle(_rpcPath, _server.value);
		stdgo.net.http.Http.handle(_debugPath, new T_debugHTTP(_server).__copy__());
	}

	public function serveHTTP(_w:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_req.value.method != (("CONNECT" : GoString))) {
			_w.header().set("Content-Type", "text/plain; charset=utf-8");
			_w.writeHeader(stdgo.net.http.Http.statusMethodNotAllowed);
			stdgo.io.Io.writeString(_w, "405 must CONNECT\n");
			return;
		};
		var __tmp__ = ((_w.__underlying__().value : stdgo.net.http.Http.Hijacker)).hijack(),
			_conn:stdgo.net.Net.Conn = __tmp__._0,
			_:Pointer<bufio.Bufio.ReadWriter> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			stdgo.log.Log.print(Go.toInterface("rpc hijacking "), Go.toInterface(_req.value.remoteAddr), Go.toInterface(": "), Go.toInterface(_err.error()));
			return;
		};
		stdgo.io.Io.writeString(_conn, (("HTTP/1.0 " : GoString)) + _connected + (("\n\n" : GoString)));
		_server.value.serveConn(_conn);
	}

	public function accept(_lis:stdgo.net.Net.Listener):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		while (true) {
			var __tmp__ = _lis.accept(),
				_conn:stdgo.net.Net.Conn = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				stdgo.log.Log.print(Go.toInterface("rpc.Serve: accept:"), Go.toInterface(_err.error()));
				return;
			};
			Go.routine(_server.value.serveConn(_conn));
		};
	}

	public function _readRequestHeader(_codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:Bool;
		var _4:Error;
	} {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _svc:Pointer<T_service> = new Pointer<T_service>().nil(),
			_mtype:Pointer<T_methodType> = new Pointer<T_methodType>().nil(),
			_req:Pointer<Request> = new Pointer<Request>().nil(),
			_keepReading:Bool = false,
			_err:Error = ((null : stdgo.Error));
		_req = _server.value._getRequest();
		_err = _codec.readRequestHeader(_req);
		if (_err != null) {
			_req = new Pointer<Request>().nil();
			if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)
				|| Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
				return {
					_0: _svc,
					_1: _mtype,
					_2: _req,
					_3: _keepReading,
					_4: _err
				};
			};
			_err = stdgo.errors.Errors.new_((("rpc: server cannot decode request: " : GoString)) + _err.error());
			return {
				_0: _svc,
				_1: _mtype,
				_2: _req,
				_3: _keepReading,
				_4: _err
			};
		};
		_keepReading = true;
		var _dot:GoInt = stdgo.strings.Strings.lastIndex(_req.value.serviceMethod, ".");
		if (_dot < ((0 : GoInt))) {
			_err = stdgo.errors.Errors.new_((("rpc: service/method request ill-formed: " : GoString)) + _req.value.serviceMethod);
			return {
				_0: _svc,
				_1: _mtype,
				_2: _req,
				_3: _keepReading,
				_4: _err
			};
		};
		var _serviceName:GoString = _req.value.serviceMethod.__slice__(0, _dot);
		var _methodName:GoString = _req.value.serviceMethod.__slice__(_dot + ((1 : GoInt)));
		var __tmp__ = _server.value._serviceMap.load(Go.toInterface(_serviceName)),
			_svci:AnyInterface = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_err = stdgo.errors.Errors.new_((("rpc: can\'t find service " : GoString)) + _req.value.serviceMethod);
			return {
				_0: _svc,
				_1: _mtype,
				_2: _req,
				_3: _keepReading,
				_4: _err
			};
		};
		_svc = ((_svci.value : Pointer<T_service>));
		_mtype = _svc.value._method[_methodName];
		if (_mtype == null || _mtype.isNil()) {
			_err = stdgo.errors.Errors.new_((("rpc: can\'t find method " : GoString)) + _req.value.serviceMethod);
		};
		return {
			_0: _svc,
			_1: _mtype,
			_2: _req,
			_3: _keepReading,
			_4: _err
		};
	}

	public function _readRequest(_codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:stdgo.reflect.Reflect.Value;
		var _4:stdgo.reflect.Reflect.Value;
		var _5:Bool;
		var _6:Error;
	} {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _service:Pointer<T_service> = new Pointer<T_service>().nil(),
			_mtype:Pointer<T_methodType> = new Pointer<T_methodType>().nil(),
			_req:Pointer<Request> = new Pointer<Request>().nil(),
			_argv:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value(),
			_replyv:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value(),
			_keepReading:Bool = false,
			_err:Error = ((null : stdgo.Error));
		{
			var __tmp__ = _server.value._readRequestHeader(_codec);
			_service = __tmp__._0;
			_mtype = __tmp__._1;
			_req = __tmp__._2;
			_keepReading = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			if (!_keepReading) {
				return {
					_0: _service,
					_1: _mtype,
					_2: _req,
					_3: _argv,
					_4: _replyv,
					_5: _keepReading,
					_6: _err
				};
			};
			_codec.readRequestBody(((null : AnyInterface)));
			return {
				_0: _service,
				_1: _mtype,
				_2: _req,
				_3: _argv,
				_4: _replyv,
				_5: _keepReading,
				_6: _err
			};
		};
		var _argIsValue:Bool = false;
		if (_mtype.value.argType.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
			_argv = stdgo.reflect.Reflect.new_(_mtype.value.argType.elem()).__copy__();
		} else {
			_argv = stdgo.reflect.Reflect.new_(_mtype.value.argType).__copy__();
			_argIsValue = true;
		};
		{
			_err = _codec.readRequestBody(Go.toInterface(_argv.interface_()));
			if (_err != null) {
				return {
					_0: _service,
					_1: _mtype,
					_2: _req,
					_3: _argv,
					_4: _replyv,
					_5: _keepReading,
					_6: _err
				};
			};
		};
		if (_argIsValue) {
			_argv = _argv.elem().__copy__();
		};
		_replyv = stdgo.reflect.Reflect.new_(_mtype.value.replyType.elem()).__copy__();
		if (_mtype.value.replyType.elem().kind().__t__ == stdgo.reflect.Reflect.map.__t__) {
			_replyv.elem().set(stdgo.reflect.Reflect.makeMap(_mtype.value.replyType.elem()).__copy__());
		} else if (_mtype.value.replyType.elem().kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
			_replyv.elem().set(stdgo.reflect.Reflect.makeSlice(_mtype.value.replyType.elem(), ((0 : GoInt)), ((0 : GoInt))).__copy__());
		};
		return {
			_0: _service,
			_1: _mtype,
			_2: _req,
			_3: _argv,
			_4: _replyv,
			_5: _keepReading,
			_6: _err
		};
	}

	public function _freeResponse(_resp:Pointer<Response>):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_server.value._respLock.lock();
		_resp.value._next = _server.value._freeResp;
		_server.value._freeResp = _resp;
		_server.value._respLock.unlock();
	}

	public function _getResponse():Pointer<Response> {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_server.value._respLock.lock();
		var _resp:Pointer<Response> = _server.value._freeResp;
		if (_resp == null || _resp.isNil()) {
			_resp = Go.pointer(new Response());
		} else {
			_server.value._freeResp = _resp.value._next;
			_resp.value = new Response().__copy__();
		};
		_server.value._respLock.unlock();
		return _resp;
	}

	public function _freeRequest(_req:Pointer<Request>):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_server.value._reqLock.lock();
		_req.value._next = _server.value._freeReq;
		_server.value._freeReq = _req;
		_server.value._reqLock.unlock();
	}

	public function _getRequest():Pointer<Request> {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_server.value._reqLock.lock();
		var _req:Pointer<Request> = _server.value._freeReq;
		if (_req == null || _req.isNil()) {
			_req = Go.pointer(new Request());
		} else {
			_server.value._freeReq = _req.value._next;
			_req.value = new Request().__copy__();
		};
		_server.value._reqLock.unlock();
		return _req;
	}

	public function serveRequest(_codec:ServerCodec):Error {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _sending:Pointer<stdgo.sync.Sync.Mutex> = Go.pointer(new stdgo.sync.Sync.Mutex());
		var __tmp__ = _server.value._readRequest(_codec),
			_service:Pointer<T_service> = __tmp__._0,
			_mtype:Pointer<T_methodType> = __tmp__._1,
			_req:Pointer<Request> = __tmp__._2,
			_argv:stdgo.reflect.Reflect.Value = __tmp__._3,
			_replyv:stdgo.reflect.Reflect.Value = __tmp__._4,
			_keepReading:Bool = __tmp__._5,
			_err:stdgo.Error = __tmp__._6;
		if (_err != null) {
			if (!_keepReading) {
				return _err;
			};
			if (_req != null && !_req.isNil()) {
				_server.value._sendResponse(_sending, _req, Go.toInterface(_invalidRequest.__copy__()), _codec, _err.error());
				_server.value._freeRequest(_req);
			};
			return _err;
		};
		_service.value._call(_server, _sending, new Pointer<stdgo.sync.Sync.WaitGroup>().nil(), _mtype, _req, _argv.__copy__(), _replyv.__copy__(), _codec);
		return ((null : stdgo.Error));
	}

	public function serveCodec(_codec:ServerCodec):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _sending:Pointer<stdgo.sync.Sync.Mutex> = Go.pointer(new stdgo.sync.Sync.Mutex());
		var _wg:Pointer<stdgo.sync.Sync.WaitGroup> = Go.pointer(new stdgo.sync.Sync.WaitGroup());
		while (true) {
			var __tmp__ = _server.value._readRequest(_codec),
				_service:Pointer<T_service> = __tmp__._0,
				_mtype:Pointer<T_methodType> = __tmp__._1,
				_req:Pointer<Request> = __tmp__._2,
				_argv:stdgo.reflect.Reflect.Value = __tmp__._3,
				_replyv:stdgo.reflect.Reflect.Value = __tmp__._4,
				_keepReading:Bool = __tmp__._5,
				_err:stdgo.Error = __tmp__._6;
			if (_err != null) {
				if (_debugLog && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
					stdgo.log.Log.println(Go.toInterface("rpc:"), Go.toInterface(_err));
				};
				if (!_keepReading) {
					break;
				};
				if (_req != null && !_req.isNil()) {
					_server.value._sendResponse(_sending, _req, Go.toInterface(_invalidRequest.__copy__()), _codec, _err.error());
					_server.value._freeRequest(_req);
				};
				continue;
			};
			_wg.value.add(((1 : GoInt)));
			Go.routine(_service.value._call(_server, _sending, _wg, _mtype, _req, _argv.__copy__(), _replyv.__copy__(), _codec));
		};
		_wg.value.wait();
		_codec.close();
	}

	public function serveConn(_conn:stdgo.io.Io.ReadWriteCloser):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Pointer<bufio.Bufio.Writer> = bufio.Bufio.newWriter(_conn);
		var _srv:Pointer<T_gobServerCodec> = Go.pointer((({
			_rwc: _conn,
			_dec: stdgo.encoding.gob.Gob.newDecoder(_conn),
			_enc: stdgo.encoding.gob.Gob.newEncoder(_buf.value),
			_encBuf: _buf,
			_closed: false
		} : T_gobServerCodec)));
		_server.value.serveCodec(_srv.value);
	}

	public function _sendResponse(_sending:Pointer<stdgo.sync.Sync.Mutex>, _req:Pointer<Request>, _reply:AnyInterface, _codec:ServerCodec,
			_errmsg:GoString):Void {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _resp:Pointer<Response> = _server.value._getResponse();
		_resp.value.serviceMethod = _req.value.serviceMethod;
		if (_errmsg != (("" : GoString))) {
			_resp.value.error = _errmsg;
			_reply = Go.toInterface(_invalidRequest.__copy__());
		};
		_resp.value.seq = _req.value.seq;
		_sending.value.lock();
		var _err:stdgo.Error = _codec.writeResponse(_resp, Go.toInterface(_reply));
		if (_debugLog && _err != null) {
			stdgo.log.Log.println(Go.toInterface("rpc: writing response:"), Go.toInterface(_err));
		};
		_sending.value.unlock();
		_server.value._freeResponse(_resp);
	}

	public function _register(_rcvr:AnyInterface, _name:GoString, _useName:Bool):Error {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _s:Pointer<T_service> = Go.pointer(new T_service());
		_s.value._typ = stdgo.reflect.Reflect.typeOf(Go.toInterface(_rcvr));
		_s.value._rcvr = stdgo.reflect.Reflect.valueOf(Go.toInterface(_rcvr)).__copy__();
		var _sname:GoString = stdgo.reflect.Reflect.indirect(_s.value._rcvr.__copy__()).type().name();
		if (_useName) {
			_sname = _name;
		};
		if (_sname == (("" : GoString))) {
			var _s:GoString = (("rpc.Register: no service name for type " : GoString)) + _s.value._typ.toString();
			stdgo.log.Log.print(Go.toInterface(_s));
			return stdgo.errors.Errors.new_(_s);
		};
		if (!stdgo.go.token.Token.isExported(_sname) && !_useName) {
			var _s:GoString = (("rpc.Register: type " : GoString)) + _sname + ((" is not exported" : GoString));
			stdgo.log.Log.print(Go.toInterface(_s));
			return stdgo.errors.Errors.new_(_s);
		};
		_s.value._name = _sname;
		_s.value._method = _suitableMethods(_s.value._typ, true);
		if ((_s.value._method == null ? 0 : _s.value._method.length) == ((0 : GoInt))) {
			var _str:GoString = "";
			var _method:GoMap<GoString, Pointer<T_methodType>> = _suitableMethods(stdgo.reflect.Reflect.ptrTo(_s.value._typ), false);
			if ((_method == null ? 0 : _method.length) != ((0 : GoInt))) {
				_str = (("rpc.Register: type " : GoString))
					+ _sname
					+ ((" has no exported methods of suitable type (hint: pass a pointer to value of that type)" : GoString));
			} else {
				_str = (("rpc.Register: type " : GoString)) + _sname + ((" has no exported methods of suitable type" : GoString));
			};
			stdgo.log.Log.print(Go.toInterface(_str));
			return stdgo.errors.Errors.new_(_str);
		};
		{
			var __tmp__ = _server.value._serviceMap.loadOrStore(Go.toInterface(_sname), Go.toInterface(_s)),
				_:AnyInterface = __tmp__._0,
				_dup:Bool = __tmp__._1;
			if (_dup) {
				return stdgo.errors.Errors.new_((("rpc: service already defined: " : GoString)) + _sname);
			};
		};
		return ((null : stdgo.Error));
	}

	public function registerName(_name:GoString, _rcvr:AnyInterface):Error {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _server.value._register(Go.toInterface(_rcvr), _name, true);
	}

	public function register(_rcvr:AnyInterface):Error {
		var _server = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _server.value._register(Go.toInterface(_rcvr), "", false);
	}

	public var _serviceMap:stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
	public var _reqLock:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _freeReq:Pointer<Request> = new Pointer<Request>().nil();
	public var _respLock:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _freeResp:Pointer<Response> = new Pointer<Response>().nil();

	public function new(?_serviceMap:stdgo.sync.Sync.Map_, ?_reqLock:stdgo.sync.Sync.Mutex, ?_freeReq:Pointer<Request>, ?_respLock:stdgo.sync.Sync.Mutex,
			?_freeResp:Pointer<Response>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_serviceMap) + " " + Go.string(_reqLock) + " " + Go.string(_freeReq) + " " + Go.string(_respLock) + " "
			+ Go.string(_freeResp) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Server(_serviceMap, _reqLock, _freeReq, _respLock, _freeResp);
	}

	public function __set__(__tmp__) {
		this._serviceMap = __tmp__._serviceMap;
		this._reqLock = __tmp__._reqLock;
		this._freeReq = __tmp__._freeReq;
		this._respLock = __tmp__._respLock;
		this._freeResp = __tmp__._freeResp;
		return this;
	}
}

@:structInit class T_gobServerCodec {
	public function close():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_c.value._closed) {
			return ((null : stdgo.Error));
		};
		_c.value._closed = true;
		return _c.value._rwc.close();
	}

	public function writeResponse(_r:Pointer<Response>, _body:AnyInterface):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		{
			_err = _c.value._enc.value.encode(Go.toInterface(_r));
			if (_err != null) {
				if (_c.value._encBuf.value.flush() == null) {
					stdgo.log.Log.println(Go.toInterface("rpc: gob error encoding response:"), Go.toInterface(_err));
					_c.value.close();
				};
				return _err;
			};
		};
		{
			_err = _c.value._enc.value.encode(Go.toInterface(_body));
			if (_err != null) {
				if (_c.value._encBuf.value.flush() == null) {
					stdgo.log.Log.println(Go.toInterface("rpc: gob error encoding body:"), Go.toInterface(_err));
					_c.value.close();
				};
				return _err;
			};
		};
		return _c.value._encBuf.value.flush();
	}

	public function readRequestBody(_body:AnyInterface):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value._dec.value.decode(Go.toInterface(_body));
	}

	public function readRequestHeader(_r:Pointer<Request>):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c.value._dec.value.decode(Go.toInterface(_r));
	}

	public var _rwc:stdgo.io.Io.ReadWriteCloser = ((null : stdgo.io.Io.ReadWriteCloser));
	public var _dec:Pointer<stdgo.encoding.gob.Gob.Decoder> = new Pointer<stdgo.encoding.gob.Gob.Decoder>().nil();
	public var _enc:Pointer<stdgo.encoding.gob.Gob.Encoder> = new Pointer<stdgo.encoding.gob.Gob.Encoder>().nil();
	public var _encBuf:Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
	public var _closed:Bool = false;

	public function new(?_rwc:stdgo.io.Io.ReadWriteCloser, ?_dec:Pointer<stdgo.encoding.gob.Gob.Decoder>, ?_enc:Pointer<stdgo.encoding.gob.Gob.Encoder>,
			?_encBuf:Pointer<bufio.Bufio.Writer>, ?_closed:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_rwc)
			+ " "
			+ Go.string(_dec)
			+ " "
			+ Go.string(_enc)
			+ " "
			+ Go.string(_encBuf)
			+ " "
			+ Go.string(_closed)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_gobServerCodec(_rwc, _dec, _enc, _encBuf, _closed);
	}

	public function __set__(__tmp__) {
		this._rwc = __tmp__._rwc;
		this._dec = __tmp__._dec;
		this._enc = __tmp__._enc;
		this._encBuf = __tmp__._encBuf;
		this._closed = __tmp__._closed;
		return this;
	}
}

@:structInit @:local class T__struct_81 {
	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_81();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

var _typeOfError:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.Error>().nil() : Pointer<Error>)))).elem();
final _debugText:GoString = "<html>\n\t<body>\n\t<title>Services</title>\n\t{{range .}}\n\t<hr>\n\tService {{.Name}}\n\t<hr>\n\t\t<table>\n\t\t<th align=center>Method</th><th align=center>Calls</th>\n\t\t{{range .Method}}\n\t\t\t<tr>\n\t\t\t<td align=left font=fixed>{{.Name}}({{.Type.ArgType}}, {{.Type.ReplyType}}) error</td>\n\t\t\t<td align=center>{{.Type.NumCalls}}</td>\n\t\t\t</tr>\n\t\t{{end}}\n\t\t</table>\n\t{{end}}\n\t</body>\n\t</html>";

var _debug:Pointer<stdgo.html.template.Template.Template> = {
	var __tmp__ = stdgo.html.template.Template.new_("RPC debug").value.parse(_debugText);
	stdgo.html.template.Template.must(((__tmp__._0 : Pointer<stdgo.html.template.Template.Template>)), ((__tmp__._1 : stdgo.Error)));
};

var _debugLog:Bool = false;
var _connected:GoString = "200 Connected to Go RPC";
var _invalidRequest:T__struct_81 = new T__struct_81().__copy__();
final defaultDebugPath:GoString = "/debug/rpc";
final defaultRPCPath:GoString = "/_goRPC_";
var defaultServer:Pointer<Server> = newServer();
var errShutdown:stdgo.Error = stdgo.errors.Errors.new_("connection is shut down");

/**
	// NewClient returns a new Client to handle requests to the
	// set of services at the other end of the connection.
	// It adds a buffer to the write side of the connection so
	// the header and payload are sent as a unit.
	//
	// The read and write halves of the connection are serialized independently,
	// so no interlocking is required. However each half may be accessed
	// concurrently so the implementation of conn should protect against
	// concurrent reads or concurrent writes.
**/
function newClient(_conn:stdgo.io.Io.ReadWriteCloser):Pointer<Client> {
	var _encBuf:Pointer<bufio.Bufio.Writer> = bufio.Bufio.newWriter(_conn);
	var _client:Pointer<T_gobClientCodec> = Go.pointer(new T_gobClientCodec(_conn, stdgo.encoding.gob.Gob.newDecoder(_conn),
		stdgo.encoding.gob.Gob.newEncoder(_encBuf.value), _encBuf));
	return newClientWithCodec(_client.value);
}

/**
	// NewClientWithCodec is like NewClient but uses the specified
	// codec to encode requests and decode responses.
**/
function newClientWithCodec(_codec:ClientCodec):Pointer<Client> {
	var _client:Pointer<Client> = Go.pointer((({
		_codec: _codec,
		_pending: new GoMap<GoUInt64,
			Pointer<Call>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [],
				stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [], stdgo.reflect.Reflect.GoType.structType([
					{
						name: "serviceMethod",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(string_kind)
					},
					{
						name: "args",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
					},
					{
						name: "reply",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
					},
					{
						name: "error",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
					},
					{
						name: "done",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.chanType(0,
							stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "serviceMethod",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "args",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
									},
									{
										name: "reply",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.interfaceType(true, [])
									},
									{
										name: "error",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
									},
									{
										name: "done",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.chanType(0,
											stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.Call", [],
												stdgo.reflect.Reflect.GoType.invalidType)))
									}
								]))))
					}
				]))))))),
		_reqMutex: new stdgo.sync.Sync.Mutex(),
		_request: new Request(),
		_mutex: new stdgo.sync.Sync.Mutex(),
		_seq: 0,
		_closing: false,
		_shutdown: false
	} : Client)));
	Go.routine(_client.value._input());
	return _client;
}

/**
	// DialHTTP connects to an HTTP RPC server at the specified network address
	// listening on the default HTTP RPC path.
**/
function dialHTTP(_network:GoString, _address:GoString):{var _0:Pointer<Client>; var _1:Error;} {
	return dialHTTPPath(_network, _address, defaultRPCPath);
}

/**
	// DialHTTPPath connects to an HTTP RPC server
	// at the specified network address and path.
**/
function dialHTTPPath(_network:GoString, _address:GoString, _path:GoString):{var _0:Pointer<Client>; var _1:Error;} {
	var __tmp__ = stdgo.net.Net.dial(_network, _address),
		_conn:stdgo.net.Net.Conn = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Client>().nil(), _1: _err};
	};
	stdgo.io.Io.writeString(_conn, (("CONNECT " : GoString)) + _path + ((" HTTP/1.0\n\n" : GoString)));
	var __tmp__ = stdgo.net.http.Http.readResponse(bufio.Bufio.newReader(_conn), Go.pointer((({
		method: "CONNECT",
		url: new Pointer<stdgo.net.url.Url.URL>().nil(),
		proto: "",
		protoMajor: 0,
		protoMinor: 0,
		header: ((null : stdgo.net.http.Http.Header)),
		body: ((null : stdgo.io.Io.ReadCloser)),
		getBody: null,
		contentLength: 0,
		transferEncoding: new Slice<GoString>().nil(),
		close: false,
		host: "",
		form: ((null : stdgo.net.url.Url.Values)),
		postForm: ((null : stdgo.net.url.Url.Values)),
		multipartForm: new Pointer<stdgo.mime.multipart.Multipart.Form>().nil(),
		trailer: ((null : stdgo.net.http.Http.Header)),
		remoteAddr: "",
		requestURI: "",
		tls: new Pointer<stdgo.crypto.tls.Tls.ConnectionState>().nil(),
		cancel: new Chan<T__struct_81>(0, () -> new T__struct_81(), true),
		response: new Pointer<stdgo.net.http.Http.Response>().nil(),
		_ctx: ((null : stdgo.context.Context.Context))
	} : stdgo.net.http.Http.Request)))),
		_resp:Pointer<stdgo.net.http.Http.Response> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err == null && _resp.value.status == _connected) {
		return {_0: newClient(_conn), _1: ((null : stdgo.Error))};
	};
	if (_err == null) {
		_err = stdgo.errors.Errors.new_((("unexpected HTTP response: " : GoString)) + _resp.value.status);
	};
	_conn.close();
	return {_0: new Pointer<Client>().nil(), _1: Go.pointer((({
		op: "dial-http",
		net: _network + ((" " : GoString)) + _address,
		addr: ((null : stdgo.net.Net.Addr)),
		err: _err,
		source: ((null : stdgo.net.Net.Addr))
	} : stdgo.net.Net.OpError))).value};
}

/**
	// Dial connects to an RPC server at the specified network address.
**/
function dial(_network:GoString, _address:GoString):{var _0:Pointer<Client>; var _1:Error;} {
	var __tmp__ = stdgo.net.Net.dial(_network, _address),
		_conn:stdgo.net.Net.Conn = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Client>().nil(), _1: _err};
	};
	return {_0: newClient(_conn), _1: ((null : stdgo.Error))};
}

/**
	// NewServer returns a new Server.
**/
function newServer():Pointer<Server> {
	return Go.pointer(new Server());
}

/**
	// Is this type exported or a builtin?
**/
function _isExportedOrBuiltinType(_t:stdgo.reflect.Reflect.Type):Bool {
	while (_t.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
		_t = _t.elem();
	};
	return stdgo.go.token.Token.isExported(_t.name()) || _t.pkgPath() == (("" : GoString));
}

/**
	// suitableMethods returns suitable Rpc methods of typ, it will report
	// error using log if reportErr is true.
**/
function _suitableMethods(_typ:stdgo.reflect.Reflect.Type, _reportErr:Bool):GoMap<GoString, Pointer<T_methodType>> {
	var _methods:GoMap<GoString, Pointer<T_methodType>> = new GoMap<GoString,
		Pointer<T_methodType>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net/rpc.methodType", [],
			stdgo.reflect.Reflect.GoType.named("net/rpc.methodType", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "mutex",
					embedded: true,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "_state",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int32_kind)
						},
						{
							name: "_sema",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))
				},
				{
					name: "_method",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Method", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "pkgPath",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "type",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
						},
						{
							name: "func",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_typ",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_size",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
											},
											{
												name: "_ptrdata",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
											},
											{
												name: "_hash",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
											},
											{
												name: "_tflag",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											},
											{
												name: "_align",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_fieldAlign",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_kind",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
											},
											{
												name: "_equal",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)
											},
											{
												name: "_gcdata",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
											},
											{
												name: "_str",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))
											},
											{
												name: "_ptrToThis",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))
											}
										])))
								},
								{
									name: "_ptr",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
								},
								{
									name: "_flag",
									embedded: true,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind))
								}
							]))
						},
						{
							name: "index",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int_kind)
						}
					]))
				},
				{
					name: "argType",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "replyType",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
				},
				{
					name: "_numCalls",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(uint_kind)
				}
			])))))));
	{
		var _m:GoInt = ((0 : GoInt));
		Go.cfor(_m < _typ.numMethod(), _m++, {
			var _method:stdgo.reflect.Reflect.Method = _typ.method(_m).__copy__();
			var _mtype:stdgo.reflect.Reflect.Type = _method.type;
			var _mname:GoString = _method.name;
			if (!_method.isExported()) {
				continue;
			};
			if (_mtype.numIn() != ((3 : GoInt))) {
				if (_reportErr) {
					stdgo.log.Log.printf("rpc.Register: method %q has %d input parameters; needs exactly three\n", Go.toInterface(_mname),
						Go.toInterface(_mtype.numIn()));
				};
				continue;
			};
			var _argType:stdgo.reflect.Reflect.Type = _mtype.in_(((1 : GoInt)));
			if (!_isExportedOrBuiltinType(_argType)) {
				if (_reportErr) {
					stdgo.log.Log.printf("rpc.Register: argument type of method %q is not exported: %q\n", Go.toInterface(_mname), Go.toInterface(_argType));
				};
				continue;
			};
			var _replyType:stdgo.reflect.Reflect.Type = _mtype.in_(((2 : GoInt)));
			if (_replyType.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
				if (_reportErr) {
					stdgo.log.Log.printf("rpc.Register: reply type of method %q is not a pointer: %q\n", Go.toInterface(_mname), Go.toInterface(_replyType));
				};
				continue;
			};
			if (!_isExportedOrBuiltinType(_replyType)) {
				if (_reportErr) {
					stdgo.log.Log.printf("rpc.Register: reply type of method %q is not exported: %q\n", Go.toInterface(_mname), Go.toInterface(_replyType));
				};
				continue;
			};
			if (_mtype.numOut() != ((1 : GoInt))) {
				if (_reportErr) {
					stdgo.log.Log.printf("rpc.Register: method %q has %d output parameters; needs exactly one\n", Go.toInterface(_mname),
						Go.toInterface(_mtype.numOut()));
				};
				continue;
			};
			{
				var _returnType:stdgo.reflect.Reflect.Type = _mtype.out(((0 : GoInt)));
				if (!(_returnType.toString() == _typeOfError.toString())) {
					if (_reportErr) {
						stdgo.log.Log.printf("rpc.Register: return type of method %q is %q, must be error\n", Go.toInterface(_mname),
							Go.toInterface(_returnType));
					};
					continue;
				};
			};
			_methods[_mname] = Go.pointer((({
				_method: _method.__copy__(),
				argType: _argType,
				replyType: _replyType,
				mutex: new stdgo.sync.Sync.Mutex(),
				_numCalls: 0
			} : T_methodType)));
		});
	};
	return _methods;
}

/**
	// Register publishes the receiver's methods in the DefaultServer.
**/
function register(_rcvr:AnyInterface):Error {
	return defaultServer.value.register(Go.toInterface(_rcvr));
}

/**
	// RegisterName is like Register but uses the provided name for the type
	// instead of the receiver's concrete type.
**/
function registerName(_name:GoString, _rcvr:AnyInterface):Error {
	return defaultServer.value.registerName(_name, Go.toInterface(_rcvr));
}

/**
	// ServeConn runs the DefaultServer on a single connection.
	// ServeConn blocks, serving the connection until the client hangs up.
	// The caller typically invokes ServeConn in a go statement.
	// ServeConn uses the gob wire format (see package gob) on the
	// connection. To use an alternate codec, use ServeCodec.
	// See NewClient's comment for information about concurrent access.
**/
function serveConn(_conn:stdgo.io.Io.ReadWriteCloser):Void {
	defaultServer.value.serveConn(_conn);
}

/**
	// ServeCodec is like ServeConn but uses the specified codec to
	// decode requests and encode responses.
**/
function serveCodec(_codec:ServerCodec):Void {
	defaultServer.value.serveCodec(_codec);
}

/**
	// ServeRequest is like ServeCodec but synchronously serves a single request.
	// It does not close the codec upon completion.
**/
function serveRequest(_codec:ServerCodec):Error {
	return defaultServer.value.serveRequest(_codec);
}

/**
	// Accept accepts connections on the listener and serves requests
	// to DefaultServer for each incoming connection.
	// Accept blocks; the caller typically invokes it in a go statement.
**/
function accept(_lis:stdgo.net.Net.Listener):Void {
	defaultServer.value.accept(_lis);
}

/**
	// HandleHTTP registers an HTTP handler for RPC messages to DefaultServer
	// on DefaultRPCPath and a debugging handler on DefaultDebugPath.
	// It is still necessary to invoke http.Serve(), typically in a go statement.
**/
function handleHTTP():Void {
	defaultServer.value.handleHTTP(defaultRPCPath, defaultDebugPath);
}

class ServerError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class Call_extension_fields {
	public function _done(__tmp__):Void
		__tmp__._done();
}

class Client_extension_fields {
	public function _send(__tmp__, _call:Pointer<Call>):Void
		__tmp__._send(_call);

	public function _input(__tmp__):Void
		__tmp__._input();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function go(__tmp__, _serviceMethod:GoString, _args:AnyInterface, _reply:AnyInterface, _done:Chan<Pointer<Call>>):Pointer<Call>
		return __tmp__.go(_serviceMethod, _args, _reply, _done);

	public function call(__tmp__, _serviceMethod:GoString, _args:AnyInterface, _reply:AnyInterface):Error
		return __tmp__.call(_serviceMethod, _args, _reply);
}

class T_gobClientCodec_extension_fields {
	public function writeRequest(__tmp__, _r:Pointer<Request>, _body:AnyInterface):Error
		return __tmp__.writeRequest(_r, _body);

	public function readResponseHeader(__tmp__, _r:Pointer<Response>):Error
		return __tmp__.readResponseHeader(_r);

	public function readResponseBody(__tmp__, _body:AnyInterface):Error
		return __tmp__.readResponseBody(_body);

	public function close(__tmp__):Error
		return __tmp__.close();
}

class T_methodArray_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);
}

class T_serviceArray_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);
}

class T_debugHTTP_extension_fields {
	public function serveHTTP(__tmp__, _w:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void
		__tmp__.serveHTTP(_w, _req);
}

class T_methodType_extension_fields {
	public function numCalls(__tmp__):GoUInt
		return __tmp__.numCalls();
}

class T_service_extension_fields {
	public function _call(__tmp__, _server:Pointer<Server>, _sending:Pointer<stdgo.sync.Sync.Mutex>, _wg:Pointer<stdgo.sync.Sync.WaitGroup>,
			_mtype:Pointer<T_methodType>, _req:Pointer<Request>, _argv:stdgo.reflect.Reflect.Value, _replyv:stdgo.reflect.Reflect.Value,
			_codec:ServerCodec):Void
		__tmp__._call(_server, _sending, _wg, _mtype, _req, _argv, _replyv, _codec);
}

class Server_extension_fields {
	public function register(__tmp__, _rcvr:AnyInterface):Error
		return __tmp__.register(_rcvr);

	public function registerName(__tmp__, _name:GoString, _rcvr:AnyInterface):Error
		return __tmp__.registerName(_name, _rcvr);

	public function _register(__tmp__, _rcvr:AnyInterface, _name:GoString, _useName:Bool):Error
		return __tmp__._register(_rcvr, _name, _useName);

	public function _sendResponse(__tmp__, _sending:Pointer<stdgo.sync.Sync.Mutex>, _req:Pointer<Request>, _reply:AnyInterface, _codec:ServerCodec,
			_errmsg:GoString):Void
		__tmp__._sendResponse(_sending, _req, _reply, _codec, _errmsg);

	public function serveConn(__tmp__, _conn:stdgo.io.Io.ReadWriteCloser):Void
		__tmp__.serveConn(_conn);

	public function serveCodec(__tmp__, _codec:ServerCodec):Void
		__tmp__.serveCodec(_codec);

	public function serveRequest(__tmp__, _codec:ServerCodec):Error
		return __tmp__.serveRequest(_codec);

	public function _getRequest(__tmp__):Pointer<Request>
		return __tmp__._getRequest();

	public function _freeRequest(__tmp__, _req:Pointer<Request>):Void
		__tmp__._freeRequest(_req);

	public function _getResponse(__tmp__):Pointer<Response>
		return __tmp__._getResponse();

	public function _freeResponse(__tmp__, _resp:Pointer<Response>):Void
		__tmp__._freeResponse(_resp);

	public function _readRequest(__tmp__, _codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:stdgo.reflect.Reflect.Value;
		var _4:stdgo.reflect.Reflect.Value;
		var _5:Bool;
		var _6:Error;
	}
		return __tmp__._readRequest(_codec);

	public function _readRequestHeader(__tmp__, _codec:ServerCodec):{
		var _0:Pointer<T_service>;
		var _1:Pointer<T_methodType>;
		var _2:Pointer<Request>;
		var _3:Bool;
		var _4:Error;
	}
		return __tmp__._readRequestHeader(_codec);

	public function accept(__tmp__, _lis:stdgo.net.Net.Listener):Void
		__tmp__.accept(_lis);

	public function serveHTTP(__tmp__, _w:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void
		__tmp__.serveHTTP(_w, _req);

	public function handleHTTP(__tmp__, _rpcPath:GoString, _debugPath:GoString):Void
		__tmp__.handleHTTP(_rpcPath, _debugPath);
}

class T_gobServerCodec_extension_fields {
	public function readRequestHeader(__tmp__, _r:Pointer<Request>):Error
		return __tmp__.readRequestHeader(_r);

	public function readRequestBody(__tmp__, _body:AnyInterface):Error
		return __tmp__.readRequestBody(_body);

	public function writeResponse(__tmp__, _r:Pointer<Response>, _body:AnyInterface):Error
		return __tmp__.writeResponse(_r, _body);

	public function close(__tmp__):Error
		return __tmp__.close();
}
