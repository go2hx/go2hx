package stdgo.net;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef Addr = StructType & {
	public function network():GoString;
	public function toString():GoString;
};

typedef Conn = StructType & {
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;};
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;};
	public function close():Error;
	public function localAddr():Addr;
	public function remoteAddr():Addr;
	public function setDeadline(_t:stdgo.time.Time.Time):Error;
	public function setReadDeadline(_t:stdgo.time.Time.Time):Error;
	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error;
};

typedef PacketConn = StructType & {
	public function readFrom(_p:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;};
	public function writeTo(_p:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;};
	public function close():Error;
	public function localAddr():Addr;
	public function setDeadline(_t:stdgo.time.Time.Time):Error;
	public function setReadDeadline(_t:stdgo.time.Time.Time):Error;
	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error;
};

typedef Listener = StructType & {
	public function accept():{var _0:Conn; var _1:Error;};
	public function close():Error;
	public function addr():Addr;
};

typedef Error = StructType & {
	> stdgo.Error,
	public function timeout():Bool;
	public function temporary():Bool;
};

typedef T_timeout = StructType & {
	public function timeout():Bool;
};

typedef T_temporary = StructType & {
	public function temporary():Bool;
};

typedef T_buffersWriter = StructType & {
	public function _writeBuffers(_0:Pointer<Buffers>):{var _0:GoInt64; var _1:Error;};
};

typedef T_sockaddr = StructType & {
	> Addr,
	public function _family():GoInt;
	public function _isWildcard():Bool;
	public function _sockaddr(_family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;};
	public function _toLocal(_net:GoString):T_sockaddr;
};

@:named class T_addrinfoErrno {
	public function timeout():Bool {
		var _eai = this.__copy__();
		return false;
	}

	public function temporary():Bool {
		var _eai = this.__copy__();
		return false;
	}

	public function error():GoString {
		var _eai = this.__copy__();
		return "<nil>";
	}

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
		return new T_addrinfoErrno(__t__);
}

@:structInit class Dialer {
	public function dialContext(_ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:Conn; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		if (_ctx == null) {
			throw "nil context";
		};
		var _deadline:stdgo.time.Time.Time = _d.value._deadline(_ctx, stdgo.time.Time.now().__copy__()).__copy__();
		try {
			if (!_deadline.isZero()) {
				{
					var __tmp__ = _ctx.deadline(),
						_d:stdgo.time.Time.Time = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (!_ok || _deadline.before(_d.__copy__())) {
						var __tmp__ = stdgo.context.Context.withDeadline(_ctx, _deadline.__copy__()),
							_subCtx:stdgo.context.Context.Context = __tmp__._0,
							_cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
						deferstack.unshift(() -> _cancel.__t__());
						_ctx = _subCtx;
					};
				};
			};
			{
				var _oldCancel:Chan<T_timeoutError> = _d.value.cancel;
				if (_oldCancel != null && !_oldCancel.isNil()) {
					var __tmp__ = stdgo.context.Context.withCancel(_ctx),
						_subCtx:stdgo.context.Context.Context = __tmp__._0,
						_cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
					deferstack.unshift(() -> _cancel.__t__());
					Go.routine({
						var a = function():Void {
							{
								{
									_oldCancel.get();
									_cancel.__t__();
								};
								_subCtx.done().get();
							};
						};
						a();
					});
					_ctx = _subCtx;
				};
			};
			var _resolveCtx:stdgo.context.Context.Context = _ctx;
			{
				var __tmp__ = try {
					{value: ((_ctx.value(Go.toInterface(new internal.nettrace.Nettrace.TraceKey().__copy__()))
						.value : Pointer<internal.nettrace.Nettrace.Trace>)), ok: true};
				} catch (_) {
					{value: new Pointer<internal.nettrace.Nettrace.Trace>().nil(), ok: false};
				}, _trace = __tmp__.value, _ = __tmp__.ok;
				if (_trace != null && !_trace.isNil()) {
					var _shadow:internal.nettrace.Nettrace.Trace = _trace.value.__copy__();
					_shadow.connectStart = null;
					_shadow.connectDone = null;
					_resolveCtx = stdgo.context.Context.withValue(_resolveCtx, Go.toInterface(new internal.nettrace.Nettrace.TraceKey().__copy__()),
						Go.toInterface(Go.pointer(_shadow)));
				};
			};
			var __tmp__ = _d.value._resolver().value._resolveAddrList(_resolveCtx, "dial", _network, _address, _d.value.localAddr),
				_addrs:T_addrList = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : Conn)), _1: Go.pointer((({
						op: "dial",
						net: _network,
						source: ((null : Addr)),
						addr: ((null : Addr)),
						err: _err
					} : OpError))).value};
				};
			};
			var _sd:Pointer<T_sysDialer> = Go.pointer((({dialer: _d.value.__copy__(), _network: _network, _address: _address} : T_sysDialer)));
			var _primaries:T_addrList = new T_addrList(),
				_fallbacks:T_addrList = new T_addrList();
			if (_d.value._dualStack() && _network == (("tcp" : GoString))) {
				{
					var __tmp__ = _addrs._partition(_isIPv4);
					_primaries = __tmp__._0.__copy__();
					_fallbacks = __tmp__._1.__copy__();
				};
			} else {
				_primaries = _addrs.__copy__();
			};
			var _c:Conn = ((null : Conn));
			if (_fallbacks.__t__.length > ((0 : GoInt))) {
				{
					var __tmp__ = _sd.value._dialParallel(_ctx, _primaries.__copy__(), _fallbacks.__copy__());
					_c = __tmp__._0;
					_err = __tmp__._1;
				};
			} else {
				{
					var __tmp__ = _sd.value._dialSerial(_ctx, _primaries.__copy__());
					_c = __tmp__._0;
					_err = __tmp__._1;
				};
			};
			if (_err != null) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : Conn)), _1: _err};
				};
			};
			{
				var __tmp__ = try {
					{value: ((_c.__underlying__().value : TCPConn)), ok: true};
				} catch (_) {
					{value: new Pointer<TCPConn>().nil(), ok: false};
				}, _tc = __tmp__.value, _ok = __tmp__.ok;
				if (_ok && _d.value.keepAlive.__t__ >= ((0 : GoInt64))) {
					_setKeepAlive(_tc.value._conn._fd, true);
					var _ka:stdgo.time.Time.Duration = _d.value.keepAlive;
					if (_d.value.keepAlive.__t__ == ((0 : GoInt64))) {
						_ka = _defaultTCPKeepAlive;
					};
					_setKeepAlivePeriod(_tc.value._conn._fd, _ka);
					_testHookSetKeepAlive(_ka);
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _c, _1: ((null : stdgo.Error))};
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
				return {_0: ((null : Conn)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function dial(_network:GoString, _address:GoString):{var _0:Conn; var _1:Error;} {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _d.value.dialContext(stdgo.context.Context.background(), _network, _address);
	}

	public function _fallbackDelay():stdgo.time.Time.Duration {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value.fallbackDelay.__t__ > ((0 : GoInt64))) {
			return _d.value.fallbackDelay;
		} else {
			return new stdgo.time.Time.Duration(((300 : GoInt64)) * stdgo.time.Time.millisecond.__t__);
		};
	}

	public function _resolver():Pointer<Resolver> {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_d.value.resolver != null && !_d.value.resolver.isNil()) {
			return _d.value.resolver;
		};
		return defaultResolver;
	}

	public function _deadline(_ctx:stdgo.context.Context.Context, _now:stdgo.time.Time.Time):stdgo.time.Time.Time {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _earliest:stdgo.time.Time.Time = new stdgo.time.Time.Time();
		if (_d.value.timeout.__t__ != ((0 : GoInt64))) {
			_earliest = _now.add(_d.value.timeout).__copy__();
		};
		{
			var __tmp__ = _ctx.deadline(),
				_d:stdgo.time.Time.Time = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				_earliest = _minNonzeroTime(_earliest.__copy__(), _d.__copy__()).__copy__();
			};
		};
		return _minNonzeroTime(_earliest.__copy__(), _d.value.deadline.__copy__()).__copy__();
	}

	public function _dualStack():Bool {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _d.value.fallbackDelay.__t__ >= ((0 : GoInt64));
	}

	public var timeout:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
	public var deadline:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var localAddr:Addr = ((null : Addr));
	public var dualStack:Bool = false;
	public var fallbackDelay:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
	public var keepAlive:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();
	public var resolver:Pointer<Resolver> = new Pointer<Resolver>().nil();
	public var cancel:Chan<{}> = new Chan<{}>(0, () -> null, true);
	public var control:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> stdgo.Error = null;

	public function new(?timeout:stdgo.time.Time.Duration, ?deadline:stdgo.time.Time.Time, ?localAddr:Addr, ?dualStack:Bool,
			?fallbackDelay:stdgo.time.Time.Duration, ?keepAlive:stdgo.time.Time.Duration, ?resolver:Pointer<Resolver>, ?cancel:Chan<{}>,
			?control:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(timeout) + " " + Go.string(deadline) + " " + Go.string(localAddr) + " " + Go.string(dualStack) + " "
			+ Go.string(fallbackDelay) + " " + Go.string(keepAlive) + " " + Go.string(resolver) + " " + Go.string(cancel) + " " + Go.string(control) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Dialer(timeout, deadline, localAddr, dualStack, fallbackDelay, keepAlive, resolver, cancel, control);
	}

	public function __set__(__tmp__) {
		this.timeout = __tmp__.timeout;
		this.deadline = __tmp__.deadline;
		this.localAddr = __tmp__.localAddr;
		this.dualStack = __tmp__.dualStack;
		this.fallbackDelay = __tmp__.fallbackDelay;
		this.keepAlive = __tmp__.keepAlive;
		this.resolver = __tmp__.resolver;
		this.cancel = __tmp__.cancel;
		this.control = __tmp__.control;
		return this;
	}
}

@:structInit class T_sysDialer {
	public function _dialUnix(_ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>,
			_raddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _unixSocket(_ctx, _sd.value._network, _laddr.value, _raddr.value, "dial", _sd.value.dialer.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UnixConn>().nil(), _1: _err};
		};
		return {_0: _newUnixConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _dialUDP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<UDPAddr>, _raddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _internetSocket(_ctx, _sd.value._network, _laddr.value, _raddr.value, stdgo.syscall.Syscall.sock_DGRAM, ((0 : GoInt)), "dial",
			_sd.value.dialer.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UDPConn>().nil(), _1: _err};
		};
		return {_0: _newUDPConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _doDialTCP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>, _raddr:Pointer<TCPAddr>):{var _0:Pointer<TCPConn>; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _internetSocket(_ctx, _sd.value._network, _laddr.value, _raddr.value, stdgo.syscall.Syscall.sock_STREAM, ((0 : GoInt)), "dial",
			_sd.value.dialer.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((2 : GoInt))
				&& (_laddr == null || _laddr.isNil() || _laddr.value.port == ((0 : GoInt)))
				&& (_selfConnect(_fd, _err) || _spuriousENOTAVAIL(_err)),
				_i++, {
					if (_err == null) {
						_fd.value.close();
					};
					{
						var __tmp__ = _internetSocket(_ctx, _sd.value._network, _laddr.value, _raddr.value, stdgo.syscall.Syscall.sock_STREAM, ((0 : GoInt)),
							"dial", _sd.value.dialer.control);
						_fd = __tmp__._0;
						_err = __tmp__._1;
					};
				});
		};
		if (_err != null) {
			return {_0: new Pointer<TCPConn>().nil(), _1: _err};
		};
		return {_0: _newTCPConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _dialTCP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>, _raddr:Pointer<TCPAddr>):{var _0:Pointer<TCPConn>; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_testHookDialTCP != null) {
			return _testHookDialTCP(_ctx, _sd.value._network, _laddr, _raddr);
		};
		return _sd.value._doDialTCP(_ctx, _laddr, _raddr);
	}

	public function _dialIP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<IPAddr>, _raddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _parseNetwork(_ctx, _sd.value._network, true),
			_network:GoString = __tmp__._0,
			_proto:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: new Pointer<IPConn>().nil(), _1: _err};
		};
		if (_network == (("ip" : GoString)) || _network == (("ip4" : GoString)) || _network == (("ip6" : GoString))) {} else {
			return {_0: new Pointer<IPConn>().nil(), _1: new UnknownNetworkError(_sd.value._network)};
		};
		var __tmp__ = _internetSocket(_ctx, _network, _laddr.value, _raddr.value, stdgo.syscall.Syscall.sock_RAW, _proto, "dial", _sd.value.dialer.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<IPConn>().nil(), _1: _err};
		};
		return {_0: _newIPConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _dialSingle(_ctx:stdgo.context.Context.Context, _ra:Addr):{var _0:Conn; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _c:Conn = ((null : Conn)), _err:Error = ((null : stdgo.Error));
		var __tmp__ = try {
			{value: ((_ctx.value(Go.toInterface(new internal.nettrace.Nettrace.TraceKey().__copy__()))
				.value : Pointer<internal.nettrace.Nettrace.Trace>)), ok: true};
		} catch (_) {
			{value: new Pointer<internal.nettrace.Nettrace.Trace>().nil(), ok: false};
		}, _trace = __tmp__.value, _ = __tmp__.ok;
		try {
			if (_trace != null && !_trace.isNil()) {
				var _raStr:GoString = _ra.toString();
				if (_trace.value.connectStart != null) {
					_trace.value.connectStart(_sd.value._network, _raStr);
				};
				if (_trace.value.connectDone != null) {
					{
						deferstack.unshift(() -> {
							var a = function():Void {
								_trace.value.connectDone(_sd.value._network, _raStr, _err);
							};
							a();
						});
					};
				};
			};
			var _la:Addr = _sd.value.dialer.localAddr;
			if (Go.assertable(((_ra : Pointer<TCPAddr>)))) {
				var _ra:Pointer<TCPAddr> = _ra == null ? null : _ra.__underlying__() == null ? null : _ra == null ? null : _ra.__underlying__().value;
				var __tmp__ = try {
					{value: ((_la.__underlying__().value : TCPAddr)), ok: true};
				} catch (_) {
					{value: new Pointer<TCPAddr>().nil(), ok: false};
				}, _la = __tmp__.value, _ = __tmp__.ok;
				{
					var __tmp__ = _sd.value._dialTCP(_ctx, _la, _ra);
					_c = __tmp__._0.value;
					_err = __tmp__._1;
				};
			} else if (Go.assertable(((_ra : Pointer<UDPAddr>)))) {
				var _ra:Pointer<UDPAddr> = _ra == null ? null : _ra.__underlying__() == null ? null : _ra == null ? null : _ra.__underlying__().value;
				var __tmp__ = try {
					{value: ((_la.__underlying__().value : UDPAddr)), ok: true};
				} catch (_) {
					{value: new Pointer<UDPAddr>().nil(), ok: false};
				}, _la = __tmp__.value, _ = __tmp__.ok;
				{
					var __tmp__ = _sd.value._dialUDP(_ctx, _la, _ra);
					_c = __tmp__._0.value;
					_err = __tmp__._1;
				};
			} else if (Go.assertable(((_ra : Pointer<IPAddr>)))) {
				var _ra:Pointer<IPAddr> = _ra == null ? null : _ra.__underlying__() == null ? null : _ra == null ? null : _ra.__underlying__().value;
				var __tmp__ = try {
					{value: ((_la.__underlying__().value : IPAddr)), ok: true};
				} catch (_) {
					{value: new Pointer<IPAddr>().nil(), ok: false};
				}, _la = __tmp__.value, _ = __tmp__.ok;
				{
					var __tmp__ = _sd.value._dialIP(_ctx, _la, _ra);
					_c = __tmp__._0.value;
					_err = __tmp__._1;
				};
			} else if (Go.assertable(((_ra : Pointer<UnixAddr>)))) {
				var _ra:Pointer<UnixAddr> = _ra == null ? null : _ra.__underlying__() == null ? null : _ra == null ? null : _ra.__underlying__().value;
				var __tmp__ = try {
					{value: ((_la.__underlying__().value : UnixAddr)), ok: true};
				} catch (_) {
					{value: new Pointer<UnixAddr>().nil(), ok: false};
				}, _la = __tmp__.value, _ = __tmp__.ok;
				{
					var __tmp__ = _sd.value._dialUnix(_ctx, _la, _ra);
					_c = __tmp__._0.value;
					_err = __tmp__._1;
				};
			} else {
				var _ra:Addr = _ra == null ? null : _ra.__underlying__() == null ? null : _ra == null ? null : _ra.__underlying__().value;
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : Conn)), _1: Go.pointer((({
						op: "dial",
						net: _sd.value._network,
						source: _la,
						addr: _ra,
						err: Go.pointer((({err: "unexpected address type", addr: _sd.value._address} : AddrError))).value
					} : OpError))).value};
				};
			};
			if (_err != null) {
				{
					for (defer in deferstack) {
						defer();
					};
					return {_0: ((null : Conn)), _1: Go.pointer((({
						op: "dial",
						net: _sd.value._network,
						source: _la,
						addr: _ra,
						err: _err
					} : OpError))).value};
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _c, _1: ((null : stdgo.Error))};
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
				return {_0: _c, _1: _err};
			};
		};
	}

	public function _dialSerial(_ctx:stdgo.context.Context.Context, _ras:T_addrList):{var _0:Conn; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _firstErr:Error = ((null : stdgo.Error));
		{
			var _i;
			var _ra;
			for (_obj in _ras.__t__.keyValueIterator()) {
				_i = _obj.key;
				_ra = _obj.value;
				{
					{
						_ctx.done().get();
						return {_0: ((null : Conn)), _1: Go.pointer((({
							op: "dial",
							net: _sd.value._network,
							source: _sd.value.dialer.localAddr,
							addr: _ra,
							err: _mapErr(_ctx.err())
						} : OpError))).value};
					};
					null;
				};
				var _dialCtx:stdgo.context.Context.Context = _ctx;
				{
					var __tmp__ = _ctx.deadline(),
						_deadline:stdgo.time.Time.Time = __tmp__._0,
						_hasDeadline:Bool = __tmp__._1;
					if (_hasDeadline) {
						var __tmp__ = _partialDeadline(stdgo.time.Time.now().__copy__(), _deadline.__copy__(), _ras.__t__.length - _i),
							_partialDeadline:stdgo.time.Time.Time = __tmp__._0,
							_err:stdgo.Error = __tmp__._1;
						if (_err != null) {
							if (_firstErr == null) {
								_firstErr = Go.pointer((({
									op: "dial",
									net: _sd.value._network,
									source: _sd.value.dialer.localAddr,
									addr: _ra,
									err: _err
								} : OpError))).value;
							};
							break;
						};
						if (_partialDeadline.before(_deadline.__copy__())) {
							var _cancel:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
							{
								var __tmp__ = stdgo.context.Context.withDeadline(_ctx, _partialDeadline.__copy__());
								_dialCtx = __tmp__._0;
								_cancel = __tmp__._1.__copy__();
							};
							deferstack.unshift(() -> _cancel.__t__());
						};
					};
				};
				var __tmp__ = _sd.value._dialSingle(_dialCtx, _ra),
					_c:Conn = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err == null) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: _c, _1: ((null : stdgo.Error))};
					};
				};
				if (_firstErr == null) {
					_firstErr = _err;
				};
			};
		};
		try {
			if (_firstErr == null) {
				_firstErr = Go.pointer((({
					op: "dial",
					net: _sd.value._network,
					source: ((null : Addr)),
					addr: ((null : Addr)),
					err: _errMissingAddress
				} : OpError))).value;
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: ((null : Conn)), _1: _firstErr};
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
				return {_0: ((null : Conn)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function _dialParallel(_ctx:stdgo.context.Context.Context, _primaries:T_addrList, _fallbacks:T_addrList):{var _0:Conn; var _1:Error;} {
		var _sd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		if (_fallbacks.__t__.length == ((0 : GoInt))) {
			return _sd.value._dialSerial(_ctx, _primaries.__copy__());
		};
		var _returned:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError());
		try {
			{
				var a0 = _returned;
				deferstack.unshift(() -> a0.close());
			};
			{};
			var _results:Chan<T_dialResult__dialParallel_0> = new Chan<T_dialResult__dialParallel_0>(0, () -> new T_dialResult__dialParallel_0());
			var _startRacer:(stdgo.context.Context.Context, Bool) -> Void = function(_ctx:stdgo.context.Context.Context, _primary:Bool):Void {
				var _ras:T_addrList = _primaries.__copy__();
				if (!_primary) {
					_ras = _fallbacks.__copy__();
				};
				var __tmp__ = _sd.value._dialSerial(_ctx, _ras.__copy__()), _c:Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
				{
					_results.send((({
						conn: _c,
						_error: _err,
						_primary: _primary,
						_done: true
					} : T_dialResult__dialParallel_0)));
					{
						_returned.get();
						if (_c != null) {
							_c.close();
						};
					};
				};
			};
			var _primary:T_dialResult__dialParallel_0 = new T_dialResult__dialParallel_0(),
				_fallback:T_dialResult__dialParallel_0 = new T_dialResult__dialParallel_0();
			var __tmp__ = stdgo.context.Context.withCancel(_ctx),
				_primaryCtx:stdgo.context.Context.Context = __tmp__._0,
				_primaryCancel:stdgo.context.Context.CancelFunc = __tmp__._1;
			deferstack.unshift(() -> _primaryCancel.__t__());
			Go.routine(_startRacer(_primaryCtx, true));
			var _fallbackTimer:Pointer<stdgo.time.Time.Timer> = stdgo.time.Time.newTimer(_sd.value._fallbackDelay());
			deferstack.unshift(() -> _fallbackTimer.value.stop());
			while (true) {
				{
					{
						_fallbackTimer.value.c.get();
						var __tmp__ = stdgo.context.Context.withCancel(_ctx),
							_fallbackCtx:stdgo.context.Context.Context = __tmp__._0,
							_fallbackCancel:stdgo.context.Context.CancelFunc = __tmp__._1;
						deferstack.unshift(() -> _fallbackCancel.__t__());
						Go.routine(_startRacer(_fallbackCtx, false));
					};
					{
						var _res:T_dialResult__dialParallel_0 = _results.get();
						if (_res._error == null) {
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: _res.conn, _1: ((null : stdgo.Error))};
							};
						};
						if (_res._primary) {
							_primary = _res.__copy__();
						} else {
							_fallback = _res.__copy__();
						};
						if (_primary._done && _fallback._done) {
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: ((null : Conn)), _1: _primary._error};
							};
						};
						if (_res._primary && _fallbackTimer.value.stop()) {
							_fallbackTimer.value.reset(new stdgo.time.Time.Duration(((0 : GoInt64))));
						};
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
				return {_0: ((null : Conn)), _1: ((null : stdgo.Error))};
			};
		};
	}

	@:embedded
	public var dialer:Dialer = new Dialer();
	public var _network:GoString = (("" : GoString));
	public var _address:GoString = (("" : GoString));

	public function new(?dialer:Dialer, ?_network:GoString, ?_address:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(dialer) + " " + Go.string(_network) + " " + Go.string(_address) + "}";
	}

	public function dial(_network:GoString, _address:GoString):{var _0:(GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
	}; var _1:(GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
		};}
		return dialer.dial(_0, _1);

	public function dialContext(_ctx:stdgo.context.Context.Context, _network:GoString,
			_address:GoString):{var _0:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
	}; var _1:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
		};}
		return dialer.dialContext(_0, _1, _2);

	public function _deadline(_ctx:stdgo.context.Context.Context, _now:stdgo.time.Time.Time):stdgo.time.Time.Time
		return dialer._deadline(_0, _1);

	public function _dualStack():Bool
		return dialer._dualStack();

	public function _fallbackDelay():stdgo.time.Time.Duration
		return dialer._fallbackDelay();

	public function _resolver():Pointer<Resolver>
		return dialer._resolver();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sysDialer(dialer, _network, _address);
	}

	public function __set__(__tmp__) {
		this.dialer = __tmp__.dialer;
		this._network = __tmp__._network;
		this._address = __tmp__._address;
		return this;
	}
}

@:structInit class ListenConfig {
	public function listenPacket(_ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:PacketConn; var _1:Error;} {
		var _lc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = defaultResolver.value._resolveAddrList(_ctx, "listen", _network, _address, ((null : Addr))),
			_addrs:T_addrList = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : PacketConn)), _1: Go.pointer((({
				op: "listen",
				net: _network,
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _err
			} : OpError))).value};
		};
		var _sl:Pointer<T_sysListener> = Go.pointer((({listenConfig: _lc.value.__copy__(), _network: _network, _address: _address} : T_sysListener)));
		var _c:PacketConn = ((null : PacketConn));
		var _la:Addr = _addrs._first(_isIPv4);
		if (Go.assertable(((_la : Pointer<UDPAddr>)))) {
			var _la:Pointer<UDPAddr> = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			{
				var __tmp__ = _sl.value._listenUDP(_ctx, _la);
				_c = __tmp__._0.value;
				_err = __tmp__._1;
			};
		} else if (Go.assertable(((_la : Pointer<IPAddr>)))) {
			var _la:Pointer<IPAddr> = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			{
				var __tmp__ = _sl.value._listenIP(_ctx, _la);
				_c = __tmp__._0.value;
				_err = __tmp__._1;
			};
		} else if (Go.assertable(((_la : Pointer<UnixAddr>)))) {
			var _la:Pointer<UnixAddr> = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			{
				var __tmp__ = _sl.value._listenUnixgram(_ctx, _la);
				_c = __tmp__._0.value;
				_err = __tmp__._1;
			};
		} else {
			var _la:Addr = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			return {_0: ((null : PacketConn)), _1: Go.pointer((({
				op: "listen",
				net: _sl.value._network,
				source: ((null : Addr)),
				addr: _la,
				err: Go.pointer((({err: "unexpected address type", addr: _address} : AddrError))).value
			} : OpError))).value};
		};
		if (_err != null) {
			return {_0: ((null : PacketConn)), _1: Go.pointer((({
				op: "listen",
				net: _sl.value._network,
				source: ((null : Addr)),
				addr: _la,
				err: _err
			} : OpError))).value};
		};
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function listen(_ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:Listener; var _1:Error;} {
		var _lc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = defaultResolver.value._resolveAddrList(_ctx, "listen", _network, _address, ((null : Addr))),
			_addrs:T_addrList = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : Listener)), _1: Go.pointer((({
				op: "listen",
				net: _network,
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _err
			} : OpError))).value};
		};
		var _sl:Pointer<T_sysListener> = Go.pointer((({listenConfig: _lc.value.__copy__(), _network: _network, _address: _address} : T_sysListener)));
		var _l:Listener = ((null : Listener));
		var _la:Addr = _addrs._first(_isIPv4);
		if (Go.assertable(((_la : Pointer<TCPAddr>)))) {
			var _la:Pointer<TCPAddr> = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			{
				var __tmp__ = _sl.value._listenTCP(_ctx, _la);
				_l = __tmp__._0.value;
				_err = __tmp__._1;
			};
		} else if (Go.assertable(((_la : Pointer<UnixAddr>)))) {
			var _la:Pointer<UnixAddr> = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			{
				var __tmp__ = _sl.value._listenUnix(_ctx, _la);
				_l = __tmp__._0.value;
				_err = __tmp__._1;
			};
		} else {
			var _la:Addr = _la == null ? null : _la.__underlying__() == null ? null : _la == null ? null : _la.__underlying__().value;
			return {_0: ((null : Listener)), _1: Go.pointer((({
				op: "listen",
				net: _sl.value._network,
				source: ((null : Addr)),
				addr: _la,
				err: Go.pointer((({err: "unexpected address type", addr: _address} : AddrError))).value
			} : OpError))).value};
		};
		if (_err != null) {
			return {_0: ((null : Listener)), _1: Go.pointer((({
				op: "listen",
				net: _sl.value._network,
				source: ((null : Addr)),
				addr: _la,
				err: _err
			} : OpError))).value};
		};
		return {_0: _l, _1: ((null : stdgo.Error))};
	}

	public var control:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> stdgo.Error = null;
	public var keepAlive:stdgo.time.Time.Duration = new stdgo.time.Time.Duration();

	public function new(?control:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> stdgo.Error, ?keepAlive:stdgo.time.Time.Duration)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(control) + " " + Go.string(keepAlive) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ListenConfig(control, keepAlive);
	}

	public function __set__(__tmp__) {
		this.control = __tmp__.control;
		this.keepAlive = __tmp__.keepAlive;
		return this;
	}
}

@:structInit class T_sysListener {
	public function _listenUnixgram(_ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _unixSocket(_ctx, _sl.value._network, _laddr.value, ((null : T_sockaddr)), "listen", _sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UnixConn>().nil(), _1: _err};
		};
		return {_0: _newUnixConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _listenUnix(_ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixListener>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _unixSocket(_ctx, _sl.value._network, _laddr.value, ((null : T_sockaddr)), "listen", _sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UnixListener>().nil(), _1: _err};
		};
		return {_0: Go.pointer((({
			_fd: _fd,
			_path: _fd.value._laddr.toString(),
			_unlink: true,
			_unlinkOnce: new stdgo.sync.Sync.Once()
		} : UnixListener))), _1: ((null : stdgo.Error))};
	}

	public function _listenMulticastUDP(_ctx:stdgo.context.Context.Context, _ifi:Pointer<Interface>,
			_gaddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _internetSocket(_ctx, _sl.value._network, _gaddr.value, ((null : T_sockaddr)), stdgo.syscall.Syscall.sock_DGRAM, ((0 : GoInt)),
			"listen", _sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UDPConn>().nil(), _1: _err};
		};
		var _c:Pointer<UDPConn> = _newUDPConn(_fd);
		{
			var _ip4:IP = _gaddr.value.ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				{
					var _err:stdgo.Error = _listenIPv4MulticastUDP(_c, _ifi, _ip4.__copy__());
					if (_err != null) {
						_c.value.close();
						return {_0: new Pointer<UDPConn>().nil(), _1: _err};
					};
				};
			} else {
				{
					var _err:stdgo.Error = _listenIPv6MulticastUDP(_c, _ifi, _gaddr.value.ip.__copy__());
					if (_err != null) {
						_c.value.close();
						return {_0: new Pointer<UDPConn>().nil(), _1: _err};
					};
				};
			};
		};
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function _listenUDP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _internetSocket(_ctx, _sl.value._network, _laddr.value, ((null : T_sockaddr)), stdgo.syscall.Syscall.sock_DGRAM, ((0 : GoInt)),
			"listen", _sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UDPConn>().nil(), _1: _err};
		};
		return {_0: _newUDPConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function _listenTCP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>):{var _0:Pointer<TCPListener>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _internetSocket(_ctx, _sl.value._network, _laddr.value, ((null : T_sockaddr)), stdgo.syscall.Syscall.sock_STREAM, ((0 : GoInt)),
			"listen", _sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<TCPListener>().nil(), _1: _err};
		};
		return {_0: Go.pointer((({_fd: _fd, _lc: _sl.value.listenConfig.__copy__()} : TCPListener))), _1: ((null : stdgo.Error))};
	}

	public function _listenIP(_ctx:stdgo.context.Context.Context, _laddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;} {
		var _sl = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _parseNetwork(_ctx, _sl.value._network, true),
			_network:GoString = __tmp__._0,
			_proto:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: new Pointer<IPConn>().nil(), _1: _err};
		};
		if (_network == (("ip" : GoString)) || _network == (("ip4" : GoString)) || _network == (("ip6" : GoString))) {} else {
			return {_0: new Pointer<IPConn>().nil(), _1: new UnknownNetworkError(_sl.value._network)};
		};
		var __tmp__ = _internetSocket(_ctx, _network, _laddr.value, ((null : T_sockaddr)), stdgo.syscall.Syscall.sock_RAW, _proto, "listen",
			_sl.value.listenConfig.control),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<IPConn>().nil(), _1: _err};
		};
		return {_0: _newIPConn(_fd), _1: ((null : stdgo.Error))};
	}

	@:embedded
	public var listenConfig:ListenConfig = new ListenConfig();
	public var _network:GoString = (("" : GoString));
	public var _address:GoString = (("" : GoString));

	public function new(?listenConfig:ListenConfig, ?_network:GoString, ?_address:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(listenConfig) + " " + Go.string(_network) + " " + Go.string(_address) + "}";
	}

	public function listen(_ctx:stdgo.context.Context.Context, _network:GoString,
			_address:GoString):{var _0:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Listener;
		var _1:stdgo.Error;
	}; var _1:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Listener;
		var _1:stdgo.Error;
		};}
		return listenConfig.listen(_0, _1, _2);

	public function listenPacket(_ctx:stdgo.context.Context.Context, _network:GoString,
			_address:GoString):{var _0:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:PacketConn;
		var _1:stdgo.Error;
	}; var _1:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:PacketConn;
		var _1:stdgo.Error;
		};}
		return listenConfig.listenPacket(_0, _1, _2);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sysListener(listenConfig, _network, _address);
	}

	public function __set__(__tmp__) {
		this.listenConfig = __tmp__.listenConfig;
		this._network = __tmp__._network;
		this._address = __tmp__._address;
		return this;
	}
}

@:structInit class SRV {
	public var target:GoString = (("" : GoString));
	public var port:GoUInt16 = ((0 : GoUInt16));
	public var priority:GoUInt16 = ((0 : GoUInt16));
	public var weight:GoUInt16 = ((0 : GoUInt16));

	public function new(?target:GoString, ?port:GoUInt16, ?priority:GoUInt16, ?weight:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(target) + " " + Go.string(port) + " " + Go.string(priority) + " " + Go.string(weight) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SRV(target, port, priority, weight);
	}

	public function __set__(__tmp__) {
		this.target = __tmp__.target;
		this.port = __tmp__.port;
		this.priority = __tmp__.priority;
		this.weight = __tmp__.weight;
		return this;
	}
}

@:named class T_byPriorityWeight {
	public function _sort():Void {
		var _addrs = this.__copy__();
		stdgo.sort.Sort.sort(_addrs.__copy__());
		var _i:GoInt = ((0 : GoInt));
		{
			var _j:GoInt = ((1 : GoInt));
			Go.cfor(_j < _addrs.__t__.length, _j++, {
				if (_addrs.__t__[_i].value.priority != _addrs.__t__[_j].value.priority) {
					_addrs.__slice__(_i, _j)._shuffleByWeight();
					_i = _j;
				};
			});
		};
		_addrs.__slice__(_i)._shuffleByWeight();
	}

	public function _shuffleByWeight():Void {
		var _addrs = this.__copy__();
		var _sum:GoInt = ((0 : GoInt));
		for (_addr in _addrs.__t__) {
			_sum = _sum + (((_addr.value.weight : GoInt)));
		};
		while (_sum > ((0 : GoInt)) && _addrs.__t__.length > ((1 : GoInt))) {
			var _s:GoInt = ((0 : GoInt));
			var _n:GoInt = _randIntn(_sum);
			{
				var _i;
				for (_obj in _addrs.__t__.keyValueIterator()) {
					_i = _obj.key;
					_s = _s + (((_addrs.__t__[_i].value.weight : GoInt)));
					if (_s > _n) {
						if (_i > ((0 : GoInt))) {
							{
								final __tmp__0 = _addrs.__t__[_i];
								final __tmp__1 = _addrs.__t__[((0 : GoInt))];
								_addrs.__t__[((0 : GoInt))] = __tmp__0;
								_addrs.__t__[_i] = __tmp__1;
							};
						};
						break;
					};
				};
			};
			_sum = _sum - (((_addrs.__t__[((0 : GoInt))].value.weight : GoInt)));
			_addrs = _addrs.__slice__(((1 : GoInt))).__copy__();
		};
	}

	public function swap(_i:GoInt, _j:GoInt):Void {
		var _s = this.__copy__();
		{
			final __tmp__0 = _s.__t__[_j];
			final __tmp__1 = _s.__t__[_i];
			_s.__t__[_i] = __tmp__0;
			_s.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _s = this.__copy__();
		return _s.__t__[_i].value.priority < _s.__t__[_j].value.priority
			|| (_s.__t__[_i].value.priority == _s.__t__[_j].value.priority && _s.__t__[_i].value.weight < _s.__t__[_j].value.weight);
	}

	public function len():GoInt {
		var _s = this.__copy__();
		return _s.__t__.length;
	}

	public var __t__:Slice<Pointer<SRV>>;

	public function new(?t:Slice<Pointer<SRV>>) {
		__t__ = t == null ? new Slice<Pointer<SRV>>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_byPriorityWeight(__t__);

	public function __append__(args:haxe.Rest<Pointer<SRV>>)
		return new T_byPriorityWeight(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_byPriorityWeight(this.__t__.__slice__(low, high));
}

@:structInit class MX {
	public var host:GoString = (("" : GoString));
	public var pref:GoUInt16 = ((0 : GoUInt16));

	public function new(?host:GoString, ?pref:GoUInt16)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(host) + " " + Go.string(pref) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new MX(host, pref);
	}

	public function __set__(__tmp__) {
		this.host = __tmp__.host;
		this.pref = __tmp__.pref;
		return this;
	}
}

@:named class T_byPref {
	public function _sort():Void {
		var _s = this.__copy__();
		{
			var _i;
			for (_obj in _s.__t__.keyValueIterator()) {
				_i = _obj.key;
				var _j:GoInt = _randIntn(_i + ((1 : GoInt)));
				{
					final __tmp__0 = _s.__t__[_j];
					final __tmp__1 = _s.__t__[_i];
					_s.__t__[_i] = __tmp__0;
					_s.__t__[_j] = __tmp__1;
				};
			};
		};
		stdgo.sort.Sort.sort(_s.__copy__());
	}

	public function swap(_i:GoInt, _j:GoInt):Void {
		var _s = this.__copy__();
		{
			final __tmp__0 = _s.__t__[_j];
			final __tmp__1 = _s.__t__[_i];
			_s.__t__[_i] = __tmp__0;
			_s.__t__[_j] = __tmp__1;
		};
	}

	public function less(_i:GoInt, _j:GoInt):Bool {
		var _s = this.__copy__();
		return _s.__t__[_i].value.pref < _s.__t__[_j].value.pref;
	}

	public function len():GoInt {
		var _s = this.__copy__();
		return _s.__t__.length;
	}

	public var __t__:Slice<Pointer<MX>>;

	public function new(?t:Slice<Pointer<MX>>) {
		__t__ = t == null ? new Slice<Pointer<MX>>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_byPref(__t__);

	public function __append__(args:haxe.Rest<Pointer<MX>>)
		return new T_byPref(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_byPref(this.__t__.__slice__(low, high));
}

@:structInit class NS {
	public var host:GoString = (("" : GoString));

	public function new(?host:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(host) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NS(host);
	}

	public function __set__(__tmp__) {
		this.host = __tmp__.host;
		return this;
	}
}

@:named class T_fileAddr {
	public function toString():GoString {
		var _f = this.__copy__();
		return _f.__t__;
	}

	public function network():GoString {
		return "file+net";
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new T_fileAddr(__t__);
}

@:structInit class Interface {
	public function multicastAddrs():{var _0:Slice<Addr>; var _1:Error;} {
		var _ifi = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_ifi == null || _ifi.isNil()) {
			return {_0: new Slice<Addr>().nil(), _1: Go.pointer((({
				op: "route",
				net: "ip+net",
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _errInvalidInterface
			} : OpError))).value};
		};
		var __tmp__ = _interfaceMulticastAddrTable(_ifi),
			_ifat:Slice<Addr> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "route",
				net: "ip+net",
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _err
			} : OpError))).value;
		};
		return {_0: _ifat, _1: _err};
	}

	public function addrs():{var _0:Slice<Addr>; var _1:Error;} {
		var _ifi = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_ifi == null || _ifi.isNil()) {
			return {_0: new Slice<Addr>().nil(), _1: Go.pointer((({
				op: "route",
				net: "ip+net",
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _errInvalidInterface
			} : OpError))).value};
		};
		var __tmp__ = _interfaceAddrTable(_ifi),
			_ifat:Slice<Addr> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "route",
				net: "ip+net",
				source: ((null : Addr)),
				addr: ((null : Addr)),
				err: _err
			} : OpError))).value;
		};
		return {_0: _ifat, _1: _err};
	}

	public var index:GoInt = ((0 : GoInt));
	public var mtu:GoInt = ((0 : GoInt));
	public var name:GoString = (("" : GoString));
	public var hardwareAddr:HardwareAddr = new HardwareAddr();
	public var flags:Flags = new Flags();

	public function new(?index:GoInt, ?mtu:GoInt, ?name:GoString, ?hardwareAddr:HardwareAddr, ?flags:Flags)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(index)
			+ " "
			+ Go.string(mtu)
			+ " "
			+ Go.string(name)
			+ " "
			+ Go.string(hardwareAddr)
			+ " "
			+ Go.string(flags)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Interface(index, mtu, name, hardwareAddr, flags);
	}

	public function __set__(__tmp__) {
		this.index = __tmp__.index;
		this.mtu = __tmp__.mtu;
		this.name = __tmp__.name;
		this.hardwareAddr = __tmp__.hardwareAddr;
		this.flags = __tmp__.flags;
		return this;
	}
}

@:named class Flags {
	public function toString():GoString {
		var _f = this.__copy__();
		var _s:GoString = "";
		{
			var _i;
			var _name;
			for (_obj in _flagNames.keyValueIterator()) {
				_i = _obj.key;
				_name = _obj.value;
				if (new Flags(_f.__t__ & ((new Flags(((1 : GoUInt)) << ((_i : GoUInt))))).__t__).__t__ != ((0 : GoUInt))) {
					if (_s != (("" : GoString))) {
						_s = _s + ("|");
					};
					_s = _s + (_name);
				};
			};
		};
		if (_s == (("" : GoString))) {
			_s = "0";
		};
		return _s;
	}

	public var __t__:GoUInt;

	public function new(?t:GoUInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new Flags(__t__);
}

@:structInit class T_ipv6ZoneCache {
	public function _index(_name:GoString):GoInt {
		var _zc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_name == (("" : GoString))) {
			return ((0 : GoInt));
		};
		var _updated:Bool = _zoneCache._update(new Slice<Interface>().nil(), false);
		_zoneCache.rlock();
		var __tmp__ = _zoneCache._toIndex.exists(_name) ? {value: _zoneCache._toIndex[_name], ok: true} : {value: _zoneCache._toIndex.defaultValue(),
			ok: false},
			_index:GoInt = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		_zoneCache.runlock();
		if (!_ok && !_updated) {
			_zoneCache._update(new Slice<Interface>().nil(), true);
			_zoneCache.rlock();
			{
				var __tmp__ = _zoneCache._toIndex.exists(_name) ? {value: _zoneCache._toIndex[_name], ok: true} : {value: _zoneCache._toIndex.defaultValue(),
					ok: false};
				_index = __tmp__.value;
				_ok = __tmp__.ok;
			};
			_zoneCache.runlock();
		};
		if (!_ok) {
			{
				var __tmp__ = _dtoi(_name);
				_index = __tmp__._0;
			};
		};
		return _index;
	}

	public function _name(_index:GoInt):GoString {
		var _zc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_index == ((0 : GoInt))) {
			return "";
		};
		var _updated:Bool = _zoneCache._update(new Slice<Interface>().nil(), false);
		_zoneCache.rlock();
		var __tmp__ = _zoneCache._toName.exists(_index) ? {value: _zoneCache._toName[_index], ok: true} : {value: _zoneCache._toName.defaultValue(), ok: false},
			_name:GoString = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		_zoneCache.runlock();
		if (!_ok && !_updated) {
			_zoneCache._update(new Slice<Interface>().nil(), true);
			_zoneCache.rlock();
			{
				var __tmp__ = _zoneCache._toName.exists(_index) ? {value: _zoneCache._toName[_index], ok: true} : {value: _zoneCache._toName.defaultValue(),
					ok: false};
				_name = __tmp__.value;
				_ok = __tmp__.ok;
			};
			_zoneCache.runlock();
		};
		if (!_ok) {
			_name = internal.itoa.Itoa.uitoa(((_index : GoUInt)));
		};
		return _name;
	}

	public function _update(_ift:Slice<Interface>, _force:Bool):Bool {
		var _zc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _updated:Bool = false;
		try {
			_zc.value.lock();
			deferstack.unshift(() -> _zc.value.unlock());
			var _now:stdgo.time.Time.Time = stdgo.time.Time.now().__copy__();
			if (!_force
				&& _zc.value._lastFetched.after(_now.add(new stdgo.time.Time.Duration(-((60 : GoUnTypedInt)) * stdgo.time.Time.second.__t__)).__copy__())) {
				{
					for (defer in deferstack) {
						defer();
					};
					return false;
				};
			};
			_zc.value._lastFetched = _now.__copy__();
			if (_ift.length == ((0 : GoInt))) {
				var _err:Error = ((null : stdgo.Error));
				{
					{
						var __tmp__ = _interfaceTable(((0 : GoInt)));
						_ift = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						{
							for (defer in deferstack) {
								defer();
							};
							return false;
						};
					};
				};
			};
			_zc.value._toIndex = new GoMap<GoString,
				GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
					stdgo.reflect.Reflect.GoType.basic(int_kind))));
			_zc.value._toName = new GoMap<GoInt,
				GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind),
					stdgo.reflect.Reflect.GoType.basic(string_kind))));
			for (_ifi in _ift) {
				_zc.value._toIndex[_ifi.name] = _ifi.index;
				{
					var __tmp__ = _zc.value._toName.exists(_ifi.index) ? {value: _zc.value._toName[_ifi.index],
						ok: true} : {value: _zc.value._toName.defaultValue(), ok: false},
						_:GoString = __tmp__.value,
						_ok:Bool = __tmp__.ok;
					if (!_ok) {
						_zc.value._toName[_ifi.index] = _ifi.name;
					};
				};
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return true;
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
				return _updated;
			};
		};
	}

	@:embedded
	public var rwmutex:stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
	public var _lastFetched:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var _toIndex:GoMap<GoString, GoInt> = new GoMap<GoString,
		GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil();
	public var _toName:GoMap<GoInt, GoString> = new GoMap<GoInt,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();

	public function new(?rwmutex:stdgo.sync.Sync.RWMutex, ?_lastFetched:stdgo.time.Time.Time, ?_toIndex:GoMap<GoString, GoInt>,
			?_toName:GoMap<GoInt, GoString>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(rwmutex) + " " + Go.string(_lastFetched) + " " + Go.string(_toIndex) + " " + Go.string(_toName) + "}";
	}

	public function lock()
		rwmutex.lock();

	public function rlock()
		rwmutex.rlock();

	public function rlocker():stdgo.sync.Sync.Locker
		return rwmutex.rlocker();

	public function runlock()
		rwmutex.runlock();

	public function unlock()
		rwmutex.unlock();

	public function _rUnlockSlow(_r:GoInt32)
		rwmutex._rUnlockSlow(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ipv6ZoneCache(rwmutex, _lastFetched, _toIndex, _toName);
	}

	public function __set__(__tmp__) {
		this.rwmutex = __tmp__.rwmutex;
		this._lastFetched = __tmp__._lastFetched;
		this._toIndex = __tmp__._toIndex;
		this._toName = __tmp__._toName;
		return this;
	}
}

@:named class IP {
	public function _matchAddrFamily(_x:IP):Bool {
		var _ip = this.__copy__();
		return _ip.to4().__t__ != null && !_ip.to4().__t__.isNil() && _x.to4().__t__ != null && !_x.to4().__t__.isNil() || _ip.to16().__t__ != null
			&& !_ip.to16().__t__.isNil() && _ip.to4().__t__ == null || _ip.to4().__t__.isNil() && _x.to16().__t__ != null && !_x.to16().__t__.isNil()
			&& _x.to4().__t__ == null || _x.to4().__t__.isNil();
	}

	public function equal(_x:IP):Bool {
		var _ip = this.__copy__();
		if (_ip.__t__.length == _x.__t__.length) {
			return internal.bytealg.Bytealg.equal(_ip.__copy__().__t__, _x.__copy__().__t__);
		};
		if (_ip.__t__.length == ipv4len && _x.__t__.length == ipv6len) {
			return internal.bytealg.Bytealg.equal(_x.__slice__(((0 : GoInt)), ((12 : GoInt))).__copy__().__t__, _v4InV6Prefix)
				&& internal.bytealg.Bytealg.equal(_ip.__copy__().__t__, _x.__slice__(((12 : GoInt))).__copy__().__t__);
		};
		if (_ip.__t__.length == ipv6len && _x.__t__.length == ipv4len) {
			return internal.bytealg.Bytealg.equal(_ip.__slice__(((0 : GoInt)), ((12 : GoInt))).__copy__().__t__, _v4InV6Prefix)
				&& internal.bytealg.Bytealg.equal(_ip.__slice__(((12 : GoInt))).__copy__().__t__, _x.__copy__().__t__);
		};
		return false;
	}

	public function unmarshalText(_text:Slice<GoByte>):Error {
		var _ip = new Pointer(() -> new IP(this.__t__), __tmp__ -> new IP(this.__t__ = __tmp__.__t__));
		if (_text.length == ((0 : GoInt))) {
			_ip.value = new IP();
			return ((null : stdgo.Error));
		};
		var _s:GoString = ((_text : GoString));
		var _x:IP = parseIP(_s).__copy__();
		if (_x.__t__ == null || _x.__t__.isNil()) {
			return Go.pointer((({type: "IP address", text: _s} : ParseError))).value;
		};
		_ip.value = _x.__copy__();
		return ((null : stdgo.Error));
	}

	public function marshalText():{var _0:Slice<GoByte>; var _1:Error;} {
		var _ip = this.__copy__();
		if (_ip.__t__.length == ((0 : GoInt))) {
			return {_0: (("" : Slice<GoByte>)), _1: ((null : stdgo.Error))};
		};
		if (_ip.__t__.length != ipv4len && _ip.__t__.length != ipv6len) {
			return {_0: new Slice<GoUInt8>().nil(), _1: Go.pointer((({err: "invalid IP address", addr: _hexString(_ip.__copy__().__t__)} : AddrError))).value};
		};
		return {_0: ((_ip.toString() : Slice<GoByte>)), _1: ((null : stdgo.Error))};
	}

	public function toString():GoString {
		var _ip = this.__copy__();
		var _p:IP = _ip.__copy__();
		if (_ip.__t__.length == ((0 : GoInt))) {
			return "<nil>";
		};
		{
			var _p4:IP = _p.to4().__copy__();
			if (_p4.__t__.length == ipv4len) {
				final _maxIPv4StringLen:GoInt = "255.255.255.255".length;
				var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_maxIPv4StringLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
				var _n:GoInt = _ubtoa(_b, ((0 : GoInt)), _p4.__t__[((0 : GoInt))]);
				_b[_n] = ((".".code : GoRune));
				_n++;
				_n = _n + (_ubtoa(_b, _n, _p4.__t__[((1 : GoInt))]));
				_b[_n] = ((".".code : GoRune));
				_n++;
				_n = _n + (_ubtoa(_b, _n, _p4.__t__[((2 : GoInt))]));
				_b[_n] = ((".".code : GoRune));
				_n++;
				_n = _n + (_ubtoa(_b, _n, _p4.__t__[((3 : GoInt))]));
				return ((_b.__slice__(0, _n) : GoString));
			};
		};
		if (_p.__t__.length != ipv6len) {
			return (("?" : GoString)) + _hexString(_ip.__copy__().__t__);
		};
		var _e0:GoInt = -((1 : GoUnTypedInt));
		var _e1:GoInt = -((1 : GoUnTypedInt));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ipv6len, _i = _i + (((2 : GoInt))), {
				var _j:GoInt = _i;
				while (_j < ipv6len && _p.__t__[_j] == ((0 : GoUInt8)) && _p.__t__[_j + ((1 : GoInt))] == ((0 : GoUInt8))) {
					_j = _j + (((2 : GoInt)));
				};
				if (_j > _i && _j - _i > _e1 - _e0) {
					_e0 = _i;
					_e1 = _j;
					_i = _j;
				};
			});
		};
		if (_e1 - _e0 <= ((2 : GoInt))) {
			_e0 = -((1 : GoUnTypedInt));
			_e1 = -((1 : GoUnTypedInt));
		};
		final _maxLen:GoInt = "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff".length;
		var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_maxLen : GoInt))
			.toBasic());
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ipv6len, _i = _i + (((2 : GoInt))), {
				if (_i == _e0) {
					_b = _b.__append__(((":".code : GoRune)), ((":".code : GoRune)));
					_i = _e1;
					if (_i >= ipv6len) {
						break;
					};
				} else if (_i > ((0 : GoInt))) {
					_b = _b.__append__(((":".code : GoRune)));
				};
				_b = _appendHex(_b, ((((_p.__t__[_i] : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((_p.__t__[_i + ((1 : GoInt))] : GoUInt32)));
			});
		};
		return ((_b : GoString));
	}

	public function mask(_mask:IPMask):IP {
		var _ip = this.__copy__();
		if (_mask.__t__.length == ipv6len && _ip.__t__.length == ipv4len && _allFF(_mask.__slice__(0, ((12 : GoInt))).__copy__().__t__)) {
			_mask = _mask.__slice__(((12 : GoInt))).__copy__();
		};
		if (_mask.__t__.length == ipv4len
			&& _ip.__t__.length == ipv6len
			&& internal.bytealg.Bytealg.equal(_ip.__slice__(0, ((12 : GoInt))).__copy__().__t__, _v4InV6Prefix)) {
			_ip = _ip.__slice__(((12 : GoInt))).__copy__();
		};
		var _n:GoInt = _ip.__t__.length;
		if (_n != _mask.__t__.length) {
			return new IP();
		};
		var _out:IP = new IP(new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _n, _i++, {
				_out.__t__[_i] = _ip.__t__[_i] & _mask.__t__[_i];
			});
		};
		return _out.__copy__();
	}

	public function defaultMask():IPMask {
		var _ip = this.__copy__();
		{
			_ip = _ip.to4().__copy__();
			if (_ip.__t__ == null || _ip.__t__.isNil()) {
				return new IPMask();
			};
		};
		if (_ip.__t__[((0 : GoInt))] < ((128 : GoUInt8))) {
			return _classAMask.__copy__();
		} else if (_ip.__t__[((0 : GoInt))] < ((192 : GoUInt8))) {
			return _classBMask.__copy__();
		} else {
			return _classCMask.__copy__();
		};
	}

	public function to16():IP {
		var _ip = this.__copy__();
		if (_ip.__t__.length == ipv4len) {
			return ipv4(_ip.__t__[((0 : GoInt))], _ip.__t__[((1 : GoInt))], _ip.__t__[((2 : GoInt))], _ip.__t__[((3 : GoInt))]).__copy__();
		};
		if (_ip.__t__.length == ipv6len) {
			return _ip.__copy__();
		};
		return new IP();
	}

	public function to4():IP {
		var _ip = this.__copy__();
		if (_ip.__t__.length == ipv4len) {
			return _ip.__copy__();
		};
		if (_ip.__t__.length == ipv6len
			&& _isZeros(_ip.__slice__(((0 : GoInt)), ((10 : GoInt))).__copy__())
			&& _ip.__t__[((10 : GoInt))] == ((255 : GoUInt8))
			&& _ip.__t__[((11 : GoInt))] == ((255 : GoUInt8))) {
			return _ip.__slice__(((12 : GoInt)), ((16 : GoInt))).__copy__();
		};
		return new IP();
	}

	public function isGlobalUnicast():Bool {
		var _ip = this.__copy__();
		return (_ip.__t__.length == ipv4len || _ip.__t__.length == ipv6len)
			&& !_ip.equal(ipv4bcast.__copy__())
			&& !_ip.isUnspecified()
			&& !_ip.isLoopback()
			&& !_ip.isMulticast()
			&& !_ip.isLinkLocalUnicast();
	}

	public function isLinkLocalUnicast():Bool {
		var _ip = this.__copy__();
		{
			var _ip4:IP = _ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				return _ip4.__t__[((0 : GoInt))] == ((169 : GoUInt8)) && _ip4.__t__[((1 : GoInt))] == ((254 : GoUInt8));
			};
		};
		return _ip.__t__.length == ipv6len
			&& _ip.__t__[((0 : GoInt))] == ((254 : GoUInt8))
			&& _ip.__t__[((1 : GoInt))] & ((192 : GoUInt8)) == ((128 : GoUInt8));
	}

	public function isLinkLocalMulticast():Bool {
		var _ip = this.__copy__();
		{
			var _ip4:IP = _ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				return _ip4.__t__[((0 : GoInt))] == ((224 : GoUInt8))
					&& _ip4.__t__[((1 : GoInt))] == ((0 : GoUInt8))
					&& _ip4.__t__[((2 : GoInt))] == ((0 : GoUInt8));
			};
		};
		return _ip.__t__.length == ipv6len
			&& _ip.__t__[((0 : GoInt))] == ((255 : GoUInt8))
			&& _ip.__t__[((1 : GoInt))] & ((15 : GoUInt8)) == ((2 : GoUInt8));
	}

	public function isInterfaceLocalMulticast():Bool {
		var _ip = this.__copy__();
		return _ip.__t__.length == ipv6len
			&& _ip.__t__[((0 : GoInt))] == ((255 : GoUInt8))
			&& _ip.__t__[((1 : GoInt))] & ((15 : GoUInt8)) == ((1 : GoUInt8));
	}

	public function isMulticast():Bool {
		var _ip = this.__copy__();
		{
			var _ip4:IP = _ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				return _ip4.__t__[((0 : GoInt))] & ((240 : GoUInt8)) == ((224 : GoUInt8));
			};
		};
		return _ip.__t__.length == ipv6len && _ip.__t__[((0 : GoInt))] == ((255 : GoUInt8));
	}

	public function isPrivate():Bool {
		var _ip = this.__copy__();
		{
			var _ip4:IP = _ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				return _ip4.__t__[((0 : GoInt))] == ((10 : GoUInt8))
					|| (_ip4.__t__[((0 : GoInt))] == ((172 : GoUInt8))
						&& _ip4.__t__[((1 : GoInt))] & ((240 : GoUInt8)) == ((16 : GoUInt8)))
					|| (_ip4.__t__[((0 : GoInt))] == ((192 : GoUInt8)) && _ip4.__t__[((1 : GoInt))] == ((168 : GoUInt8)));
			};
		};
		return _ip.__t__.length == ipv6len && _ip.__t__[((0 : GoInt))] & ((254 : GoUInt8)) == ((252 : GoUInt8));
	}

	public function isLoopback():Bool {
		var _ip = this.__copy__();
		{
			var _ip4:IP = _ip.to4().__copy__();
			if (_ip4.__t__ != null && !_ip4.__t__.isNil()) {
				return _ip4.__t__[((0 : GoInt))] == ((127 : GoUInt8));
			};
		};
		return _ip.equal(ipv6loopback.__copy__());
	}

	public function isUnspecified():Bool {
		var _ip = this.__copy__();
		return _ip.equal(ipv4zero.__copy__()) || _ip.equal(ipv6unspecified.__copy__());
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new IP(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new IP(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new IP(this.__t__.__slice__(low, high));
}

@:named class IPMask {
	public function toString():GoString {
		var _m = this.__copy__();
		if (_m.__t__.length == ((0 : GoInt))) {
			return "<nil>";
		};
		return _hexString(_m.__copy__().__t__);
	}

	public function size():{var _0:GoInt; var _1:GoInt;} {
		var _m = this.__copy__();
		var _ones:GoInt = ((0 : GoInt)), _bits:GoInt = ((0 : GoInt));
		{
			final __tmp__0 = _simpleMaskLength(_m.__copy__());
			final __tmp__1 = _m.__t__.length * ((8 : GoInt));
			_ones = __tmp__0;
			_bits = __tmp__1;
		};
		if (_ones == -((1 : GoUnTypedInt))) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt))};
		};
		return {_0: _ones, _1: _bits};
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new IPMask(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new IPMask(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new IPMask(this.__t__.__slice__(low, high));
}

@:structInit class IPNet {
	public function toString():GoString {
		var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _networkNumberAndMask(_n),
			_nn:IP = __tmp__._0,
			_m:IPMask = __tmp__._1;
		if (_nn.__t__ == null || _nn.__t__.isNil() || _m.__t__ == null || _m.__t__.isNil()) {
			return "<nil>";
		};
		var _l:GoInt = _simpleMaskLength(_m.__copy__());
		if (_l == -((1 : GoUnTypedInt))) {
			return _nn.toString() + (("/" : GoString)) + _m.toString();
		};
		return _nn.toString() + (("/" : GoString)) + internal.itoa.Itoa.uitoa(((_l : GoUInt)));
	}

	public function network():GoString {
		var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "ip+net";
	}

	public function contains(_ip:IP):Bool {
		var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _networkNumberAndMask(_n),
			_nn:IP = __tmp__._0,
			_m:IPMask = __tmp__._1;
		{
			var _x:IP = _ip.to4().__copy__();
			if (_x.__t__ != null && !_x.__t__.isNil()) {
				_ip = _x.__copy__();
			};
		};
		var _l:GoInt = _ip.__t__.length;
		if (_l != _nn.__t__.length) {
			return false;
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _l, _i++, {
				if (_nn.__t__[_i] & _m.__t__[_i] != _ip.__t__[_i] & _m.__t__[_i]) {
					return false;
				};
			});
		};
		return true;
	}

	public var ip:IP = new IP();
	public var mask:IPMask = new IPMask();

	public function new(?ip:IP, ?mask:IPMask)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new IPNet(ip, mask);
	}

	public function __set__(__tmp__) {
		this.ip = __tmp__.ip;
		this.mask = __tmp__.mask;
		return this;
	}
}

@:structInit class IPAddr {
	public function _toLocal(_net:GoString):T_sockaddr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Go.pointer(new IPAddr(_loopbackIP(_net).__copy__(), _a.value.zone)).value;
	}

	public function _sockaddr(_family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: ((null : stdgo.Error))};
		};
		return _ipToSockaddr(_family, _a.value.ip.__copy__(), ((0 : GoInt)), _a.value.zone);
	}

	public function _family():GoInt {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__.length <= ipv4len) {
			return stdgo.syscall.Syscall.af_INET;
		};
		if (_a.value.ip.to4().__t__ != null && !_a.value.ip.to4().__t__.isNil()) {
			return stdgo.syscall.Syscall.af_INET;
		};
		return stdgo.syscall.Syscall.af_INET6;
	}

	public function _opAddr():Addr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return ((null : Addr));
		};
		return _a.value;
	}

	public function _isWildcard():Bool {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__ == null || _a.value.ip.__t__.isNil()) {
			return true;
		};
		return _a.value.ip.isUnspecified();
	}

	public function toString():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return "<nil>";
		};
		var _ip:GoString = _ipEmptyString(_a.value.ip.__copy__());
		if (_a.value.zone != (("" : GoString))) {
			return _ip + (("%" : GoString)) + _a.value.zone;
		};
		return _ip;
	}

	public function network():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "ip";
	}

	public var ip:IP = new IP();
	public var zone:GoString = (("" : GoString));

	public function new(?ip:IP, ?zone:GoString)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new IPAddr(ip, zone);
	}

	public function __set__(__tmp__) {
		this.ip = __tmp__.ip;
		this.zone = __tmp__.zone;
		return this;
	}
}

@:structInit class IPConn {
	public function _writeMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_c.value._conn._fd.value._isConnected) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: errWriteToConnected};
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: _errMissingAddress};
		};
		var __tmp__ = _addr.value._sockaddr(_c.value._conn._fd.value._family),
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: _err};
		};
		return _c.value._conn._fd.value._writeMsg(_b, _oob, Go.toInterface(_sa));
	}

	public function _writeTo(_b:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_c.value._conn._fd.value._isConnected) {
			return {_0: ((0 : GoInt)), _1: errWriteToConnected};
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: _errMissingAddress};
		};
		var __tmp__ = _addr.value._sockaddr(_c.value._conn._fd.value._family),
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: _err};
		};
		return _c.value._conn._fd.value._writeTo(_b, Go.toInterface(_sa));
	}

	public function _readMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<IPAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<IPAddr> = new Pointer<IPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		var _sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr));
		{
			var __tmp__ = _c.value._conn._fd.value._readMsg(_b, _oob, ((0 : GoInt)));
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_sa = Go.toInterface(__tmp__._3);
			_err = __tmp__._4;
		};
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: ""} : IPAddr)));
		} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : IPAddr)));
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function _readFrom(_b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<IPAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _addr:Pointer<IPAddr> = new Pointer<IPAddr>().nil();
		var __tmp__ = _c.value._conn._fd.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: ""} : IPAddr)));
			_n = _stripIPv4Header(_n, _b);
		} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : IPAddr)));
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function writeMsgIP(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: stdgo.syscall.Syscall.einval};
		};
		{
			var __tmp__ = _c.value._writeMsg(_b, _oob, _addr);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _oobn, _2: _err};
	}

	public function writeTo(_b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = try {
			{value: ((_addr.__underlying__().value : IPAddr)), ok: true};
		} catch (_) {
			{value: new Pointer<IPAddr>().nil(), ok: false};
		}, _a = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: ((0 : GoInt)), _1: Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr,
				err: stdgo.syscall.Syscall.einval
			} : OpError))).value};
		};
		var __tmp__ = _c.value._writeTo(_b, _a),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _a.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function writeToIP(_b:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._writeTo(_b, _addr),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function readMsgIP(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<IPAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<IPAddr> = new Pointer<IPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {
				_0: ((0 : GoInt)),
				_1: ((0 : GoInt)),
				_2: ((0 : GoInt)),
				_3: new Pointer<IPAddr>().nil(),
				_4: stdgo.syscall.Syscall.einval
			};
		};
		{
			var __tmp__ = _c.value._readMsg(_b, _oob);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_addr = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function readFrom(_b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: ((null : Addr)), _2: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<IPAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: _n, _1: ((null : Addr)), _2: _err};
		};
		return {_0: _n, _1: _addr.value, _2: _err};
	}

	public function readFromIP(_b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<IPAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: new Pointer<IPAddr>().nil(), _2: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<IPAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawConn(_c.value._conn._fd);
	}

	@:embedded
	public var _conn:T_conn = new T_conn();

	public function new(?_conn:T_conn)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_conn) + "}";
	}

	public function close():stdgo.Error
		return _conn.close();

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:stdgo.Error;}
		return _conn.file();

	public function localAddr():Addr
		return _conn.localAddr();

	public function read(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.read(_0);

	public function remoteAddr():Addr
		return _conn.remoteAddr();

	public function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setDeadline(_0);

	public function setReadBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setReadBuffer(_0);

	public function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setReadDeadline(_0);

	public function setWriteBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setWriteBuffer(_0);

	public function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setWriteDeadline(_0);

	public function write(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.write(_0);

	public function _ok():Bool
		return _conn._ok();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new IPConn(_conn);
	}

	public function __set__(__tmp__) {
		this._conn = __tmp__._conn;
		return this;
	}
}

@:structInit class T_ipStackCapabilities {
	public function _probe():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			var __tmp__ = _sysSocket(stdgo.syscall.Syscall.af_INET, stdgo.syscall.Syscall.sock_STREAM, stdgo.syscall.Syscall.ipproto_TCP),
				_s:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (Go.toInterface(_err) == Go.toInterface(stdgo.syscall.Syscall.eafnosupport.__t__)
				|| Go.toInterface(_err) == Go.toInterface(stdgo.syscall.Syscall.eprotonosupport.__t__)) {} else if (_err == null) {
				internal.poll.Poll.closeFunc(_s);
				_p.value._ipv4Enabled = true;
			};
			var _probes:Slice<T__struct_46> = new Slice<T__struct_46>((({_laddr: (({ip: parseIP("::1").__copy__(), port: 0, zone: ""} : TCPAddr)).__copy__(),
				_value: ((1 : GoInt))} : T__struct_46)).__copy__(),
				(({_laddr: (({ip: ipv4(((127 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
					((1 : GoUInt8))).__copy__(), port: 0, zone: ""} : TCPAddr)).__copy__(), _value: ((0 : GoInt))} : T__struct_46)).__copy__());
			if (stdgo.runtime.Runtime.goos == (("dragonfly" : GoString)) || stdgo.runtime.Runtime.goos == (("openbsd" : GoString))) {
				_probes = _probes.__slice__(0, ((1 : GoInt)));
			};
			{
				var _i;
				for (_obj in _probes.keyValueIterator()) {
					_i = _obj.key;
					var __tmp__ = _sysSocket(stdgo.syscall.Syscall.af_INET6, stdgo.syscall.Syscall.sock_STREAM, stdgo.syscall.Syscall.ipproto_TCP),
						_s:GoInt = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						continue;
					};
					{
						var a0 = _s;
						deferstack.unshift(() -> internal.poll.Poll.closeFunc(a0));
					};
					stdgo.syscall.Syscall.setsockoptInt(_s, stdgo.syscall.Syscall.ipproto_IPV6, stdgo.syscall.Syscall.ipv6_V6ONLY, _probes[_i]._value);
					var __tmp__ = _probes[_i]._laddr._sockaddr(stdgo.syscall.Syscall.af_INET6),
						_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err != null) {
						continue;
					};
					{
						var _err:stdgo.Error = stdgo.syscall.Syscall.bind(_s, Go.toInterface(_sa));
						if (_err != null) {
							continue;
						};
					};
					if (_i == ((0 : GoInt))) {
						_p.value._ipv6Enabled = true;
					} else {
						_p.value._ipv4MappedIPv6Enabled = true;
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

	@:embedded
	public var once:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
	public var _ipv4Enabled:Bool = false;
	public var _ipv6Enabled:Bool = false;
	public var _ipv4MappedIPv6Enabled:Bool = false;

	public function new(?once:stdgo.sync.Sync.Once, ?_ipv4Enabled:Bool, ?_ipv6Enabled:Bool, ?_ipv4MappedIPv6Enabled:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(once)
			+ " "
			+ Go.string(_ipv4Enabled)
			+ " "
			+ Go.string(_ipv6Enabled)
			+ " "
			+ Go.string(_ipv4MappedIPv6Enabled)
			+ "}";
	}

	public function do_(_f:() -> Void)
		once.do_(_0);

	public function _doSlow(_f:() -> Void)
		once._doSlow(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ipStackCapabilities(once, _ipv4Enabled, _ipv6Enabled, _ipv4MappedIPv6Enabled);
	}

	public function __set__(__tmp__) {
		this.once = __tmp__.once;
		this._ipv4Enabled = __tmp__._ipv4Enabled;
		this._ipv6Enabled = __tmp__._ipv6Enabled;
		this._ipv4MappedIPv6Enabled = __tmp__._ipv4MappedIPv6Enabled;
		return this;
	}
}

@:named class T_addrList {
	public function _partition(_strategy:Addr->Bool):{var _0:T_addrList; var _1:T_addrList;} {
		var _addrs = this.__copy__();
		var _primaries:T_addrList = new T_addrList(),
			_fallbacks:T_addrList = new T_addrList();
		var _primaryLabel:Bool = false;
		{
			var _i;
			var _addr;
			for (_obj in _addrs.__t__.keyValueIterator()) {
				_i = _obj.key;
				_addr = _obj.value;
				var _label:Bool = _strategy(_addr);
				if (_i == ((0 : GoInt)) || _label == _primaryLabel) {
					_primaryLabel = _label;
					_primaries = _primaries.__append__(_addr).__copy__();
				} else {
					_fallbacks = _fallbacks.__append__(_addr).__copy__();
				};
			};
		};
		return {_0: _primaries, _1: _fallbacks};
	}

	public function _first(_strategy:Addr->Bool):Addr {
		var _addrs = this.__copy__();
		for (_addr in _addrs.__t__) {
			if (_strategy(_addr)) {
				return _addr;
			};
		};
		return _addrs.__t__[((0 : GoInt))];
	}

	public function _forResolve(_network:GoString, _addr:GoString):Addr {
		var _addrs = this.__copy__();
		var _want6:Bool = false;
		if (_network == (("ip" : GoString))) {
			_want6 = _count(_addr, ((":".code : GoRune))) > ((0 : GoInt));
		} else if (_network == (("tcp" : GoString)) || _network == (("udp" : GoString))) {
			_want6 = _count(_addr, (("[".code : GoRune))) > ((0 : GoInt));
		};
		if (_want6) {
			return _addrs._first(_isNotIPv4);
		};
		return _addrs._first(_isIPv4);
	}

	public var __t__:Slice<Addr>;

	public function new(?t:Slice<Addr>) {
		__t__ = t == null ? new Slice<Addr>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_addrList(__t__);

	public function __append__(args:haxe.Rest<Addr>)
		return new T_addrList(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_addrList(this.__t__.__slice__(low, high));
}

@:structInit class Resolver {
	public function _lookupAddr(_ctx:stdgo.context.Context.Context, _addr:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _ptrs:Slice<GoString> = new Slice<GoString>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<GoString>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupTXT(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _txts:Slice<GoString> = new Slice<GoString>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<GoString>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupNS(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<NS>>; var _1:Error;} {
		var _nss:Slice<Pointer<NS>> = new Slice<Pointer<NS>>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<Pointer<NS>>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupMX(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<MX>>; var _1:Error;} {
		var _mxs:Slice<Pointer<MX>> = new Slice<Pointer<MX>>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<Pointer<MX>>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupSRV(_ctx:stdgo.context.Context.Context, _service:GoString, _proto:GoString,
			_name:GoString):{var _0:GoString; var _1:Slice<Pointer<SRV>>; var _2:Error;} {
		var _cname:GoString = (("" : GoString)),
			_srvs:Slice<Pointer<SRV>> = new Slice<Pointer<SRV>>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: "", _1: new Slice<Pointer<SRV>>().nil(), _2: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupCNAME(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:GoString; var _1:Error;} {
		var _cname:GoString = (("" : GoString)),
			_err:Error = ((null : stdgo.Error));
		return {_0: "", _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupPort(_ctx:stdgo.context.Context.Context, _network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;} {
		var _port:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _goLookupPort(_network, _service);
	}

	public function _lookupIP(_ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;} {
		var _addrs:Slice<IPAddr> = new Slice<IPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<IPAddr>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function _lookupHost(_ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _addrs:Slice<GoString> = new Slice<GoString>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Slice<GoString>().nil(), _1: stdgo.syscall.Syscall.enoprotoopt};
	}

	public function lookupAddr(_ctx:stdgo.context.Context.Context, _addr:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._lookupAddr(_ctx, _addr),
			_names:Slice<GoString> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<GoString>().nil(), _1: _err};
		};
		var _filteredNames:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))])
			.setCap(((_names.length : GoInt)).toBasic());
		for (_name in _names) {
			if (_isDomainName(_name)) {
				_filteredNames = _filteredNames.__append__(_name);
			};
		};
		if (_names.length != _filteredNames.length) {
			return {_0: _filteredNames, _1: Go.pointer((({
				err: _errMalformedDNSRecordsDetail,
				name: _addr,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		return {_0: _filteredNames, _1: ((null : stdgo.Error))};
	}

	public function lookupTXT(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _r.value._lookupTXT(_ctx, _name);
	}

	public function lookupNS(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<NS>>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._lookupNS(_ctx, _name),
			_records:Slice<Pointer<NS>> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<Pointer<NS>>().nil(), _1: _err};
		};
		var _filteredNS:Slice<Pointer<NS>> = new Slice<Pointer<NS>>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<NS>().nil()])
			.setCap(((_records.length : GoInt)).toBasic());
		for (_ns in _records) {
			if (_ns == null || _ns.isNil()) {
				continue;
			};
			if (!_isDomainName(_ns.value.host)) {
				continue;
			};
			_filteredNS = _filteredNS.__append__(_ns);
		};
		if (_records.length != _filteredNS.length) {
			return {_0: _filteredNS, _1: Go.pointer((({
				err: _errMalformedDNSRecordsDetail,
				name: _name,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		return {_0: _filteredNS, _1: ((null : stdgo.Error))};
	}

	public function lookupMX(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<MX>>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._lookupMX(_ctx, _name),
			_records:Slice<Pointer<MX>> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<Pointer<MX>>().nil(), _1: _err};
		};
		var _filteredMX:Slice<Pointer<MX>> = new Slice<Pointer<MX>>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<MX>().nil()])
			.setCap(((_records.length : GoInt)).toBasic());
		for (_mx in _records) {
			if (_mx == null || _mx.isNil()) {
				continue;
			};
			if (_mx.value.host != (("." : GoString)) && !_isDomainName(_mx.value.host)) {
				continue;
			};
			_filteredMX = _filteredMX.__append__(_mx);
		};
		if (_records.length != _filteredMX.length) {
			return {_0: _filteredMX, _1: Go.pointer((({
				err: _errMalformedDNSRecordsDetail,
				name: _name,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		return {_0: _filteredMX, _1: ((null : stdgo.Error))};
	}

	public function lookupSRV(_ctx:stdgo.context.Context.Context, _service:GoString, _proto:GoString,
			_name:GoString):{var _0:GoString; var _1:Slice<Pointer<SRV>>; var _2:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._lookupSRV(_ctx, _service, _proto, _name),
			_cname:GoString = __tmp__._0,
			_addrs:Slice<Pointer<SRV>> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: "", _1: new Slice<Pointer<SRV>>().nil(), _2: _err};
		};
		if (_cname != (("" : GoString)) && !_isDomainName(_cname)) {
			return {_0: "", _1: new Slice<Pointer<SRV>>().nil(), _2: Go.pointer((({
				err: "SRV header name is invalid",
				name: _name,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		var _filteredAddrs:Slice<Pointer<SRV>> = new Slice<Pointer<SRV>>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<SRV>().nil()])
			.setCap(((_addrs.length : GoInt)).toBasic());
		for (_addr in _addrs) {
			if (_addr == null || _addr.isNil()) {
				continue;
			};
			if (!_isDomainName(_addr.value.target)) {
				continue;
			};
			_filteredAddrs = _filteredAddrs.__append__(_addr);
		};
		if (_addrs.length != _filteredAddrs.length) {
			return {_0: _cname, _1: _filteredAddrs, _2: Go.pointer((({
				err: _errMalformedDNSRecordsDetail,
				name: _name,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		return {_0: _cname, _1: _filteredAddrs, _2: ((null : stdgo.Error))};
	}

	public function lookupCNAME(_ctx:stdgo.context.Context.Context, _host:GoString):{var _0:GoString; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _r.value._lookupCNAME(_ctx, _host),
			_cname:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: "", _1: _err};
		};
		if (!_isDomainName(_cname)) {
			return {_0: "", _1: Go.pointer((({
				err: _errMalformedDNSRecordsDetail,
				name: _host,
				server: "",
				isTimeout: false,
				isTemporary: false,
				isNotFound: false
			} : DNSError))).value};
		};
		return {_0: _cname, _1: ((null : stdgo.Error))};
	}

	public function lookupPort(_ctx:stdgo.context.Context.Context, _network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _port:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		var __tmp__ = _parsePort(_service),
			_port:GoInt = __tmp__._0,
			_needsLookup:Bool = __tmp__._1;
		if (_needsLookup) {
			if (_network == (("tcp" : GoString)) || _network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))
				|| _network == (("udp" : GoString)) || _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else
				if (_network == (("" : GoString))) {
				_network = "ip";
			} else {
				return {_0: ((0 : GoInt)), _1: Go.pointer((({err: "unknown network", addr: _network} : AddrError))).value};
			};
			{
				var __tmp__ = _r.value._lookupPort(_ctx, _network, _service);
				_port = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: ((0 : GoInt)), _1: _err};
			};
		};
		if (((0 : GoInt)) > _port || _port > ((65535 : GoInt))) {
			return {_0: ((0 : GoInt)), _1: Go.pointer((({err: "invalid port", addr: _service} : AddrError))).value};
		};
		return {_0: _port, _1: ((null : stdgo.Error))};
	}

	public function _lookupIPAddr(_ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_host == (("" : GoString))) {
			return {_0: new Slice<IPAddr>().nil(), _1: Go.pointer((({
				err: _errNoSuchHost.error(),
				name: _host,
				isNotFound: true,
				server: "",
				isTimeout: false,
				isTemporary: false
			} : DNSError))).value};
		};
		{
			var __tmp__ = _parseIPZone(_host),
				_ip:IP = __tmp__._0,
				_zone:GoString = __tmp__._1;
			if (_ip.__t__ != null && !_ip.__t__.isNil()) {
				return {_0: new Slice<IPAddr>((({ip: _ip.__copy__(), zone: _zone} : IPAddr)).__copy__()), _1: ((null : stdgo.Error))};
			};
		};
		var __tmp__ = try {
			{value: ((_ctx.value(Go.toInterface(new internal.nettrace.Nettrace.TraceKey().__copy__()))
				.value : Pointer<internal.nettrace.Nettrace.Trace>)), ok: true};
		} catch (_) {
			{value: new Pointer<internal.nettrace.Nettrace.Trace>().nil(), ok: false};
		}, _trace = __tmp__.value, _ = __tmp__.ok;
		if (_trace != null && !_trace.isNil() && _trace.value.dnsstart != null) {
			_trace.value.dnsstart(_host);
		};
		var _resolverFunc:(stdgo.context.Context.Context, GoString, GoString) -> {
			var _0:Slice<IPAddr>;
			var _1:stdgo.Error;
		} = _r.value._lookupIP;
		{
			var __tmp__ = try {
				{value: ((_ctx.value(Go.toInterface(new internal.nettrace.Nettrace.LookupIPAltResolverKey().__copy__()))
					.value : (stdgo.context.Context.Context, GoString, GoString) -> {
						var _0:Slice<IPAddr>;
						var _1:Error;
					})), ok: true};
			} catch (_) {
				{value: null, ok: false};
			}, _alt = __tmp__.value, _ = __tmp__.ok;
			if (_alt != null) {
				_resolverFunc = _alt;
			};
		};
		var __tmp__ = stdgo.context.Context.withCancel(_withUnexpiredValuesPreserved(_ctx)),
			_lookupGroupCtx:stdgo.context.Context.Context = __tmp__._0,
			_lookupGroupCancel:stdgo.context.Context.CancelFunc = __tmp__._1;
		var _lookupKey:GoString = _network + (("\000" : GoString)) + _host;
		_dnsWaitGroup.add(((1 : GoInt)));
		var __tmp__ = _r.value._getLookupGroup().value.doChan(_lookupKey, function():{var _0:AnyInterface; var _1:Error;} {
			var recover_exception:Error = null;
			var deferstack:Array<Void->Void> = [];
			deferstack.unshift(() -> _dnsWaitGroup.done());
			{
				for (defer in deferstack) {
					defer();
				};
				return _testHookLookupIP(_lookupGroupCtx, _resolverFunc, _network, _host);
			};
			try {
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
					return {_0: ((null : AnyInterface)), _1: ((null : stdgo.Error))};
				};
			};
		}),
			_ch:Chan<internal.singleflight.Singleflight.Result> = __tmp__._0,
			_called:Bool = __tmp__._1;
		if (!_called) {
			_dnsWaitGroup.done();
		};
		{
			{
				_ctx.done().get();
				if (_r.value._getLookupGroup().value.forgetUnshared(_lookupKey)) {
					_lookupGroupCancel.__t__();
				} else {
					Go.routine({
						var a = function():Void {
							_ch.get();
							_lookupGroupCancel.__t__();
						};
						a();
					});
				};
				var _err:stdgo.Error = _mapErr(_ctx.err());
				if (_trace != null && !_trace.isNil() && _trace.value.dnsdone != null) {
					_trace.value.dnsdone(new Slice<AnyInterface>().nil(), false, _err);
				};
				return {_0: new Slice<IPAddr>().nil(), _1: _err};
			};
			{
				var _r:internal.singleflight.Singleflight.Result = _ch.get();
				_lookupGroupCancel.__t__();
				if (_trace != null && !_trace.isNil() && _trace.value.dnsdone != null) {
					var __tmp__ = try {
						{value: ((_r.val.value : Slice<IPAddr>)), ok: true};
					} catch (_) {
						{value: new Slice<IPAddr>().nil(), ok: false};
					}, _addrs = __tmp__.value, _ = __tmp__.ok;
					_trace.value.dnsdone(_ipAddrsEface(_addrs), _r.shared, _r.err);
				};
				return _lookupIPReturn(Go.toInterface(_r.val), _r.err, _r.shared);
			};
		};
	}

	public function lookupIP(_ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IP>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _parseNetwork(_ctx, _network, false),
			_afnet:GoString = __tmp__._0,
			_:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: new Slice<IP>().nil(), _1: _err};
		};
		if (_afnet == (("ip" : GoString)) || _afnet == (("ip4" : GoString)) || _afnet == (("ip6" : GoString))) {} else {
			return {_0: new Slice<IP>().nil(), _1: new UnknownNetworkError(_network)};
		};
		var __tmp__ = _r.value._internetAddrList(_ctx, _afnet, _host),
			_addrs:T_addrList = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Slice<IP>().nil(), _1: _err};
		};
		var _ips:Slice<IP> = new Slice<IP>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) new IP()]).setCap(((_addrs.__t__.length : GoInt)).toBasic());
		for (_addr in _addrs.__t__) {
			_ips = _ips.__append__(((_addr.__underlying__().value : IPAddr)).value.ip.__copy__());
		};
		return {_0: _ips, _1: ((null : stdgo.Error))};
	}

	public function lookupIPAddr(_ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _r.value._lookupIPAddr(_ctx, "ip", _host);
	}

	public function lookupHost(_ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<GoString>; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _addrs:Slice<GoString> = new Slice<GoString>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (_host == (("" : GoString))) {
			return {_0: new Slice<GoString>().nil(), _1: Go.pointer((({
				err: _errNoSuchHost.error(),
				name: _host,
				isNotFound: true,
				server: "",
				isTimeout: false,
				isTemporary: false
			} : DNSError))).value};
		};
		{
			var __tmp__ = _parseIPZone(_host),
				_ip:IP = __tmp__._0,
				_:GoString = __tmp__._1;
			if (_ip.__t__ != null && !_ip.__t__.isNil()) {
				return {_0: new Slice<GoString>(_host), _1: ((null : stdgo.Error))};
			};
		};
		return _r.value._lookupHost(_ctx, _host);
	}

	public function _getLookupGroup():Pointer<internal.singleflight.Singleflight.Group> {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_r == null || _r.isNil()) {
			return Go.pointer(defaultResolver.value._lookupGroup);
		};
		return Go.pointer(_r.value._lookupGroup);
	}

	public function _strictErrors():Bool {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _r != null && !_r.isNil() && _r.value.strictErrors;
	}

	public function _preferGo():Bool {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _r != null && !_r.isNil() && _r.value.preferGo;
	}

	public function _internetAddrList(_ctx:stdgo.context.Context.Context, _net:GoString, _addr:GoString):{var _0:T_addrList; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error)),
			_host:GoString = (("" : GoString)),
			_port:GoString = (("" : GoString)),
			_portnum:GoInt = ((0 : GoInt));
		if (_net == (("tcp" : GoString)) || _net == (("tcp4" : GoString)) || _net == (("tcp6" : GoString)) || _net == (("udp" : GoString))
			|| _net == (("udp4" : GoString)) || _net == (("udp6" : GoString))) {
			if (_addr != (("" : GoString))) {
				{
					{
						var __tmp__ = splitHostPort(_addr);
						_host = __tmp__._0;
						_port = __tmp__._1;
						_err = __tmp__._2;
					};
					if (_err != null) {
						return {_0: new T_addrList(), _1: _err};
					};
				};
				{
					{
						var __tmp__ = _r.value.lookupPort(_ctx, _net, _port);
						_portnum = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						return {_0: new T_addrList(), _1: _err};
					};
				};
			};
		} else if (_net == (("ip" : GoString)) || _net == (("ip4" : GoString)) || _net == (("ip6" : GoString))) {
			if (_addr != (("" : GoString))) {
				_host = _addr;
			};
		} else {
			return {_0: new T_addrList(), _1: new UnknownNetworkError(_net)};
		};
		var _inetaddr:IPAddr->Addr = function(_ip:IPAddr):Addr {
			if (_net == (("tcp" : GoString)) || _net == (("tcp4" : GoString)) || _net == (("tcp6" : GoString))) {
				return Go.pointer((({ip: _ip.ip.__copy__(), port: _portnum, zone: _ip.zone} : TCPAddr))).value;
			} else if (_net == (("udp" : GoString)) || _net == (("udp4" : GoString)) || _net == (("udp6" : GoString))) {
				return Go.pointer((({ip: _ip.ip.__copy__(), port: _portnum, zone: _ip.zone} : UDPAddr))).value;
			} else if (_net == (("ip" : GoString)) || _net == (("ip4" : GoString)) || _net == (("ip6" : GoString))) {
				return Go.pointer((({ip: _ip.ip.__copy__(), zone: _ip.zone} : IPAddr))).value;
			} else {
				throw(("unexpected network: " : GoString)) + _net;
			};
		};
		if (_host == (("" : GoString))) {
			return {_0: new T_addrList(new Slice<Addr>(_inetaddr(new IPAddr().__copy__()))).__copy__(), _1: ((null : stdgo.Error))};
		};
		var __tmp__ = _r.value._lookupIPAddr(_ctx, _net, _host),
			_ips:Slice<IPAddr> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new T_addrList(), _1: _err};
		};
		if (_ips.length == ((1 : GoInt)) && _ips[((0 : GoInt))].ip.equal(ipv6unspecified.__copy__())) {
			_ips = _ips.__append__((({ip: ipv4zero.__copy__(), zone: ""} : IPAddr)).__copy__());
		};
		var _filter:IPAddr->Bool = null;
		if (_net != (("" : GoString)) && _net[_net.length - ((1 : GoInt))] == (("4".code : GoRune))) {
			_filter = _ipv4only;
		};
		if (_net != (("" : GoString)) && _net[_net.length - ((1 : GoInt))] == (("6".code : GoRune))) {
			_filter = _ipv6only;
		};
		return _filterAddrList(_filter, _ips, _inetaddr, _host);
	}

	public function _resolveAddrList(_ctx:stdgo.context.Context.Context, _op:GoString, _network:GoString, _addr:GoString,
			_hint:Addr):{var _0:T_addrList; var _1:Error;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _parseNetwork(_ctx, _network, true),
			_afnet:GoString = __tmp__._0,
			_:GoInt = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			return {_0: new T_addrList(), _1: _err};
		};
		if (_op == (("dial" : GoString)) && _addr == (("" : GoString))) {
			return {_0: new T_addrList(), _1: _errMissingAddress};
		};
		if (_afnet == (("unix" : GoString)) || _afnet == (("unixgram" : GoString)) || _afnet == (("unixpacket" : GoString))) {
			var __tmp__ = resolveUnixAddr(_afnet, _addr),
				_addr:Pointer<UnixAddr> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: new T_addrList(), _1: _err};
			};
			if (_op == (("dial" : GoString)) && _hint != null && _addr.value.network() != _hint.network()) {
				return {_0: new T_addrList(), _1: Go.pointer((({err: "mismatched local address type", addr: _hint.toString()} : AddrError))).value};
			};
			return {_0: new T_addrList(new Slice<Addr>(_addr.value)).__copy__(), _1: ((null : stdgo.Error))};
		};
		var __tmp__ = _r.value._internetAddrList(_ctx, _afnet, _addr),
			_addrs:T_addrList = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null || _op != (("dial" : GoString)) || _hint == null) {
			return {_0: _addrs.__copy__(), _1: _err};
		};
		var _tcp:Pointer<TCPAddr> = new Pointer<TCPAddr>().nil(),
			_udp:Pointer<UDPAddr> = new Pointer<UDPAddr>().nil(),
			_ip:Pointer<IPAddr> = new Pointer<IPAddr>().nil(),
			_wildcard:Bool = false;
		if (Go.assertable(((_hint : Pointer<TCPAddr>)))) {
			var _hint:Pointer<TCPAddr> = _hint == null ? null : _hint.__underlying__() == null ? null : _hint == null ? null : _hint.__underlying__().value;
			_tcp = _hint;
			_wildcard = _tcp.value._isWildcard();
		} else if (Go.assertable(((_hint : Pointer<UDPAddr>)))) {
			var _hint:Pointer<UDPAddr> = _hint == null ? null : _hint.__underlying__() == null ? null : _hint == null ? null : _hint.__underlying__().value;
			_udp = _hint;
			_wildcard = _udp.value._isWildcard();
		} else if (Go.assertable(((_hint : Pointer<IPAddr>)))) {
			var _hint:Pointer<IPAddr> = _hint == null ? null : _hint.__underlying__() == null ? null : _hint == null ? null : _hint.__underlying__().value;
			_ip = _hint;
			_wildcard = _ip.value._isWildcard();
		};
		var _naddrs:T_addrList = _addrs.__slice__(0, ((0 : GoInt))).__copy__();
		for (_addr in _addrs.__t__) {
			if (_addr.network() != _hint.network()) {
				return {_0: new T_addrList(), _1: Go.pointer((({err: "mismatched local address type", addr: _hint.toString()} : AddrError))).value};
			};
			if (Go.assertable(((_addr : Pointer<TCPAddr>)))) {
				var _addr:Pointer<TCPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__()
					.value;
				if (!_wildcard && !_addr.value._isWildcard() && !_addr.value.ip._matchAddrFamily(_tcp.value.ip.__copy__())) {
					continue;
				};
				_naddrs = _naddrs.__append__(_addr).__copy__();
			} else if (Go.assertable(((_addr : Pointer<UDPAddr>)))) {
				var _addr:Pointer<UDPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__()
					.value;
				if (!_wildcard && !_addr.value._isWildcard() && !_addr.value.ip._matchAddrFamily(_udp.value.ip.__copy__())) {
					continue;
				};
				_naddrs = _naddrs.__append__(_addr).__copy__();
			} else if (Go.assertable(((_addr : Pointer<IPAddr>)))) {
				var _addr:Pointer<IPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__().value;
				if (!_wildcard && !_addr.value._isWildcard() && !_addr.value.ip._matchAddrFamily(_ip.value.ip.__copy__())) {
					continue;
				};
				_naddrs = _naddrs.__append__(_addr).__copy__();
			};
		};
		if (_naddrs.__t__.length == ((0 : GoInt))) {
			return {_0: new T_addrList(), _1: Go.pointer((({err: _errNoSuitableAddress.error(), addr: _hint.toString()} : AddrError))).value};
		};
		return {_0: _naddrs.__copy__(), _1: ((null : stdgo.Error))};
	}

	public var preferGo:Bool = false;
	public var strictErrors:Bool = false;
	public var dial:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
	} = null;
	public var _lookupGroup:internal.singleflight.Singleflight.Group = new internal.singleflight.Singleflight.Group();

	public function new(?preferGo:Bool, ?strictErrors:Bool, ?dial:(stdgo.context.Context.Context, GoString, GoString) -> {
		var _0:Conn;
		var _1:stdgo.Error;
	}, ?_lookupGroup:internal.singleflight.Singleflight.Group)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(preferGo) + " " + Go.string(strictErrors) + " " + Go.string(dial) + " " + Go.string(_lookupGroup) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Resolver(preferGo, strictErrors, dial, _lookupGroup);
	}

	public function __set__(__tmp__) {
		this.preferGo = __tmp__.preferGo;
		this.strictErrors = __tmp__.strictErrors;
		this.dial = __tmp__.dial;
		this._lookupGroup = __tmp__._lookupGroup;
		return this;
	}
}

@:structInit class T_onlyValuesCtx {
	public function value(_key:AnyInterface):AnyInterface {
		var _ovc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			{
				_ovc.value._lookupValues.done().get();
				return ((null : AnyInterface));
			};
			null;
		};
	}

	@:embedded
	public var context:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
	public var _lookupValues:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));

	public function new(?context:stdgo.context.Context.Context, ?_lookupValues:stdgo.context.Context.Context)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(context) + " " + Go.string(_lookupValues) + "}";
	}

	public function deadline():{var _0:stdgo.time.Time.Time; var _1:Bool;}
		return context.deadline();

	public function done():Chan<{}>
		return context.done();

	public function err():stdgo.Error
		return context.err();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_onlyValuesCtx(context, _lookupValues);
	}

	public function __set__(__tmp__) {
		this.context = __tmp__.context;
		this._lookupValues = __tmp__._lookupValues;
		return this;
	}
}

@:named class HardwareAddr {
	public function toString():GoString {
		var _a = this.__copy__();
		if (_a.__t__.length == ((0 : GoInt))) {
			return "";
		};
		var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
			.setCap(((_a.__t__.length * ((3 : GoInt))
			- ((1 : GoInt)):GoInt)).toBasic());
		{
			var _i;
			var _b;
			for (_obj in _a.__t__.keyValueIterator()) {
				_i = _obj.key;
				_b = _obj.value;
				if (_i > ((0 : GoInt))) {
					_buf = _buf.__append__(((":".code : GoRune)));
				};
				_buf = _buf.__append__(_hexDigit[(_b >> ((4 : GoUnTypedInt)))]);
				_buf = _buf.__append__(_hexDigit[_b & ((15 : GoUInt8))]);
			};
		};
		return ((_buf : GoString));
	}

	public var __t__:Slice<GoUInt8>;

	public function new(?t:Slice<GoUInt8>) {
		__t__ = t == null ? new Slice<GoUInt8>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new HardwareAddr(__t__);

	public function __append__(args:haxe.Rest<GoUInt8>)
		return new HardwareAddr(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new HardwareAddr(this.__t__.__slice__(low, high));
}

@:structInit class T_conn {
	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _f:Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil(),
			_err:Error = ((null : stdgo.Error));
		{
			var __tmp__ = _c.value._fd.value._dup();
			_f = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "file",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _f, _1: _err};
	}

	public function setWriteBuffer(_bytes:GoInt):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setWriteBuffer(_c.value._fd, _bytes);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._fd.value._net,
					source: ((null : Addr)),
					addr: _c.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setReadBuffer(_bytes:GoInt):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setReadBuffer(_c.value._fd, _bytes);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._fd.value._net,
					source: ((null : Addr)),
					addr: _c.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._fd.value.setWriteDeadline(_t.__copy__());
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._fd.value._net,
					source: ((null : Addr)),
					addr: _c.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setReadDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._fd.value.setReadDeadline(_t.__copy__());
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._fd.value._net,
					source: ((null : Addr)),
					addr: _c.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._fd.value.setDeadline(_t.__copy__());
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._fd.value._net,
					source: ((null : Addr)),
					addr: _c.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function remoteAddr():Addr {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return ((null : Addr));
		};
		return _c.value._fd.value._raddr;
	}

	public function localAddr():Addr {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return ((null : Addr));
		};
		return _c.value._fd.value._laddr;
	}

	public function close():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		var _err:stdgo.Error = _c.value._fd.value.close();
		if (_err != null) {
			_err = Go.pointer((({
				op: "close",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return _err;
	}

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._fd.value.write(_b),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._fd.value.read(_b),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function _ok():Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c != null && !_c.isNil() && _c.value._fd != null && !_c.value._fd.isNil();
	}

	public var _fd:Pointer<T_netFD> = new Pointer<T_netFD>().nil();

	public function new(?_fd:Pointer<T_netFD>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fd) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_conn(_fd);
	}

	public function __set__(__tmp__) {
		this._fd = __tmp__._fd;
		return this;
	}
}

@:structInit class OpError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value.op == (("accept" : GoString)) && _isConnError(_e.value.err)) {
			return true;
		};
		{
			var __tmp__ = try {
				{value: ((_e.value.err.__underlying__().value : stdgo.os.Os.SyscallError)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.os.Os.SyscallError>().nil(), ok: false};
			}, _ne = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				var __tmp__ = try {
					{value: ((_ne.value.err.__underlying__().value : T_temporary)), ok: true};
				} catch (_) {
					{value: ((null : T_temporary)), ok: false};
				}, _t = __tmp__.value, _ok = __tmp__.ok;
				return _ok && _t.temporary();
			};
		};
		var __tmp__ = try {
			{value: ((_e.value.err.__underlying__().value : T_temporary)), ok: true};
		} catch (_) {
			{value: ((null : T_temporary)), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.temporary();
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = try {
				{value: ((_e.value.err.__underlying__().value : stdgo.os.Os.SyscallError)), ok: true};
			} catch (_) {
				{value: new Pointer<stdgo.os.Os.SyscallError>().nil(), ok: false};
			}, _ne = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				var __tmp__ = try {
					{value: ((_ne.value.err.__underlying__().value : T_timeout)), ok: true};
				} catch (_) {
					{value: ((null : T_timeout)), ok: false};
				}, _t = __tmp__.value, _ok = __tmp__.ok;
				return _ok && _t.timeout();
			};
		};
		var __tmp__ = try {
			{value: ((_e.value.err.__underlying__().value : T_timeout)), ok: true};
		} catch (_) {
			{value: ((null : T_timeout)), ok: false};
		}, _t = __tmp__.value, _ok = __tmp__.ok;
		return _ok && _t.timeout();
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e == null || _e.isNil()) {
			return "<nil>";
		};
		var _s:GoString = _e.value.op;
		if (_e.value.net != (("" : GoString))) {
			_s = _s + (((" " : GoString)) + _e.value.net);
		};
		if (_e.value.source != null) {
			_s = _s + (((" " : GoString)) + _e.value.source.toString());
		};
		if (_e.value.addr != null) {
			if (_e.value.source != null) {
				_s = _s + ("->");
			} else {
				_s = _s + (" ");
			};
			_s = _s + (_e.value.addr.toString());
		};
		_s = _s + (((": " : GoString)) + _e.value.err.error());
		return _s;
	}

	public function unwrap():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.err;
	}

	public var op:GoString = (("" : GoString));
	public var net:GoString = (("" : GoString));
	public var source:Addr = ((null : Addr));
	public var addr:Addr = ((null : Addr));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?op:GoString, ?net:GoString, ?source:Addr, ?addr:Addr, ?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(op)
			+ " "
			+ Go.string(net)
			+ " "
			+ Go.string(source)
			+ " "
			+ Go.string(addr)
			+ " "
			+ Go.string(err)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new OpError(op, net, source, addr, err);
	}

	public function __set__(__tmp__) {
		this.op = __tmp__.op;
		this.net = __tmp__.net;
		this.source = __tmp__.source;
		this.addr = __tmp__.addr;
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class ParseError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("invalid " : GoString)) + _e.value.type + ((": " : GoString)) + _e.value.text;
	}

	public var type:GoString = (("" : GoString));
	public var text:GoString = (("" : GoString));

	public function new(?type:GoString, ?text:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(type) + " " + Go.string(text) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ParseError(type, text);
	}

	public function __set__(__tmp__) {
		this.type = __tmp__.type;
		this.text = __tmp__.text;
		return this;
	}
}

@:structInit class AddrError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e == null || _e.isNil()) {
			return "<nil>";
		};
		var _s:GoString = _e.value.err;
		if (_e.value.addr != (("" : GoString))) {
			_s = (("address " : GoString)) + _e.value.addr + ((": " : GoString)) + _s;
		};
		return _s;
	}

	public var err:GoString = (("" : GoString));
	public var addr:GoString = (("" : GoString));

	public function new(?err:GoString, ?addr:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(err) + " " + Go.string(addr) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new AddrError(err, addr);
	}

	public function __set__(__tmp__) {
		this.err = __tmp__.err;
		this.addr = __tmp__.addr;
		return this;
	}
}

@:named class UnknownNetworkError {
	public function temporary():Bool {
		var _e = this.__copy__();
		return false;
	}

	public function timeout():Bool {
		var _e = this.__copy__();
		return false;
	}

	public function error():GoString {
		var _e = this.__copy__();
		return (("unknown network " : GoString)) + _e.__t__;
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
		return new UnknownNetworkError(__t__);
}

@:named class InvalidAddrError {
	public function temporary():Bool {
		var _e = this.__copy__();
		return false;
	}

	public function timeout():Bool {
		var _e = this.__copy__();
		return false;
	}

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
		return new InvalidAddrError(__t__);
}

@:structInit class T_timeoutError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return true;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "i/o timeout";
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_timeoutError();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class DNSConfigError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return false;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("error reading DNS config: " : GoString)) + _e.value.err.error();
	}

	public function unwrap():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.err;
	}

	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new DNSConfigError(err);
	}

	public function __set__(__tmp__) {
		this.err = __tmp__.err;
		return this;
	}
}

@:structInit class DNSError {
	public function temporary():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.isTimeout || _e.value.isTemporary;
	}

	public function timeout():Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.isTimeout;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e == null || _e.isNil()) {
			return "<nil>";
		};
		var _s:GoString = (("lookup " : GoString)) + _e.value.name;
		if (_e.value.server != (("" : GoString))) {
			_s = _s + (((" on " : GoString)) + _e.value.server);
		};
		_s = _s + (((": " : GoString)) + _e.value.err);
		return _s;
	}

	public var err:GoString = (("" : GoString));
	public var name:GoString = (("" : GoString));
	public var server:GoString = (("" : GoString));
	public var isTimeout:Bool = false;
	public var isTemporary:Bool = false;
	public var isNotFound:Bool = false;

	public function new(?err:GoString, ?name:GoString, ?server:GoString, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(err) + " " + Go.string(name) + " " + Go.string(server) + " " + Go.string(isTimeout) + " " + Go.string(isTemporary) + " "
			+ Go.string(isNotFound) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new DNSError(err, name, server, isTimeout, isTemporary, isNotFound);
	}

	public function __set__(__tmp__) {
		this.err = __tmp__.err;
		this.name = __tmp__.name;
		this.server = __tmp__.server;
		this.isTimeout = __tmp__.isTimeout;
		this.isTemporary = __tmp__.isTemporary;
		this.isNotFound = __tmp__.isNotFound;
		return this;
	}
}

@:structInit class T_writerOnly {
	@:embedded
	public var writer:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));

	public function new(?writer:stdgo.io.Io.Writer)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(writer) + "}";
	}

	public function write(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return writer.write(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_writerOnly(writer);
	}

	public function __set__(__tmp__) {
		this.writer = __tmp__.writer;
		return this;
	}
}

@:named class Buffers {
	public function _consume(_n:GoInt64):Void {
		var _v = new Pointer(() -> new Buffers(this.__t__), __tmp__ -> new Buffers(this.__t__ = __tmp__.__t__));
		while (_v.value.__t__.length > ((0 : GoInt))) {
			var _ln0:GoInt64 = (((_v.value).__t__[((0 : GoInt))].length : GoInt64));
			if (_ln0 > _n) {
				(_v.value).__t__[((0 : GoInt))] = (_v.value).__t__[((0 : GoInt))].__slice__(_n);
				return;
			};
			_n = _n - (_ln0);
				(_v.value).__t__[((0 : GoInt))] = new Slice<GoUInt8>().nil();
			_v.value = (_v.value).__slice__(((1 : GoInt))).__copy__();
		};
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _v = new Pointer(() -> new Buffers(this.__t__), __tmp__ -> new Buffers(this.__t__ = __tmp__.__t__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		while (_p.length > ((0 : GoInt)) && _v.value.__t__.length > ((0 : GoInt))) {
			var _n0:GoInt = Go.copy(_p, (_v.value).__t__[((0 : GoInt))]);
			_v.value._consume(((_n0 : GoInt64)));
			_p = _p.__slice__(_n0);
			_n = _n + (_n0);
		};
		if (_v.value.__t__.length == ((0 : GoInt))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _v = new Pointer(() -> new Buffers(this.__t__), __tmp__ -> new Buffers(this.__t__ = __tmp__.__t__));
		var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
		{
			var __tmp__ = try {
				{value: ((_w.__underlying__().value : T_buffersWriter)), ok: true};
			} catch (_) {
				{value: ((null : T_buffersWriter)), ok: false};
			}, _wv = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				return _wv._writeBuffers(_v);
			};
		};
		for (_b in _v.value.__t__) {
			var __tmp__ = _w.write(_b),
				_nb:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			_n = _n + (((_nb : GoInt64)));
			if (_err != null) {
				_v.value._consume(_n);
				return {_0: _n, _1: _err};
			};
		};
		_v.value._consume(_n);
		return {_0: _n, _1: ((null : stdgo.Error))};
	}

	public var __t__:Slice<Slice<GoUInt8>>;

	public function new(?t:Slice<Slice<GoUInt8>>) {
		__t__ = t == null ? new Slice<Slice<GoUInt8>>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Buffers(__t__);

	public function __append__(args:haxe.Rest<Slice<GoUInt8>>)
		return new Buffers(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new Buffers(this.__t__.__slice__(low, high));
}

@:structInit class T_netFD {
	public function _dup():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _f:Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil(),
			_err:Error = ((null : stdgo.Error));
		return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: stdgo.syscall.Syscall.enosys};
	}

	public function _writeMsg(_p:Slice<GoByte>, _oob:Slice<GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: stdgo.syscall.Syscall.enosys};
	}

	public function _writeTo(_p:Slice<GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{var _0:GoInt; var _1:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.enosys};
	}

	public function _readMsg(_p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:stdgo.syscall.Syscall.Sockaddr;
		var _4:Error;
	} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_retflags:GoInt = ((0 : GoInt)),
			_sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr)),
			_err:Error = ((null : stdgo.Error));
		return {
			_0: ((0 : GoInt)),
			_1: ((0 : GoInt)),
			_2: ((0 : GoInt)),
			_3: ((null : stdgo.syscall.Syscall.Sockaddr)),
			_4: stdgo.syscall.Syscall.enosys
		};
	}

	public function _readFrom(_p:Slice<GoByte>):{var _0:GoInt; var _1:stdgo.syscall.Syscall.Sockaddr; var _2:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr)),
			_err:Error = ((null : stdgo.Error));
		return {_0: ((0 : GoInt)), _1: ((null : stdgo.syscall.Syscall.Sockaddr)), _2: stdgo.syscall.Syscall.enosys};
	}

	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._w.value.setWriteDeadline(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function setReadDeadline(_t:stdgo.time.Time.Time):Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._r.value.setReadDeadline(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._r.value.setReadDeadline(_t.__copy__());
		_fd.value._w.value.setWriteDeadline(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function _accept():{var _0:Pointer<T_netFD>; var _1:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _fd.value._incoming.smartGet(),
			_c = __tmp__.value,
			_ok = __tmp__.ok;
		if (!_ok) {
			return {_0: new Pointer<T_netFD>().nil(), _1: stdgo.syscall.Syscall.einval};
		};
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function _closeWrite():Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._w.value.close();
		return ((null : stdgo.Error));
	}

	public function _closeRead():Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._r.value.close();
		return ((null : stdgo.Error));
	}

	public function close():Error {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_fd.value._closedMu.lock();
		if (_fd.value._closed) {
			_fd.value._closedMu.unlock();
			return ((null : stdgo.Error));
		};
		_fd.value._closed = true;
		_fd.value._closedMu.unlock();
		if (_fd.value._listener) {
			_listenersMu.lock();
			_listeners.remove(_fd.value._laddr.toString());
			_fd.value._incoming.close();
			_fd.value._listener = false;
			_listenersMu.unlock();
			return ((null : stdgo.Error));
		};
		_fd.value._r.value.close();
		_fd.value._w.value.close();
		return ((null : stdgo.Error));
	}

	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _fd.value._w.value.write(_p);
	}

	public function read(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _fd = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		return _fd.value._r.value.read(_p);
	}

	public var _r:Pointer<T_bufferedPipe> = new Pointer<T_bufferedPipe>().nil();
	public var _w:Pointer<T_bufferedPipe> = new Pointer<T_bufferedPipe>().nil();
	public var _incoming:Chan<Pointer<T_netFD>> = new Chan<Pointer<T_netFD>>(0, () -> new Pointer<T_netFD>().nil(), true);
	public var _closedMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _closed:Bool = false;
	public var _listener:Bool = false;
	public var _family:GoInt = ((0 : GoInt));
	public var _sotype:GoInt = ((0 : GoInt));
	public var _net:GoString = (("" : GoString));
	public var _laddr:Addr = ((null : Addr));
	public var _raddr:Addr = ((null : Addr));
	public var _pfd:internal.poll.Poll.FD = new internal.poll.Poll.FD();
	public var _isConnected:Bool = false;

	public function new(?_r:Pointer<T_bufferedPipe>, ?_w:Pointer<T_bufferedPipe>, ?_incoming:Chan<Pointer<T_netFD>>, ?_closedMu:stdgo.sync.Sync.Mutex,
			?_closed:Bool, ?_listener:Bool, ?_family:GoInt, ?_sotype:GoInt, ?_net:GoString, ?_laddr:Addr, ?_raddr:Addr, ?_pfd:internal.poll.Poll.FD,
			?_isConnected:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_r) + " " + Go.string(_w) + " " + Go.string(_incoming) + " " + Go.string(_closedMu) + " " + Go.string(_closed) + " "
			+ Go.string(_listener) + " " + Go.string(_family) + " " + Go.string(_sotype) + " " + Go.string(_net) + " " + Go.string(_laddr) + " "
			+ Go.string(_raddr) + " " + Go.string(_pfd) + " " + Go.string(_isConnected) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_netFD(_r, _w, _incoming, _closedMu, _closed, _listener, _family, _sotype, _net, _laddr, _raddr, _pfd, _isConnected);
	}

	public function __set__(__tmp__) {
		this._r = __tmp__._r;
		this._w = __tmp__._w;
		this._incoming = __tmp__._incoming;
		this._closedMu = __tmp__._closedMu;
		this._closed = __tmp__._closed;
		this._listener = __tmp__._listener;
		this._family = __tmp__._family;
		this._sotype = __tmp__._sotype;
		this._net = __tmp__._net;
		this._laddr = __tmp__._laddr;
		this._raddr = __tmp__._raddr;
		this._pfd = __tmp__._pfd;
		this._isConnected = __tmp__._isConnected;
		return this;
	}
}

@:structInit class T_bufferedPipe {
	public function setWriteDeadline(_t:stdgo.time.Time.Time):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_p.value._mu.lock();
			deferstack.unshift(() -> _p.value._mu.unlock());
			_p.value._wDeadline = _t.__copy__();
			_p.value._wCond.broadcast();
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

	public function setReadDeadline(_t:stdgo.time.Time.Time):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_p.value._mu.lock();
			deferstack.unshift(() -> _p.value._mu.unlock());
			_p.value._rDeadline = _t.__copy__();
			_p.value._rCond.broadcast();
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

	public function close():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_p.value._mu.lock();
			deferstack.unshift(() -> _p.value._mu.unlock());
			_p.value._closed = true;
			_p.value._rCond.broadcast();
			_p.value._wCond.broadcast();
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

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_p.value._mu.lock();
		deferstack.unshift(() -> _p.value._mu.unlock());
		try {
			while (true) {
				if (_p.value._closed) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.enotconn};
					};
				};
				if (!_p.value._wDeadline.isZero()) {
					var _d:stdgo.time.Time.Duration = stdgo.time.Time.until(_p.value._wDeadline.__copy__());
					if (_d.__t__ <= ((0 : GoInt64))) {
						{
							for (defer in deferstack) {
								defer();
							};
							return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.eagain};
						};
					};
					stdgo.time.Time.afterFunc(_d, _p.value._wCond.broadcast);
				};
				if (_p.value._buf.length <= _p.value._softLimit) {
					break;
				};
				_p.value._wCond.wait();
			};
			_p.value._buf = _p.value._buf.__append__(..._b.toArray());
			_p.value._rCond.broadcast();
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _b.length, _1: ((null : stdgo.Error))};
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
				return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_p.value._mu.lock();
		deferstack.unshift(() -> _p.value._mu.unlock());
		try {
			while (true) {
				if (_p.value._closed && _p.value._buf.length == ((0 : GoInt))) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
					};
				};
				if (!_p.value._rDeadline.isZero()) {
					var _d:stdgo.time.Time.Duration = stdgo.time.Time.until(_p.value._rDeadline.__copy__());
					if (_d.__t__ <= ((0 : GoInt64))) {
						{
							for (defer in deferstack) {
								defer();
							};
							return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.eagain};
						};
					};
					stdgo.time.Time.afterFunc(_d, _p.value._rCond.broadcast);
				};
				if (_p.value._buf.length > ((0 : GoInt))) {
					break;
				};
				_p.value._rCond.wait();
			};
			var _n:GoInt = Go.copy(_b, _p.value._buf);
			_p.value._buf = _p.value._buf.__slice__(_n);
			_p.value._wCond.broadcast();
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _n, _1: ((null : stdgo.Error))};
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
				return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};
			};
		};
	}

	public var _softLimit:GoInt = ((0 : GoInt));
	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _buf:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _closed:Bool = false;
	public var _rCond:stdgo.sync.Sync.Cond = new stdgo.sync.Sync.Cond();
	public var _wCond:stdgo.sync.Sync.Cond = new stdgo.sync.Sync.Cond();
	public var _rDeadline:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var _wDeadline:stdgo.time.Time.Time = new stdgo.time.Time.Time();

	public function new(?_softLimit:GoInt, ?_mu:stdgo.sync.Sync.Mutex, ?_buf:Slice<GoUInt8>, ?_closed:Bool, ?_rCond:stdgo.sync.Sync.Cond,
			?_wCond:stdgo.sync.Sync.Cond, ?_rDeadline:stdgo.time.Time.Time, ?_wDeadline:stdgo.time.Time.Time)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_softLimit) + " " + Go.string(_mu) + " " + Go.string(_buf) + " " + Go.string(_closed) + " " + Go.string(_rCond) + " "
			+ Go.string(_wCond) + " " + Go.string(_rDeadline) + " " + Go.string(_wDeadline) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bufferedPipe(_softLimit, _mu, _buf, _closed, _rCond, _wCond, _rDeadline, _wDeadline);
	}

	public function __set__(__tmp__) {
		this._softLimit = __tmp__._softLimit;
		this._mu = __tmp__._mu;
		this._buf = __tmp__._buf;
		this._closed = __tmp__._closed;
		this._rCond = __tmp__._rCond;
		this._wCond = __tmp__._wCond;
		this._rDeadline = __tmp__._rDeadline;
		this._wDeadline = __tmp__._wDeadline;
		return this;
	}
}

@:structInit class T_file {
	public function _readLine():{var _0:GoString; var _1:Bool;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _s:GoString = (("" : GoString)), _ok:Bool = false;
		{
			{
				var __tmp__ = _f.value._getLineFromData();
				_s = __tmp__._0;
				_ok = __tmp__._1;
			};
			if (_ok) {
				return {_0: _s, _1: _ok};
			};
		};
		if (_f.value._data.length < _f.value._data.cap()) {
			var _ln:GoInt = _f.value._data.length;
			var __tmp__ = stdgo.io.Io.readFull(_f.value._file.value, _f.value._data.__slice__(_ln, _f.value._data.cap())),
				_n:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_n >= ((0 : GoInt))) {
				_f.value._data = _f.value._data.__slice__(((0 : GoInt)), _ln + _n);
			};
			if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)
				|| Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
				_f.value._atEOF = true;
			};
		};
		{
			var __tmp__ = _f.value._getLineFromData();
			_s = __tmp__._0;
			_ok = __tmp__._1;
		};
		return {_0: _s, _1: _ok};
	}

	public function _getLineFromData():{var _0:GoString; var _1:Bool;} {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _s:GoString = (("" : GoString)), _ok:Bool = false;
		var _data:Slice<GoUInt8> = _f.value._data;
		var _i:GoInt = ((0 : GoInt));
		{
			_i = ((0 : GoInt));
			Go.cfor(_i < _data.length, _i++, {
				if (_data[_i] == (("\n".code : GoRune))) {
					_s = ((_data.__slice__(((0 : GoInt)), _i) : GoString));
					_ok = true;
					_i++;
					var _n:GoInt = _data.length - _i;
					Go.copy(_data.__slice__(((0 : GoInt))), _data.__slice__(_i));
					_f.value._data = _data.__slice__(((0 : GoInt)), _n);
					return {_0: _s, _1: _ok};
				};
			});
		};
		if (_f.value._atEOF && _f.value._data.length > ((0 : GoInt))) {
			_s = ((_data : GoString));
			_f.value._data = _f.value._data.__slice__(((0 : GoInt)), ((0 : GoInt)));
			_ok = true;
		};
		return {_0: _s, _1: _ok};
	}

	public function _close():Void {
		var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_f.value._file.value.close();
	}

	public var _file:Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil();
	public var _data:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _atEOF:Bool = false;

	public function new(?_file:Pointer<stdgo.os.Os.File>, ?_data:Slice<GoUInt8>, ?_atEOF:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_file) + " " + Go.string(_data) + " " + Go.string(_atEOF) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_file(_file, _data, _atEOF);
	}

	public function __set__(__tmp__) {
		this._file = __tmp__._file;
		this._data = __tmp__._data;
		this._atEOF = __tmp__._atEOF;
		return this;
	}
}

@:structInit class T_pipeDeadline {
	public function _wait():Chan<T__struct_44> {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_d.value._mu.lock();
		try {
			deferstack.unshift(() -> _d.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _d.value._cancel;
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
				return new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true);
			};
		};
	}

	public function _set(_t:stdgo.time.Time.Time):Void {
		var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_d.value._mu.lock();
			deferstack.unshift(() -> _d.value._mu.unlock());
			if (_d.value._timer != null && !_d.value._timer.isNil() && !_d.value._timer.value.stop()) {
				_d.value._cancel.get();
			};
			_d.value._timer = new Pointer<stdgo.time.Time.Timer>().nil();
			var _closed:Bool = _isClosedChan(_d.value._cancel);
			if (_t.isZero()) {
				if (_closed) {
					_d.value._cancel = new Chan<T_timeoutError>(0, () -> new T_timeoutError());
				};
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			{
				var _dur:stdgo.time.Time.Duration = stdgo.time.Time.until(_t.__copy__());
				if (_dur.__t__ > ((0 : GoInt64))) {
					if (_closed) {
						_d.value._cancel = new Chan<T_timeoutError>(0, () -> new T_timeoutError());
					};
					_d.value._timer = stdgo.time.Time.afterFunc(_dur, function():Void {
						_d.value._cancel.close();
					});
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
			};
			if (!_closed) {
				_d.value._cancel.close();
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

	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _timer:Pointer<stdgo.time.Time.Timer> = new Pointer<stdgo.time.Time.Timer>().nil();
	public var _cancel:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true);

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_timer:Pointer<stdgo.time.Time.Timer>, ?_cancel:Chan<T_timeoutError>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_mu) + " " + Go.string(_timer) + " " + Go.string(_cancel) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pipeDeadline(_mu, _timer, _cancel);
	}

	public function __set__(__tmp__) {
		this._mu = __tmp__._mu;
		this._timer = __tmp__._timer;
		this._cancel = __tmp__._cancel;
		return this;
	}
}

@:structInit class T_pipeAddr {
	public function toString():GoString {
		return "pipe";
	}

	public function network():GoString {
		return "pipe";
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pipeAddr();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_pipe {
	public function close():Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p.value._once.do_(function():Void {
			_p.value._localDone.close();
		});
		return ((null : stdgo.Error));
	}

	public function setWriteDeadline(_t:stdgo.time.Time.Time):Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_isClosedChan(_p.value._localDone) || _isClosedChan(_p.value._remoteDone)) {
			return stdgo.io.Io.errClosedPipe;
		};
		_p.value._writeDeadline._set(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function setReadDeadline(_t:stdgo.time.Time.Time):Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_isClosedChan(_p.value._localDone) || _isClosedChan(_p.value._remoteDone)) {
			return stdgo.io.Io.errClosedPipe;
		};
		_p.value._readDeadline._set(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_isClosedChan(_p.value._localDone) || _isClosedChan(_p.value._remoteDone)) {
			return stdgo.io.Io.errClosedPipe;
		};
		_p.value._readDeadline._set(_t.__copy__());
		_p.value._writeDeadline._set(_t.__copy__());
		return ((null : stdgo.Error));
	}

	public function _write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_isClosedChan(_p.value._localDone)) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.errClosedPipe};
		} else if (_isClosedChan(_p.value._remoteDone)) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.errClosedPipe};
		} else if (_isClosedChan(_p.value._writeDeadline._wait())) {
			return {_0: ((0 : GoInt)), _1: stdgo.os.Os.errDeadlineExceeded};
		};
		try {
			_p.value._wrMu.lock();
			deferstack.unshift(() -> _p.value._wrMu.unlock());
			{
				var _once:Bool = true;
				Go.cfor(_once || _b.length > ((0 : GoInt)), _once = false, {
					{
						{
							_p.value._wrTx.send(_b);
							var _nw:GoInt = _p.value._wrRx.get();
							_b = _b.__slice__(_nw);
							_n = _n + (_nw);
						};
						{
							_p.value._localDone.get();
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: _n, _1: stdgo.io.Io.errClosedPipe};
							};
						};
						{
							_p.value._remoteDone.get();
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: _n, _1: stdgo.io.Io.errClosedPipe};
							};
						};
						{
							_p.value._writeDeadline._wait().get();
							{
								for (defer in deferstack) {
									defer();
								};
								return {_0: _n, _1: stdgo.os.Os.errDeadlineExceeded};
							};
						};
					};
				});
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: _n, _1: ((null : stdgo.Error))};
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

	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value._write(_b),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.errClosedPipe)) {
			_err = Go.pointer((({
				op: "write",
				net: "pipe",
				err: _err,
				source: ((null : Addr)),
				addr: ((null : Addr))
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function _read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		if (_isClosedChan(_p.value._localDone)) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.errClosedPipe};
		} else if (_isClosedChan(_p.value._remoteDone)) {
			return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
		} else if (_isClosedChan(_p.value._readDeadline._wait())) {
			return {_0: ((0 : GoInt)), _1: stdgo.os.Os.errDeadlineExceeded};
		};
		{
			{
				var _bw:Slice<GoUInt8> = _p.value._rdRx.get();
				var _nr:GoInt = Go.copy(_b, _bw);
				_p.value._rdTx.send(_nr);
				return {_0: _nr, _1: ((null : stdgo.Error))};
			};
			{
				_p.value._localDone.get();
				return {_0: ((0 : GoInt)), _1: stdgo.io.Io.errClosedPipe};
			};
			{
				_p.value._remoteDone.get();
				return {_0: ((0 : GoInt)), _1: stdgo.io.Io.eof};
			};
			{
				_p.value._readDeadline._wait().get();
				return {_0: ((0 : GoInt)), _1: stdgo.os.Os.errDeadlineExceeded};
			};
		};
	}

	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _p.value._read(_b),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null
			&& Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)
			&& Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.errClosedPipe)) {
			_err = Go.pointer((({
				op: "read",
				net: "pipe",
				err: _err,
				source: ((null : Addr)),
				addr: ((null : Addr))
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function remoteAddr():Addr {
		return new T_pipeAddr().__copy__();
	}

	public function localAddr():Addr {
		return new T_pipeAddr().__copy__();
	}

	public var _wrMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _rdRx:Chan<Slice<GoUInt8>> = new Chan<Slice<GoUInt8>>(0, () -> new Slice<GoUInt8>().nil(), true);
	public var _rdTx:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)), true);
	public var _wrTx:Chan<Slice<GoUInt8>> = new Chan<Slice<GoUInt8>>(0, () -> new Slice<GoUInt8>().nil(), true);
	public var _wrRx:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)), true);
	public var _once:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
	public var _localDone:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true);
	public var _remoteDone:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true);
	public var _readDeadline:T_pipeDeadline = new T_pipeDeadline();
	public var _writeDeadline:T_pipeDeadline = new T_pipeDeadline();

	public function new(?_wrMu:stdgo.sync.Sync.Mutex, ?_rdRx:Chan<Slice<GoUInt8>>, ?_rdTx:Chan<GoInt>, ?_wrTx:Chan<Slice<GoUInt8>>, ?_wrRx:Chan<GoInt>,
			?_once:stdgo.sync.Sync.Once, ?_localDone:Chan<T_timeoutError>, ?_remoteDone:Chan<T_timeoutError>, ?_readDeadline:T_pipeDeadline,
			?_writeDeadline:T_pipeDeadline)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_wrMu) + " " + Go.string(_rdRx) + " " + Go.string(_rdTx) + " " + Go.string(_wrTx) + " " + Go.string(_wrRx) + " "
			+ Go.string(_once) + " " + Go.string(_localDone) + " " + Go.string(_remoteDone) + " " + Go.string(_readDeadline) + " "
			+ Go.string(_writeDeadline) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pipe(_wrMu, _rdRx, _rdTx, _wrTx, _wrRx, _once, _localDone, _remoteDone, _readDeadline, _writeDeadline);
	}

	public function __set__(__tmp__) {
		this._wrMu = __tmp__._wrMu;
		this._rdRx = __tmp__._rdRx;
		this._rdTx = __tmp__._rdTx;
		this._wrTx = __tmp__._wrTx;
		this._wrRx = __tmp__._wrRx;
		this._once = __tmp__._once;
		this._localDone = __tmp__._localDone;
		this._remoteDone = __tmp__._remoteDone;
		this._readDeadline = __tmp__._readDeadline;
		this._writeDeadline = __tmp__._writeDeadline;
		return this;
	}
}

@:structInit class T_rawConn {
	public function write(_f:GoUIntptr->Bool):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		var _err:stdgo.Error = _c.value._fd.value._pfd.rawWrite(_f);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_c.value._fd));
		if (_err != null) {
			_err = Go.pointer((({
				op: "raw-write",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return _err;
	}

	public function read(_f:GoUIntptr->Bool):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		var _err:stdgo.Error = _c.value._fd.value._pfd.rawRead(_f);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_c.value._fd));
		if (_err != null) {
			_err = Go.pointer((({
				op: "raw-read",
				net: _c.value._fd.value._net,
				source: _c.value._fd.value._laddr,
				addr: _c.value._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return _err;
	}

	public function control(_f:GoUIntptr->Void):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		var _err:stdgo.Error = _c.value._fd.value._pfd.rawControl(_f);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_c.value._fd));
		if (_err != null) {
			_err = Go.pointer((({
				op: "raw-control",
				net: _c.value._fd.value._net,
				source: ((null : Addr)),
				addr: _c.value._fd.value._laddr,
				err: _err
			} : OpError))).value;
		};
		return _err;
	}

	public function _ok():Bool {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _c != null && !_c.isNil() && _c.value._fd != null && !_c.value._fd.isNil();
	}

	public var _fd:Pointer<T_netFD> = new Pointer<T_netFD>().nil();

	public function new(?_fd:Pointer<T_netFD>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fd) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rawConn(_fd);
	}

	public function __set__(__tmp__) {
		this._fd = __tmp__._fd;
		return this;
	}
}

@:structInit class T_rawListener {
	public function write(_0:GoUIntptr->Bool):Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.syscall.Syscall.einval;
	}

	public function read(_0:GoUIntptr->Bool):Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.syscall.Syscall.einval;
	}

	@:embedded
	public var _rawConn:T_rawConn = new T_rawConn();

	public function new(?_rawConn:T_rawConn)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_rawConn) + "}";
	}

	public function control(_f:GoUIntptr->Void):stdgo.Error
		return _rawConn.control(_0);

	public function _ok():Bool
		return _rawConn._ok();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rawListener(_rawConn);
	}

	public function __set__(__tmp__) {
		this._rawConn = __tmp__._rawConn;
		return this;
	}
}

@:structInit class TCPAddr {
	public function _toLocal(_net:GoString):T_sockaddr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Go.pointer(new TCPAddr(_loopbackIP(_net).__copy__(), _a.value.port, _a.value.zone)).value;
	}

	public function _sockaddr(_family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: ((null : stdgo.Error))};
		};
		return _ipToSockaddr(_family, _a.value.ip.__copy__(), _a.value.port, _a.value.zone);
	}

	public function _family():GoInt {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__.length <= ipv4len) {
			return stdgo.syscall.Syscall.af_INET;
		};
		if (_a.value.ip.to4().__t__ != null && !_a.value.ip.to4().__t__.isNil()) {
			return stdgo.syscall.Syscall.af_INET;
		};
		return stdgo.syscall.Syscall.af_INET6;
	}

	public function _opAddr():Addr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return ((null : Addr));
		};
		return _a.value;
	}

	public function _isWildcard():Bool {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__ == null || _a.value.ip.__t__.isNil()) {
			return true;
		};
		return _a.value.ip.isUnspecified();
	}

	public function toString():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return "<nil>";
		};
		var _ip:GoString = _ipEmptyString(_a.value.ip.__copy__());
		if (_a.value.zone != (("" : GoString))) {
			return joinHostPort(_ip + (("%" : GoString)) + _a.value.zone, internal.itoa.Itoa.itoa(_a.value.port));
		};
		return joinHostPort(_ip, internal.itoa.Itoa.itoa(_a.value.port));
	}

	public function network():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "tcp";
	}

	public var ip:IP = new IP();
	public var port:GoInt = ((0 : GoInt));
	public var zone:GoString = (("" : GoString));

	public function new(?ip:IP, ?port:GoInt, ?zone:GoString)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TCPAddr(ip, port, zone);
	}

	public function __set__(__tmp__) {
		this.ip = __tmp__.ip;
		this.port = __tmp__.port;
		this.zone = __tmp__.zone;
		return this;
	}
}

@:structInit class TCPConn {
	public function _readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var __tmp__ = _splice(_c.value._conn._fd, _r),
				_n:GoInt64 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1,
				_handled:Bool = __tmp__._2;
			if (_handled) {
				return {_0: _n, _1: _err};
			};
		};
		{
			var __tmp__ = _sendFile(_c.value._conn._fd, _r),
				_n:GoInt64 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1,
				_handled:Bool = __tmp__._2;
			if (_handled) {
				return {_0: _n, _1: _err};
			};
		};
		return _genericReadFrom(_c.value, _r);
	}

	public function setNoDelay(_noDelay:Bool):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setNoDelay(_c.value._conn._fd, _noDelay);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setKeepAlivePeriod(_d:stdgo.time.Time.Duration):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setKeepAlivePeriod(_c.value._conn._fd, _d);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setKeepAlive(_keepalive:Bool):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setKeepAlive(_c.value._conn._fd, _keepalive);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function setLinger(_sec:GoInt):Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _setLinger(_c.value._conn._fd, _sec);
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function closeWrite():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._conn._fd.value._closeWrite();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function closeRead():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._conn._fd.value._closeRead();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function readFrom(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt64)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_r),
			_n:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
			_err = Go.pointer((({
				op: "readfrom",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawConn(_c.value._conn._fd);
	}

	@:embedded
	public var _conn:T_conn = new T_conn();

	public function new(?_conn:T_conn)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_conn) + "}";
	}

	public function close():stdgo.Error
		return _conn.close();

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:stdgo.Error;}
		return _conn.file();

	public function localAddr():Addr
		return _conn.localAddr();

	public function read(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.read(_0);

	public function remoteAddr():Addr
		return _conn.remoteAddr();

	public function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setDeadline(_0);

	public function setReadBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setReadBuffer(_0);

	public function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setReadDeadline(_0);

	public function setWriteBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setWriteBuffer(_0);

	public function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setWriteDeadline(_0);

	public function write(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.write(_0);

	public function _ok():Bool
		return _conn._ok();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TCPConn(_conn);
	}

	public function __set__(__tmp__) {
		this._conn = __tmp__._conn;
		return this;
	}
}

@:structInit class TCPListener {
	public function _file():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _ln.value._fd.value._dup(),
			_f:Pointer<stdgo.os.Os.File> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: _err};
		};
		return {_0: _f, _1: ((null : stdgo.Error))};
	}

	public function _close():Error {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _ln.value._fd.value.close();
	}

	public function _accept():{var _0:Pointer<TCPConn>; var _1:Error;} {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _ln.value._fd.value._accept(),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<TCPConn>().nil(), _1: _err};
		};
		var _tc:Pointer<TCPConn> = _newTCPConn(_fd);
		if (_ln.value._lc.keepAlive.__t__ >= ((0 : GoInt64))) {
			_setKeepAlive(_fd, true);
			var _ka:stdgo.time.Time.Duration = _ln.value._lc.keepAlive;
			if (_ln.value._lc.keepAlive.__t__ == ((0 : GoInt64))) {
				_ka = _defaultTCPKeepAlive;
			};
			_setKeepAlivePeriod(_fd, _ka);
		};
		return {_0: _tc, _1: ((null : stdgo.Error))};
	}

	public function _ok():Bool {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _ln != null && !_ln.isNil() && _ln.value._fd != null && !_ln.value._fd.isNil();
	}

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _f:Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (!_l.value._ok()) {
			return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: stdgo.syscall.Syscall.einval};
		};
		{
			var __tmp__ = _l.value._file();
			_f = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: Go.pointer((({
				op: "file",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value};
		};
		return {_0: _f, _1: _err};
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _l.value._fd.value._pfd.setDeadline(_t.__copy__());
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _l.value._fd.value._net,
					source: ((null : Addr)),
					addr: _l.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function addr():Addr {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _l.value._fd.value._laddr;
	}

	public function close():Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _l.value._close();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _l.value._fd.value._net,
					source: ((null : Addr)),
					addr: _l.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function accept():{var _0:Conn; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: ((null : Conn)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _l.value._accept(),
			_c:Pointer<TCPConn> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : Conn)), _1: Go.pointer((({
				op: "accept",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value};
		};
		return {_0: _c.value, _1: ((null : stdgo.Error))};
	}

	public function acceptTCP():{var _0:Pointer<TCPConn>; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: new Pointer<TCPConn>().nil(), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _l.value._accept(),
			_c:Pointer<TCPConn> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<TCPConn>().nil(), _1: Go.pointer((({
				op: "accept",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value};
		};
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawListener(_l.value._fd);
	}

	public var _fd:Pointer<T_netFD> = new Pointer<T_netFD>().nil();
	public var _lc:ListenConfig = new ListenConfig();

	public function new(?_fd:Pointer<T_netFD>, ?_lc:ListenConfig)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fd) + " " + Go.string(_lc) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TCPListener(_fd, _lc);
	}

	public function __set__(__tmp__) {
		this._fd = __tmp__._fd;
		this._lc = __tmp__._lc;
		return this;
	}
}

@:structInit class UDPAddr {
	public function _toLocal(_net:GoString):T_sockaddr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return Go.pointer(new UDPAddr(_loopbackIP(_net).__copy__(), _a.value.port, _a.value.zone)).value;
	}

	public function _sockaddr(_family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: ((null : stdgo.Error))};
		};
		return _ipToSockaddr(_family, _a.value.ip.__copy__(), _a.value.port, _a.value.zone);
	}

	public function _family():GoInt {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__.length <= ipv4len) {
			return stdgo.syscall.Syscall.af_INET;
		};
		if (_a.value.ip.to4().__t__ != null && !_a.value.ip.to4().__t__.isNil()) {
			return stdgo.syscall.Syscall.af_INET;
		};
		return stdgo.syscall.Syscall.af_INET6;
	}

	public function _opAddr():Addr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return ((null : Addr));
		};
		return _a.value;
	}

	public function _isWildcard():Bool {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil() || _a.value.ip.__t__ == null || _a.value.ip.__t__.isNil()) {
			return true;
		};
		return _a.value.ip.isUnspecified();
	}

	public function toString():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return "<nil>";
		};
		var _ip:GoString = _ipEmptyString(_a.value.ip.__copy__());
		if (_a.value.zone != (("" : GoString))) {
			return joinHostPort(_ip + (("%" : GoString)) + _a.value.zone, internal.itoa.Itoa.itoa(_a.value.port));
		};
		return joinHostPort(_ip, internal.itoa.Itoa.itoa(_a.value.port));
	}

	public function network():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return "udp";
	}

	public var ip:IP = new IP();
	public var port:GoInt = ((0 : GoInt));
	public var zone:GoString = (("" : GoString));

	public function new(?ip:IP, ?port:GoInt, ?zone:GoString)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UDPAddr(ip, port, zone);
	}

	public function __set__(__tmp__) {
		this.ip = __tmp__.ip;
		this.port = __tmp__.port;
		this.zone = __tmp__.zone;
		return this;
	}
}

@:structInit class UDPConn {
	public function _writeMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_c.value._conn._fd.value._isConnected && _addr != null && !_addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: errWriteToConnected};
		};
		if (!_c.value._conn._fd.value._isConnected && _addr == null || _addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: _errMissingAddress};
		};
		var __tmp__ = _addr.value._sockaddr(_c.value._conn._fd.value._family),
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: _err};
		};
		return _c.value._conn._fd.value._writeMsg(_b, _oob, Go.toInterface(_sa));
	}

	public function _writeTo(_b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_c.value._conn._fd.value._isConnected) {
			return {_0: ((0 : GoInt)), _1: errWriteToConnected};
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: _errMissingAddress};
		};
		var __tmp__ = _addr.value._sockaddr(_c.value._conn._fd.value._family),
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: _err};
		};
		return _c.value._conn._fd.value._writeTo(_b, Go.toInterface(_sa));
	}

	public function _readMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UDPAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<UDPAddr> = new Pointer<UDPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		var _sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr));
		{
			var __tmp__ = _c.value._conn._fd.value._readMsg(_b, _oob, ((0 : GoInt)));
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_sa = Go.toInterface(__tmp__._3);
			_err = __tmp__._4;
		};
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port, zone: ""} : UDPAddr)));
		} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr = Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port,
				zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : UDPAddr)));
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function _readFrom(_b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value._conn._fd.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr.value = (({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port, zone: ""} : UDPAddr)).__copy__();
		} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			_addr.value = (({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port,
				zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : UDPAddr)).__copy__();
		} else {
			var _sa:stdgo.syscall.Syscall.Sockaddr = _sa == null ? null : _sa.__underlying__();
			_addr = new Pointer<UDPAddr>().nil();
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function writeMsgUDP(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: stdgo.syscall.Syscall.einval};
		};
		{
			var __tmp__ = _c.value._writeMsg(_b, _oob, _addr);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _oobn, _2: _err};
	}

	public function writeTo(_b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = try {
			{value: ((_addr.__underlying__().value : UDPAddr)), ok: true};
		} catch (_) {
			{value: new Pointer<UDPAddr>().nil(), ok: false};
		}, _a = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: ((0 : GoInt)), _1: Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr,
				err: stdgo.syscall.Syscall.einval
			} : OpError))).value};
		};
		var __tmp__ = _c.value._writeTo(_b, _a),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _a.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function writeToUDP(_b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._writeTo(_b, _addr),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function readMsgUDP(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UDPAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<UDPAddr> = new Pointer<UDPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {
				_0: ((0 : GoInt)),
				_1: ((0 : GoInt)),
				_2: ((0 : GoInt)),
				_3: new Pointer<UDPAddr>().nil(),
				_4: stdgo.syscall.Syscall.einval
			};
		};
		{
			var __tmp__ = _c.value._readMsg(_b, _oob);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_addr = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function readFrom(_b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _c.value._readFromUDP(_b, Go.pointer(new UDPAddr())),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<UDPAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_addr == null || _addr.isNil()) {
			return {_0: _n, _1: ((null : Addr)), _2: _err};
		};
		return {_0: _n, _1: _addr.value, _2: _err};
	}

	public function _readFromUDP(_b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: new Pointer<UDPAddr>().nil(), _2: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_b, _addr),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<UDPAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function readFromUDP(_b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_addr:Pointer<UDPAddr> = new Pointer<UDPAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		return _c.value._readFromUDP(_b, Go.pointer(new UDPAddr()));
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawConn(_c.value._conn._fd);
	}

	@:embedded
	public var _conn:T_conn = new T_conn();

	public function new(?_conn:T_conn)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_conn) + "}";
	}

	public function close():stdgo.Error
		return _conn.close();

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:stdgo.Error;}
		return _conn.file();

	public function localAddr():Addr
		return _conn.localAddr();

	public function read(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.read(_0);

	public function remoteAddr():Addr
		return _conn.remoteAddr();

	public function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setDeadline(_0);

	public function setReadBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setReadBuffer(_0);

	public function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setReadDeadline(_0);

	public function setWriteBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setWriteBuffer(_0);

	public function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setWriteDeadline(_0);

	public function write(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.write(_0);

	public function _ok():Bool
		return _conn._ok();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UDPConn(_conn);
	}

	public function __set__(__tmp__) {
		this._conn = __tmp__._conn;
		return this;
	}
}

@:structInit class UnixAddr {
	public function _toLocal(_net:GoString):T_sockaddr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _a.value;
	}

	public function _sockaddr(_family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;} {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: ((null : stdgo.Error))};
		};
		return {_0: Go.toInterface(Go.pointer((({name: _a.value.name} : stdgo.syscall.Syscall.SockaddrUnix)))), _1: ((null : stdgo.Error))};
	}

	public function _family():GoInt {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.syscall.Syscall.af_UNIX;
	}

	public function _opAddr():Addr {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return ((null : Addr));
		};
		return _a.value;
	}

	public function _isWildcard():Bool {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _a == null || _a.isNil() || _a.value.name == (("" : GoString));
	}

	public function toString():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_a == null || _a.isNil()) {
			return "<nil>";
		};
		return _a.value.name;
	}

	public function network():GoString {
		var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _a.value.net;
	}

	public var name:GoString = (("" : GoString));
	public var net:GoString = (("" : GoString));

	public function new(?name:GoString, ?net:GoString)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UnixAddr(name, net);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.net = __tmp__.net;
		return this;
	}
}

@:structInit class UnixConn {
	public function _writeMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (_c.value._conn._fd.value._sotype == stdgo.syscall.Syscall.sock_DGRAM && _c.value._conn._fd.value._isConnected) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: errWriteToConnected};
		};
		var _sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr));
		if (_addr != null && !_addr.isNil()) {
			if (_addr.value.net != _sotypeToNet(_c.value._conn._fd.value._sotype)) {
				return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: stdgo.syscall.Syscall.eafnosupport};
			};
			_sa = Go.toInterface(Go.pointer((({name: _addr.value.name} : stdgo.syscall.Syscall.SockaddrUnix))));
		};
		return _c.value._conn._fd.value._writeMsg(_b, _oob, Go.toInterface(_sa));
	}

	public function _writeTo(_b:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_c.value._conn._fd.value._isConnected) {
			return {_0: ((0 : GoInt)), _1: errWriteToConnected};
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: ((0 : GoInt)), _1: _errMissingAddress};
		};
		if (_addr.value.net != _sotypeToNet(_c.value._conn._fd.value._sotype)) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.eafnosupport};
		};
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrUnix> = Go.pointer((({name: _addr.value.name} : stdgo.syscall.Syscall.SockaddrUnix)));
		return _c.value._conn._fd.value._writeTo(_b, Go.toInterface(_sa));
	}

	public function _readMsg(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UnixAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<UnixAddr> = new Pointer<UnixAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		var _sa:stdgo.syscall.Syscall.Sockaddr = ((null : stdgo.syscall.Syscall.Sockaddr));
		{
			var __tmp__ = _c.value._conn._fd.value._readMsg(_b, _oob, _readMsgFlags);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_sa = Go.toInterface(__tmp__._3);
			_err = __tmp__._4;
		};
		if (_readMsgFlags == ((0 : GoUnTypedInt)) && _err == null && _oobn > ((0 : GoInt))) {
			_setReadMsgCloseOnExec(_oob.__slice__(0, _oobn));
		};
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrUnix>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrUnix> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			if (_sa.value.name != (("" : GoString))) {
				_addr = Go.pointer((({name: _sa.value.name, net: _sotypeToNet(_c.value._conn._fd.value._sotype)} : UnixAddr)));
			};
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function _readFrom(_b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UnixAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _addr:Pointer<UnixAddr> = new Pointer<UnixAddr>().nil();
		var __tmp__ = _c.value._conn._fd.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_sa:stdgo.syscall.Syscall.Sockaddr = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrUnix>)))) {
			var _sa:Pointer<stdgo.syscall.Syscall.SockaddrUnix> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
				.value;
			if (_sa.value.name != (("" : GoString))) {
				_addr = Go.pointer((({name: _sa.value.name, net: _sotypeToNet(_c.value._conn._fd.value._sotype)} : UnixAddr)));
			};
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function writeMsgUnix(_b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: stdgo.syscall.Syscall.einval};
		};
		{
			var __tmp__ = _c.value._writeMsg(_b, _oob, _addr);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _oobn, _2: _err};
	}

	public function writeTo(_b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = try {
			{value: ((_addr.__underlying__().value : UnixAddr)), ok: true};
		} catch (_) {
			{value: new Pointer<UnixAddr>().nil(), ok: false};
		}, _a = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			return {_0: ((0 : GoInt)), _1: Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr,
				err: stdgo.syscall.Syscall.einval
			} : OpError))).value};
		};
		var __tmp__ = _c.value._writeTo(_b, _a),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _a.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function writeToUnix(_b:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._writeTo(_b, _addr),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_err = Go.pointer((({
				op: "write",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _addr.value._opAddr(),
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _err};
	}

	public function readMsgUnix(_b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UnixAddr>;
		var _4:Error;
	} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)),
			_oobn:GoInt = ((0 : GoInt)),
			_flags:GoInt = ((0 : GoInt)),
			_addr:Pointer<UnixAddr> = new Pointer<UnixAddr>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (!_c.value._ok()) {
			return {
				_0: ((0 : GoInt)),
				_1: ((0 : GoInt)),
				_2: ((0 : GoInt)),
				_3: new Pointer<UnixAddr>().nil(),
				_4: stdgo.syscall.Syscall.einval
			};
		};
		{
			var __tmp__ = _c.value._readMsg(_b, _oob);
			_n = __tmp__._0;
			_oobn = __tmp__._1;
			_flags = __tmp__._2;
			_addr = __tmp__._3;
			_err = __tmp__._4;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {
			_0: _n,
			_1: _oobn,
			_2: _flags,
			_3: _addr,
			_4: _err
		};
	}

	public function readFrom(_b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: ((null : Addr)), _2: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<UnixAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		if (_addr == null || _addr.isNil()) {
			return {_0: _n, _1: ((null : Addr)), _2: _err};
		};
		return {_0: _n, _1: _addr.value, _2: _err};
	}

	public function readFromUnix(_b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UnixAddr>; var _2:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((0 : GoInt)), _1: new Pointer<UnixAddr>().nil(), _2: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _c.value._readFrom(_b),
			_n:GoInt = __tmp__._0,
			_addr:Pointer<UnixAddr> = __tmp__._1,
			_err:stdgo.Error = __tmp__._2;
		if (_err != null) {
			_err = Go.pointer((({
				op: "read",
				net: _c.value._conn._fd.value._net,
				source: _c.value._conn._fd.value._laddr,
				addr: _c.value._conn._fd.value._raddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _n, _1: _addr, _2: _err};
	}

	public function closeWrite():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._conn._fd.value._closeWrite();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function closeRead():Error {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _c.value._conn._fd.value._closeRead();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _c.value._conn._fd.value._net,
					source: _c.value._conn._fd.value._laddr,
					addr: _c.value._conn._fd.value._raddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_c.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawConn(_c.value._conn._fd);
	}

	@:embedded
	public var _conn:T_conn = new T_conn();

	public function new(?_conn:T_conn)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_conn) + "}";
	}

	public function close():stdgo.Error
		return _conn.close();

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:stdgo.Error;}
		return _conn.file();

	public function localAddr():Addr
		return _conn.localAddr();

	public function read(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.read(_0);

	public function remoteAddr():Addr
		return _conn.remoteAddr();

	public function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setDeadline(_0);

	public function setReadBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setReadBuffer(_0);

	public function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setReadDeadline(_0);

	public function setWriteBuffer(_bytes:GoInt):stdgo.Error
		return _conn.setWriteBuffer(_0);

	public function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return _conn.setWriteDeadline(_0);

	public function write(_b:Slice<GoUInt8>):{var _0:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
	}; var _1:Slice<GoUInt8> -> {
		var _0:GoInt;
		var _1:stdgo.Error;
		};}
		return _conn.write(_0);

	public function _ok():Bool
		return _conn._ok();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UnixConn(_conn);
	}

	public function __set__(__tmp__) {
		this._conn = __tmp__._conn;
		return this;
	}
}

@:structInit class UnixListener {
	public function setUnlinkOnClose(_unlink:Bool):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_l.value._unlink = _unlink;
	}

	public function _file():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _ln.value._fd.value._dup(),
			_f:Pointer<stdgo.os.Os.File> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: _err};
		};
		return {_0: _f, _1: ((null : stdgo.Error))};
	}

	public function _close():Error {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_ln.value._unlinkOnce.do_(function():Void {
			if (_ln.value._path[((0 : GoInt))] != (("@".code : GoRune)) && _ln.value._unlink) {
				stdgo.syscall.Syscall.unlink(_ln.value._path);
			};
		});
		return _ln.value._fd.value.close();
	}

	public function _accept():{var _0:Pointer<UnixConn>; var _1:Error;} {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _ln.value._fd.value._accept(),
			_fd:Pointer<T_netFD> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UnixConn>().nil(), _1: _err};
		};
		return {_0: _newUnixConn(_fd), _1: ((null : stdgo.Error))};
	}

	public function file():{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _f:Pointer<stdgo.os.Os.File> = new Pointer<stdgo.os.Os.File>().nil(),
			_err:Error = ((null : stdgo.Error));
		if (!_l.value._ok()) {
			return {_0: new Pointer<stdgo.os.Os.File>().nil(), _1: stdgo.syscall.Syscall.einval};
		};
		{
			var __tmp__ = _l.value._file();
			_f = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			_err = Go.pointer((({
				op: "file",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value;
		};
		return {_0: _f, _1: _err};
	}

	public function setDeadline(_t:stdgo.time.Time.Time):Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _l.value._fd.value._pfd.setDeadline(_t.__copy__());
			if (_err != null) {
				return Go.pointer((({
					op: "set",
					net: _l.value._fd.value._net,
					source: ((null : Addr)),
					addr: _l.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function addr():Addr {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _l.value._fd.value._laddr;
	}

	public function close():Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return stdgo.syscall.Syscall.einval;
		};
		{
			var _err:stdgo.Error = _l.value._close();
			if (_err != null) {
				return Go.pointer((({
					op: "close",
					net: _l.value._fd.value._net,
					source: ((null : Addr)),
					addr: _l.value._fd.value._laddr,
					err: _err
				} : OpError))).value;
			};
		};
		return ((null : stdgo.Error));
	}

	public function accept():{var _0:Conn; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: ((null : Conn)), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _l.value._accept(),
			_c:Pointer<UnixConn> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: ((null : Conn)), _1: Go.pointer((({
				op: "accept",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value};
		};
		return {_0: _c.value, _1: ((null : stdgo.Error))};
	}

	public function acceptUnix():{var _0:Pointer<UnixConn>; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: new Pointer<UnixConn>().nil(), _1: stdgo.syscall.Syscall.einval};
		};
		var __tmp__ = _l.value._accept(),
			_c:Pointer<UnixConn> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
				op: "accept",
				net: _l.value._fd.value._net,
				source: ((null : Addr)),
				addr: _l.value._fd.value._laddr,
				err: _err
			} : OpError))).value};
		};
		return {_0: _c, _1: ((null : stdgo.Error))};
	}

	public function syscallConn():{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;} {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (!_l.value._ok()) {
			return {_0: ((null : stdgo.syscall.Syscall.RawConn)), _1: stdgo.syscall.Syscall.einval};
		};
		return _newRawListener(_l.value._fd);
	}

	public function _ok():Bool {
		var _ln = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _ln != null && !_ln.isNil() && _ln.value._fd != null && !_ln.value._fd.isNil();
	}

	public var _fd:Pointer<T_netFD> = new Pointer<T_netFD>().nil();
	public var _path:GoString = (("" : GoString));
	public var _unlink:Bool = false;
	public var _unlinkOnce:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();

	public function new(?_fd:Pointer<T_netFD>, ?_path:GoString, ?_unlink:Bool, ?_unlinkOnce:stdgo.sync.Sync.Once)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_fd) + " " + Go.string(_path) + " " + Go.string(_unlink) + " " + Go.string(_unlinkOnce) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new UnixListener(_fd, _path, _unlink, _unlinkOnce);
	}

	public function __set__(__tmp__) {
		this._fd = __tmp__._fd;
		this._path = __tmp__._path;
		this._unlink = __tmp__._unlink;
		this._unlinkOnce = __tmp__._unlinkOnce;
		return this;
	}
}

@:structInit @:local class T__struct_44 {
	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_44();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit @:local class T__struct_45 {
	@:embedded
	public var mutex:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _byName:GoMap<GoString, Slice<GoString>> = new GoMap<GoString,
		Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
	public var _byAddr:GoMap<GoString, Slice<GoString>> = new GoMap<GoString,
		Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
	public var _expire:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var _path:GoString = (("" : GoString));
	public var _mtime:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var _size:GoInt64 = ((0 : GoInt64));

	public function new(?mutex:stdgo.sync.Sync.Mutex, ?_byName:GoMap<GoString, Slice<GoString>>, ?_byAddr:GoMap<GoString, Slice<GoString>>,
			?_expire:stdgo.time.Time.Time, ?_path:GoString, ?_mtime:stdgo.time.Time.Time, ?_size:GoInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(mutex) + " " + Go.string(_byName) + " " + Go.string(_byAddr) + " " + Go.string(_expire) + " " + Go.string(_path) + " "
			+ Go.string(_mtime) + " " + Go.string(_size) + "}";
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
		return new T__struct_45(mutex, _byName, _byAddr, _expire, _path, _mtime, _size);
	}

	public function __set__(__tmp__) {
		this.mutex = __tmp__.mutex;
		this._byName = __tmp__._byName;
		this._byAddr = __tmp__._byAddr;
		this._expire = __tmp__._expire;
		this._path = __tmp__._path;
		this._mtime = __tmp__._mtime;
		this._size = __tmp__._size;
		return this;
	}
}

@:structInit @:local class T__struct_46 {
	public var _laddr:TCPAddr = new TCPAddr();
	public var _value:GoInt = ((0 : GoInt));

	public function new(?_laddr:TCPAddr, ?_value:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_laddr) + " " + Go.string(_value) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_46(_laddr, _value);
	}

	public function __set__(__tmp__) {
		this._laddr = __tmp__._laddr;
		this._value = __tmp__._value;
		return this;
	}
}

@:structInit @:local class T__struct_47 {
	@:embedded
	public var once:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
	public var _val:GoInt = ((0 : GoInt));

	public function new(?once:stdgo.sync.Sync.Once, ?_val:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(once) + " " + Go.string(_val) + "}";
	}

	public function do_(_f:() -> Void)
		once.do_(_0);

	public function _doSlow(_f:() -> Void)
		once._doSlow(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_47(once, _val);
	}

	public function __set__(__tmp__) {
		this.once = __tmp__.once;
		this._val = __tmp__._val;
		return this;
	}
}

var _threadOnce:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _netCgo:Bool = false;
final flagMulticast:Flags = (new Flags(((1 : GoUnTypedInt)) << (4 : GoUnTypedInt)));
var _ipStackCaps:T_ipStackCapabilities = new T_ipStackCapabilities();
final _cacheMaxAge:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((5 : GoInt64)) * stdgo.time.Time.second.__t__);

var _testHookLookupIP:(stdgo.context.Context.Context, (stdgo.context.Context.Context, GoString, GoString) -> {
	var _0:Slice<IPAddr>;
	var _1:stdgo.Error;
}, GoString, GoString) -> {
	var _0:Slice<IPAddr>;
	var _1:stdgo.Error;
} = function(_ctx:stdgo.context.Context.Context, _fn:(stdgo.context.Context.Context, GoString, GoString) -> {
	var _0:Slice<IPAddr>;
	var _1:Error;
}, _network:GoString, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;} {
	return _fn(_ctx, _network, _host);
};

var _errNoSuitableAddress:stdgo.Error = stdgo.errors.Errors.new_("no suitable address found");
var defaultResolver:Pointer<Resolver> = Go.pointer(new Resolver());
var _errNoSuchHost:stdgo.Error = stdgo.errors.Errors.new_("no such host");
var _errCanceled:stdgo.Error = stdgo.errors.Errors.new_("operation was canceled");
var _classAMask:IPMask = ipv4Mask(((255 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))).__copy__();
final _maxPortBufSize:GoInt = "mobility-header".length + ((10 : GoInt));
var _errMissingAddress:stdgo.Error = stdgo.errors.Errors.new_("missing address");
var _errMalformedDNSRecordsDetail:GoString = "DNS response contained records which contain invalid names";
var _errInvalidInterface:stdgo.Error = stdgo.errors.Errors.new_("invalid network interface");
final flagPointToPoint:Flags = (new Flags(((1 : GoUnTypedInt)) << (3 : GoUnTypedInt)));
var _errClosed:internal.poll.Poll.T_errNetClosing = internal.poll.Poll.errNetClosing.__copy__();
var errClosed:Error = _errClosed.__copy__();
var _errInvalidInterfaceName:stdgo.Error = stdgo.errors.Errors.new_("invalid network interface name");

var ipv6unspecified:IP = new IP(new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)))).__copy__();

var _testHookCanceledDial:() -> Void = function():Void {};
final _defaultTCPKeepAlive:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((15 : GoInt64)) * stdgo.time.Time.second.__t__);
var _testHookHostsPath:GoString = "/etc/hosts";

var _services:GoMap<GoString, GoMap<GoString, GoInt>> = new GoMap<GoString, GoMap<GoString,
	GoInt>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
	stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind)))),
	{
		key: "udp",
		value: new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.basic(int_kind))),
			{
				key: "domain",
				value: ((53 : GoInt))
			})
	}, {
		key: "tcp",
		value: new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.basic(int_kind))),
			{
				key: "ftp",
				value: ((21 : GoInt))
			},
			{key: "ftps", value: ((990 : GoInt))}, {key: "gopher", value: ((70 : GoInt))}, {key: "http", value: ((80 : GoInt))},
			{key: "https", value: ((443 : GoInt))}, {key: "imap2", value: ((143 : GoInt))}, {key: "imap3", value: ((220 : GoInt))},
			{key: "imaps", value: ((993 : GoInt))}, {key: "pop3", value: ((110 : GoInt))}, {key: "pop3s", value: ((995 : GoInt))},
			{key: "smtp", value: ((25 : GoInt))}, {key: "ssh", value: ((22 : GoInt))}, {key: "telnet", value: ((23 : GoInt))})
	});

var _errTimeout:Error = Go.pointer(new T_timeoutError()).value;
var _classBMask:IPMask = ipv4Mask(((255 : GoUInt8)), ((255 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))).__copy__();

var _listeners:GoMap<GoString, Pointer<T_netFD>> = new GoMap<GoString,
	Pointer<T_netFD>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
	stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.netFD", [],
		stdgo.reflect.Reflect.GoType.named("net.netFD", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "_r",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.bufferedPipe", [], stdgo.reflect.Reflect.GoType.structType([
					{
						name: "_softLimit",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(int_kind)
					},
					{
						name: "_mu",
						embedded: false,
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
						name: "_buf",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "_closed",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "_rCond",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_noCopy",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.noCopy", [],
									stdgo.reflect.Reflect.GoType.named("net.timeoutError", [], stdgo.reflect.Reflect.GoType.structType([])))
							},
							{
								name: "l",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
							},
							{
								name: "_notify",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.notifyList", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wait",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
									},
									{
										name: "_notify",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
									},
									{
										name: "_lock",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
									},
									{
										name: "_head",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
									},
									{
										name: "_tail",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
									}
								]))
							},
							{
								name: "_checker",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.copyChecker", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind))
							}
						]))
					},
					{
						name: "_wCond",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.invalidType)
					},
					{
						name: "_rDeadline",
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
						name: "_wDeadline",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
					}
				])))
			},
			{
				name: "_w",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.bufferedPipe", [], stdgo.reflect.Reflect.GoType.structType([
					{
						name: "_softLimit",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(int_kind)
					},
					{
						name: "_mu",
						embedded: false,
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
						name: "_buf",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
					},
					{
						name: "_closed",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "_rCond",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_noCopy",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.noCopy", [],
									stdgo.reflect.Reflect.GoType.named("net.timeoutError", [], stdgo.reflect.Reflect.GoType.structType([])))
							},
							{
								name: "l",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.Locker", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
							},
							{
								name: "_notify",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.notifyList", [], stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_wait",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
									},
									{
										name: "_notify",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
									},
									{
										name: "_lock",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
									},
									{
										name: "_head",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
									},
									{
										name: "_tail",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
									}
								]))
							},
							{
								name: "_checker",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.named("sync.copyChecker", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind))
							}
						]))
					},
					{
						name: "_wCond",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.invalidType)
					},
					{
						name: "_rDeadline",
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
						name: "_wDeadline",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
					}
				])))
			},
			{
				name: "_incoming",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.chanType(0,
					stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.netFD", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "_r",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.bufferedPipe", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_softLimit",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int_kind)
									},
									{
										name: "_mu",
										embedded: false,
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
										name: "_buf",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))
									},
									{
										name: "_closed",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
									},
									{
										name: "_rCond",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_noCopy",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("sync.noCopy", [],
													stdgo.reflect.Reflect.GoType.named("net.timeoutError", [], stdgo.reflect.Reflect.GoType.structType([])))
											},
											{
												name: "l",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("sync.Locker", [],
													stdgo.reflect.Reflect.GoType.interfaceType(false, []))
											},
											{
												name: "_notify",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("sync.notifyList", [], stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_wait",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
													},
													{
														name: "_notify",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
													},
													{
														name: "_lock",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(uintptr_kind)
													},
													{
														name: "_head",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
													},
													{
														name: "_tail",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind)
													}
												]))
											},
											{
												name: "_checker",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.named("sync.copyChecker", [],
													stdgo.reflect.Reflect.GoType.basic(uintptr_kind))
											}
										]))
									},
									{
										name: "_wCond",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("sync.Cond", [], stdgo.reflect.Reflect.GoType.invalidType)
									},
									{
										name: "_rDeadline",
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
										name: "_wDeadline",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
									}
								])))
						},
						{
							name: "_w",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.bufferedPipe", [],
								stdgo.reflect.Reflect.GoType.invalidType))
						},
						{
							name: "_incoming",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.chanType(0,
								stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("net.netFD", [],
									stdgo.reflect.Reflect.GoType.invalidType)))
						},
						{
							name: "_closedMu",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType)
						},
						{
							name: "_closed",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "_listener",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "_family",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int_kind)
						},
						{
							name: "_sotype",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int_kind)
						},
						{
							name: "_net",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "_laddr",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("net.Addr", [],
								stdgo.reflect.Reflect.GoType.named("net.Addr", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))
						},
						{
							name: "_raddr",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("net.Addr", [], stdgo.reflect.Reflect.GoType.invalidType)
						},
						{
							name: "_pfd",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("internal/poll.FD", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_fdmu",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("internal/poll.fdMutex", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_state",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_rsema",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
										},
										{
											name: "_wsema",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
										}
									]))
								},
								{
									name: "sysfd",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int_kind)
								},
								{
									name: "_pd",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("internal/poll.pollDesc", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_fd",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/poll.FD", [],
												stdgo.reflect.Reflect.GoType.invalidType))
										},
										{
											name: "_closing",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
										}
									]))
								},
								{
									name: "_iovecs",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("syscall.Iovec",
											[],
										stdgo.reflect.Reflect.GoType.named("net.timeoutError", [], stdgo.reflect.Reflect.GoType.structType([])))))
								},
								{
									name: "_csema",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
								},
								{
									name: "_isBlocking",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
								},
								{
									name: "isStream",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "zeroReadIsEOF",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "_isFile",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								}
							]))
						},
						{
							name: "_isConnected",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						}
					]))))
			},
			{
				name: "_closedMu",
				embedded: false,
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
				name: "_closed",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
			},
			{
				name: "_listener",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
			},
			{
				name: "_family",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			},
			{
				name: "_sotype",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			},
			{
				name: "_net",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "_laddr",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("net.Addr", [],
					stdgo.reflect.Reflect.GoType.named("net.Addr", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))
			},
			{
				name: "_raddr",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("net.Addr", [],
					stdgo.reflect.Reflect.GoType.named("net.Addr", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])))
			},
			{
				name: "_pfd",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("internal/poll.FD", [], stdgo.reflect.Reflect.GoType.structType([
					{
						name: "_fdmu",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("internal/poll.fdMutex", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_state",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
							},
							{
								name: "_rsema",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
							},
							{
								name: "_wsema",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
							}
						]))
					},
					{
						name: "sysfd",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(int_kind)
					},
					{
						name: "_pd",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.named("internal/poll.pollDesc", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_fd",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/poll.FD", [],
									stdgo.reflect.Reflect.GoType.invalidType))
							},
							{
								name: "_closing",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
							}
						]))
					},
					{
						name: "_iovecs",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("syscall.Iovec",
							[], stdgo.reflect.Reflect.GoType.named("net.timeoutError", [], stdgo.reflect.Reflect.GoType.structType([])))))
					},
					{
						name: "_csema",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
					},
					{
						name: "_isBlocking",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
					},
					{
						name: "isStream",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "zeroReadIsEOF",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					},
					{
						name: "_isFile",
						embedded: false,
						tag: "",
						type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
					}
				]))
			},
			{
				name: "_isConnected",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
			}
		])))))));

var _listenersMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var ipv4allrouter:IP = ipv4(((224 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((2 : GoUInt8))).__copy__();
final flagLoopback:Flags = (new Flags(((1 : GoUnTypedInt)) << (2 : GoUnTypedInt)));
var _listenFunc:(GoInt, GoInt) -> Error = stdgo.syscall.Syscall.listen;

var _testHookDialTCP:(_ctx:stdgo.context.Context.Context, _net:GoString, _laddr:Pointer<TCPAddr>, _raddr:Pointer<TCPAddr>) -> {
	var _0:Pointer<TCPConn>;
	var _1:Error;
} = null;

var _v4InV6Prefix:Slice<GoUInt8> = new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)));

var _noCancel:Chan<T_timeoutError> = ((new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true) : Chan<T__struct_44>));
var _testHookSetKeepAlive:stdgo.time.Time.Duration->Void = function(_0:stdgo.time.Time.Duration):Void {};
var _dnsWaitGroup:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();

var ipv6linklocalallrouters:IP = new IP(new Slice<GoUInt8>(((255 : GoUInt8)), ((2 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((2 : GoUInt8)))).__copy__();

var ipv6zero:IP = new IP(new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)))).__copy__();

var _flagNames:Slice<GoString> = new Slice<GoString>("up", "broadcast", "loopback", "pointtopoint", "multicast");
var errWriteToConnected:stdgo.Error = stdgo.errors.Errors.new_("use of WriteTo with pre-connected connection");
final _readMsgFlags:GoInt64 = ((0 : GoUnTypedInt));
final _maxProtoLength:GoInt = "RSVP-E2E-IGNORE".length + ((10 : GoInt));
var ipv4bcast:IP = ipv4(((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))).__copy__();
var _hosts:T__struct_45 = new T__struct_45();
var _threadLimit:Chan<T__struct_44> = new Chan<T_timeoutError>(0, () -> new T_timeoutError(), true);
final flagBroadcast:Flags = (new Flags(((1 : GoUnTypedInt)) << (1 : GoUnTypedInt)));
var ipv4zero:IP = ipv4(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))).__copy__();

var _zoneCache:T_ipv6ZoneCache = (({
	_toIndex: new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(int_kind)))),
	_toName: new GoMap<GoInt, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind),
		stdgo.reflect.Reflect.GoType.basic(string_kind)))),
	rwmutex: new stdgo.sync.Sync.RWMutex(),
	_lastFetched: new stdgo.time.Time.Time()
} : T_ipv6ZoneCache)).__copy__();

var _getsockoptIntFunc:(GoInt, GoInt, GoInt) -> {
	var _0:GoInt;
	var _1:Error;
} = stdgo.syscall.Syscall.getsockoptInt;

final _hexDigit:GoString = "0123456789abcdef";
var _testHookDialChannel:() -> Void = function():Void {};
var _portCounterMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var _onceReadServices:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _noDeadline:stdgo.time.Time.Time = new stdgo.time.Time.Time().__copy__();
var _connectFunc:(GoInt, stdgo.syscall.Syscall.Sockaddr) -> Error = stdgo.syscall.Syscall.connect;
final _big:GoInt64 = ((16777215 : GoUnTypedInt));
var _errNoSuchInterface:stdgo.Error = stdgo.errors.Errors.new_("no such network interface");
final ipv4len:GoInt64 = ((4 : GoUnTypedInt));
var _errNoSuchMulticastInterface:stdgo.Error = stdgo.errors.Errors.new_("no such multicast network interface");

var ipv6loopback:IP = new IP(new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((1 : GoUInt8)))).__copy__();

final flagUp:Flags = (new Flags(((1 : GoUnTypedInt)) << (0 : GoUnTypedInt)));
var _portCounter:GoInt64 = ((0 : GoInt));
final ipv6len:GoInt64 = ((16 : GoUnTypedInt));
var ipv4allsys:IP = ipv4(((224 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8))).__copy__();
var _netGo:Bool = false;
var _0:stdgo.context.Context.Context = ((new Pointer<T_onlyValuesCtx>().nil() : Pointer<T_onlyValuesCtx>)).value;

var ipv6linklocalallnodes:IP = new IP(new Slice<GoUInt8>(((255 : GoUInt8)), ((2 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((1 : GoUInt8)))).__copy__();

var _aLongTimeAgo:stdgo.time.Time.Time = stdgo.time.Time.unix(((1 : GoInt64)), ((0 : GoInt64))).__copy__();
var _1:stdgo.io.Io.WriterTo = ((new Pointer<Buffers>().nil() : Pointer<Buffers>)).value;

var ipv6interfacelocalallnodes:IP = new IP(new Slice<GoUInt8>(((255 : GoUInt8)), ((1 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((1 : GoUInt8)))).__copy__();

var _listenerBacklogCache:T__struct_47 = new T__struct_47();
var _2:stdgo.io.Io.Reader = ((new Pointer<Buffers>().nil() : Pointer<Buffers>)).value;

var _protocols:GoMap<GoString, GoInt> = new GoMap<GoString,
	GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(int_kind))),
	{
		key: "icmp",
		value: ((1 : GoInt))
	},
	{key: "igmp", value: ((2 : GoInt))}, {key: "tcp", value: ((6 : GoInt))}, {key: "udp", value: ((17 : GoInt))}, {key: "ipv6-icmp", value: ((58 : GoInt))});

var _socketFunc:(GoInt, GoInt, GoInt) -> {
	var _0:GoInt;
	var _1:Error;
} = stdgo.syscall.Syscall.socket;

var _errInvalidInterfaceIndex:stdgo.Error = stdgo.errors.Errors.new_("invalid network interface index");
var _classCMask:IPMask = ipv4Mask(((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((0 : GoUInt8))).__copy__();

function _cgoLookupHost(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<GoString>; var _1:Error; var _2:Bool;} {
	var _addrs:Slice<GoString> = new Slice<GoString>().nil(),
		_err:Error = ((null : stdgo.Error)),
		_completed:Bool = false;
	return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error)), _2: false};
}

function _cgoLookupPort(_ctx:stdgo.context.Context.Context, _network:GoString, _service:GoString):{var _0:GoInt; var _1:Error; var _2:Bool;} {
	var _port:GoInt = ((0 : GoInt)),
		_err:Error = ((null : stdgo.Error)),
		_completed:Bool = false;
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error)), _2: false};
}

function _cgoLookupIP(_ctx:stdgo.context.Context.Context, _network:GoString, _name:GoString):{var _0:Slice<IPAddr>; var _1:Error; var _2:Bool;} {
	var _addrs:Slice<IPAddr> = new Slice<IPAddr>().nil(),
		_err:Error = ((null : stdgo.Error)),
		_completed:Bool = false;
	return {_0: new Slice<IPAddr>().nil(), _1: ((null : stdgo.Error)), _2: false};
}

function _cgoLookupCNAME(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:GoString; var _1:Error; var _2:Bool;} {
	var _cname:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error)),
		_completed:Bool = false;
	return {_0: "", _1: ((null : stdgo.Error)), _2: false};
}

function _cgoLookupPTR(_ctx:stdgo.context.Context.Context, _addr:GoString):{var _0:Slice<GoString>; var _1:Error; var _2:Bool;} {
	var _ptrs:Slice<GoString> = new Slice<GoString>().nil(),
		_err:Error = ((null : stdgo.Error)),
		_completed:Bool = false;
	return {_0: new Slice<GoString>().nil(), _1: ((null : stdgo.Error)), _2: false};
}

function _minNonzeroTime(_a:stdgo.time.Time.Time, _b:stdgo.time.Time.Time):stdgo.time.Time.Time {
	if (_a.isZero()) {
		return _b.__copy__();
	};
	if (_b.isZero() || _a.before(_b.__copy__())) {
		return _a.__copy__();
	};
	return _b.__copy__();
}

/**
	// partialDeadline returns the deadline to use for a single address,
	// when multiple addresses are pending.
**/
function _partialDeadline(_now:stdgo.time.Time.Time, _deadline:stdgo.time.Time.Time, _addrsRemaining:GoInt):{var _0:stdgo.time.Time.Time; var _1:Error;} {
	if (_deadline.isZero()) {
		return {_0: _deadline.__copy__(), _1: ((null : stdgo.Error))};
	};
	var _timeRemaining:stdgo.time.Time.Duration = _deadline.sub(_now.__copy__());
	if (_timeRemaining.__t__ <= ((0 : GoInt64))) {
		return {_0: new stdgo.time.Time.Time().__copy__(), _1: _errTimeout};
	};
	var _timeout:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(_timeRemaining.__t__ / new stdgo.time.Time.Duration(_addrsRemaining).__t__);
	final _saneMinimum:stdgo.time.Time.Duration = new stdgo.time.Time.Duration(((2 : GoInt64)) * stdgo.time.Time.second.__t__);
	if (_timeout.__t__ < _saneMinimum.__t__) {
		if (_timeRemaining.__t__ < _saneMinimum.__t__) {
			_timeout = _timeRemaining;
		} else {
			_timeout = _saneMinimum;
		};
	};
	return {_0: _now.add(_timeout).__copy__(), _1: ((null : stdgo.Error))};
}

function _parseNetwork(_ctx:stdgo.context.Context.Context, _network:GoString, _needsProto:Bool):{var _0:GoString; var _1:GoInt; var _2:Error;} {
	var _afnet:GoString = (("" : GoString)),
		_proto:GoInt = ((0 : GoInt)),
		_err:Error = ((null : stdgo.Error));
	var _i:GoInt = _last(_network, ((":".code : GoRune)));
	if (_i < ((0 : GoInt))) {
		if (_network == (("tcp" : GoString)) || _network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))) {} else
			if (_network == (("udp" : GoString))
			|| _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else if (_network == (("ip" : GoString))
			|| _network == (("ip4" : GoString)) || _network == (("ip6" : GoString))) {
			if (_needsProto) {
				return {_0: "", _1: ((0 : GoInt)), _2: new UnknownNetworkError(_network)};
			};
		} else if (_network == (("unix" : GoString))
			|| _network == (("unixgram" : GoString))
			|| _network == (("unixpacket" : GoString))) {} else {
			return {_0: "", _1: ((0 : GoInt)), _2: new UnknownNetworkError(_network)};
		};
		return {_0: _network, _1: ((0 : GoInt)), _2: ((null : stdgo.Error))};
	};
	_afnet = _network.__slice__(0, _i);
	if (_afnet == (("ip" : GoString)) || _afnet == (("ip4" : GoString)) || _afnet == (("ip6" : GoString))) {
		var _protostr:GoString = _network.__slice__(_i + ((1 : GoInt)));
		var __tmp__ = _dtoi(_protostr),
			_proto:GoInt = __tmp__._0,
			_i:GoInt = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (!_ok || _i != _protostr.length) {
			{
				var __tmp__ = _lookupProtocol(_ctx, _protostr);
				_proto = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				return {_0: "", _1: ((0 : GoInt)), _2: _err};
			};
		};
		return {_0: _afnet, _1: _proto, _2: ((null : stdgo.Error))};
	};
	return {_0: "", _1: ((0 : GoInt)), _2: new UnknownNetworkError(_network)};
}

/**
	// Dial connects to the address on the named network.
	//
	// Known networks are "tcp", "tcp4" (IPv4-only), "tcp6" (IPv6-only),
	// "udp", "udp4" (IPv4-only), "udp6" (IPv6-only), "ip", "ip4"
	// (IPv4-only), "ip6" (IPv6-only), "unix", "unixgram" and
	// "unixpacket".
	//
	// For TCP and UDP networks, the address has the form "host:port".
	// The host must be a literal IP address, or a host name that can be
	// resolved to IP addresses.
	// The port must be a literal port number or a service name.
	// If the host is a literal IPv6 address it must be enclosed in square
	// brackets, as in "[2001:db8::1]:80" or "[fe80::1%zone]:80".
	// The zone specifies the scope of the literal IPv6 address as defined
	// in RFC 4007.
	// The functions JoinHostPort and SplitHostPort manipulate a pair of
	// host and port in this form.
	// When using TCP, and the host resolves to multiple IP addresses,
	// Dial will try each IP address in order until one succeeds.
	//
	// Examples:
	//	Dial("tcp", "golang.org:http")
	//	Dial("tcp", "192.0.2.1:http")
	//	Dial("tcp", "198.51.100.1:80")
	//	Dial("udp", "[2001:db8::1]:domain")
	//	Dial("udp", "[fe80::1%lo0]:53")
	//	Dial("tcp", ":80")
	//
	// For IP networks, the network must be "ip", "ip4" or "ip6" followed
	// by a colon and a literal protocol number or a protocol name, and
	// the address has the form "host". The host must be a literal IP
	// address or a literal IPv6 address with zone.
	// It depends on each operating system how the operating system
	// behaves with a non-well known protocol number such as "0" or "255".
	//
	// Examples:
	//	Dial("ip4:1", "192.0.2.1")
	//	Dial("ip6:ipv6-icmp", "2001:db8::1")
	//	Dial("ip6:58", "fe80::1%lo0")
	//
	// For TCP, UDP and IP networks, if the host is empty or a literal
	// unspecified IP address, as in ":80", "0.0.0.0:80" or "[::]:80" for
	// TCP and UDP, "", "0.0.0.0" or "::" for IP, the local system is
	// assumed.
	//
	// For Unix networks, the address must be a file system path.
**/
function dial(_network:GoString, _address:GoString):{var _0:Conn; var _1:Error;} {
	var _d:Dialer = new Dialer();
	return _d.dial(_network, _address);
}

/**
	// DialTimeout acts like Dial but takes a timeout.
	//
	// The timeout includes name resolution, if required.
	// When using TCP, and the host in the address parameter resolves to
	// multiple IP addresses, the timeout is spread over each consecutive
	// dial, such that each is given an appropriate fraction of the time
	// to connect.
	//
	// See func Dial for a description of the network and address
	// parameters.
**/
function dialTimeout(_network:GoString, _address:GoString, _timeout:stdgo.time.Time.Duration):{var _0:Conn; var _1:Error;} {
	var _d:Dialer = (({
		timeout: _timeout,
		deadline: new stdgo.time.Time.Time(),
		localAddr: ((null : Addr)),
		dualStack: false,
		fallbackDelay: new stdgo.time.Time.Duration(),
		keepAlive: new stdgo.time.Time.Duration(),
		resolver: new Pointer<Resolver>().nil(),
		cancel: new Chan<{}>(0, () -> null, true),
		control: null
	} : Dialer)).__copy__();
	return _d.dial(_network, _address);
}

/**
	// Listen announces on the local network address.
	//
	// The network must be "tcp", "tcp4", "tcp6", "unix" or "unixpacket".
	//
	// For TCP networks, if the host in the address parameter is empty or
	// a literal unspecified IP address, Listen listens on all available
	// unicast and anycast IP addresses of the local system.
	// To only use IPv4, use network "tcp4".
	// The address can use a host name, but this is not recommended,
	// because it will create a listener for at most one of the host's IP
	// addresses.
	// If the port in the address parameter is empty or "0", as in
	// "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
	// The Addr method of Listener can be used to discover the chosen
	// port.
	//
	// See func Dial for a description of the network and address
	// parameters.
	//
	// Listen uses context.Background internally; to specify the context, use
	// ListenConfig.Listen.
**/
function listen(_network:GoString, _address:GoString):{var _0:Listener; var _1:Error;} {
	var _lc:ListenConfig = new ListenConfig();
	return _lc.listen(stdgo.context.Context.background(), _network, _address);
}

/**
	// ListenPacket announces on the local network address.
	//
	// The network must be "udp", "udp4", "udp6", "unixgram", or an IP
	// transport. The IP transports are "ip", "ip4", or "ip6" followed by
	// a colon and a literal protocol number or a protocol name, as in
	// "ip:1" or "ip:icmp".
	//
	// For UDP and IP networks, if the host in the address parameter is
	// empty or a literal unspecified IP address, ListenPacket listens on
	// all available IP addresses of the local system except multicast IP
	// addresses.
	// To only use IPv4, use network "udp4" or "ip4:proto".
	// The address can use a host name, but this is not recommended,
	// because it will create a listener for at most one of the host's IP
	// addresses.
	// If the port in the address parameter is empty or "0", as in
	// "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
	// The LocalAddr method of PacketConn can be used to discover the
	// chosen port.
	//
	// See func Dial for a description of the network and address
	// parameters.
	//
	// ListenPacket uses context.Background internally; to specify the context, use
	// ListenConfig.ListenPacket.
**/
function listenPacket(_network:GoString, _address:GoString):{var _0:PacketConn; var _1:Error;} {
	var _lc:ListenConfig = new ListenConfig();
	return _lc.listenPacket(stdgo.context.Context.background(), _network, _address);
}

/**
	// provided by runtime
**/
function _fastrand():GoUInt32
	throw "not implemeneted";

function _randInt():GoInt {
	var _x:GoUInt32 = _fastrand(), _y:GoUInt32 = _fastrand();
	var _u:GoUInt = (((_x : GoUInt)) << ((31 : GoUnTypedInt))) ^ ((((_y : GoInt32)) : GoUInt));
	var _i:GoInt = (((_u >> ((1 : GoUnTypedInt))) : GoInt));
	return _i;
}

function _randIntn(_n:GoInt):GoInt {
	return _randInt() % _n;
}

/**
	// reverseaddr returns the in-addr.arpa. or ip6.arpa. hostname of the IP
	// address addr suitable for rDNS (PTR) record lookup or an error if it fails
	// to parse the IP address.
**/
function _reverseaddr(_addr:GoString):{var _0:GoString; var _1:Error;} {
	var _arpa:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	var _ip:IP = parseIP(_addr).__copy__();
	if (_ip.__t__ == null || _ip.__t__.isNil()) {
		return {_0: "", _1: Go.pointer((({
			err: "unrecognized address",
			name: _addr,
			server: "",
			isTimeout: false,
			isTemporary: false,
			isNotFound: false
		} : DNSError))).value};
	};
	if (_ip.to4().__t__ != null && !_ip.to4().__t__.isNil()) {
		return {_0: internal.itoa.Itoa.uitoa(((_ip.__t__[((15 : GoInt))] : GoUInt)))
			+ (("." : GoString))
			+ internal.itoa.Itoa.uitoa(((_ip.__t__[((14 : GoInt))] : GoUInt)))
			+ (("." : GoString))
			+ internal.itoa.Itoa.uitoa(((_ip.__t__[((13 : GoInt))] : GoUInt)))
			+ (("." : GoString))
			+ internal.itoa.Itoa.uitoa(((_ip.__t__[((12 : GoInt))] : GoUInt)))
			+ ((".in-addr.arpa." : GoString)), _1: ((null : stdgo.Error))};
	};
	var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
		.setCap(((_ip.__t__.length * ((4 : GoInt))
		+ "ip6.arpa.".length:GoInt)).toBasic());
	{
		var _i:GoInt = _ip.__t__.length - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			var _v:GoUInt8 = _ip.__t__[_i];
			_buf = _buf.__append__(_hexDigit[_v & ((15 : GoUInt8))], ((".".code : GoRune)), _hexDigit[(_v >> ((4 : GoUnTypedInt)))], ((".".code : GoRune)));
		});
	};
	_buf = _buf.__append__(...(("ip6.arpa." : GoString)).toArray());
	return {_0: ((_buf : GoString)), _1: ((null : stdgo.Error))};
}

function _equalASCIIName(_x:golang_org.x.net.dns.dnsmessage.Dnsmessage.Name, _y:golang_org.x.net.dns.dnsmessage.Dnsmessage.Name):Bool {
	if (_x.length != _y.length) {
		return false;
	};
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < ((_x.length : GoInt)), _i++, {
			var _a:GoUInt8 = _x.data[_i];
			var _b:GoUInt8 = _y.data[_i];
			if ((("A".code : GoRune)) <= _a && _a <= (("Z".code : GoRune))) {
				_a = _a + (((32 : GoUInt8)));
			};
			if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune))) {
				_b = _b + (((32 : GoUInt8)));
			};
			if (_a != _b) {
				return false;
			};
		});
	};
	return true;
}

/**
	// isDomainName checks if a string is a presentation-format domain name
	// (currently restricted to hostname-compatible "preferred name" LDH labels and
	// SRV-like "underscore labels"; see golang.org/issue/12421).
**/
function _isDomainName(_s:GoString):Bool {
	var _l:GoInt = _s.length;
	if (_l == ((0 : GoInt)) || _l > ((254 : GoInt)) || _l == ((254 : GoInt)) && _s[_l - ((1 : GoInt))] != ((".".code : GoRune))) {
		return false;
	};
	var _last:GoUInt8 = ((((".".code : GoRune)) : GoByte));
	var _nonNumeric:Bool = false;
	var _partlen:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			var _c:GoUInt8 = _s[_i];
			if ((("a".code : GoRune)) <= _c
				&& _c <= (("z".code : GoRune))
				|| (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)) || _c == (("_".code : GoRune))) {
				_nonNumeric = true;
				_partlen++;
			} else if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
				_partlen++;
			} else if (_c == (("-".code : GoRune))) {
				if (_last == ((".".code : GoRune))) {
					return false;
				};
				_partlen++;
				_nonNumeric = true;
			} else if (_c == ((".".code : GoRune))) {
				if (_last == ((".".code : GoRune)) || _last == (("-".code : GoRune))) {
					return false;
				};
				if (_partlen > ((63 : GoInt)) || _partlen == ((0 : GoInt))) {
					return false;
				};
				_partlen = ((0 : GoInt));
			};
			_last = _c;
		});
	};
	if (_last == (("-".code : GoRune)) || _partlen > ((63 : GoInt))) {
		return false;
	};
	return _nonNumeric;
}

/**
	// absDomainName returns an absolute domain name which ends with a
	// trailing dot to match pure Go reverse resolver and all other lookup
	// routines.
	// See golang.org/issue/12189.
	// But we don't want to add dots for local names from /etc/hosts.
	// It's hard to tell so we settle on the heuristic that names without dots
	// (like "localhost" or "myhost") do not get trailing dots, but any other
	// names do.
**/
function _absDomainName(_b:Slice<GoByte>):GoString {
	var _hasDots:Bool = false;
	for (_x in _b) {
		if (_x == ((".".code : GoRune))) {
			_hasDots = true;
			break;
		};
	};
	if (_hasDots && _b[_b.length - ((1 : GoInt))] != ((".".code : GoRune))) {
		_b = _b.__append__(((".".code : GoRune)));
	};
	return ((_b : GoString));
}

/**
	// wrapSyscallError takes an error and a syscall name. If the error is
	// a syscall.Errno, it wraps it in a os.SyscallError using the syscall name.
**/
function _wrapSyscallError(_name:GoString, _err:Error):Error {
	{
		var __tmp__ = try {
			{value: new stdgo.syscall.Syscall.Errno(_err), ok: true};
		} catch (_) {
			{value: new stdgo.syscall.Syscall.Errno(), ok: false};
		}, _ = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_err = stdgo.os.Os.newSyscallError(_name, _err);
		};
	};
	return _err;
}

function _isConnError(_err:Error):Bool {
	{
		var __tmp__ = try {
			{value: new stdgo.syscall.Syscall.Errno(_err), ok: true};
		} catch (_) {
			{value: new stdgo.syscall.Syscall.Errno(), ok: false};
		}, _se = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return _se.__t__ == stdgo.syscall.Syscall.econnreset.__t__ || _se.__t__ == stdgo.syscall.Syscall.econnaborted.__t__;
		};
	};
	return false;
}

/**
	// FileConn returns a copy of the network connection corresponding to
	// the open file f.
	// It is the caller's responsibility to close f when finished.
	// Closing c does not affect f, and closing f does not affect c.
**/
function fileConn(_f:Pointer<stdgo.os.Os.File>):{var _0:Conn; var _1:Error;} {
	var _c:Conn = ((null : Conn)), _err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _fileConn(_f);
		_c = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_err = Go.pointer((({
			op: "file",
			net: "file+net",
			source: ((null : Addr)),
			addr: new T_fileAddr(_f.value.name()),
			err: _err
		} : OpError))).value;
	};
	return {_0: _c, _1: _err};
}

/**
	// FileListener returns a copy of the network listener corresponding
	// to the open file f.
	// It is the caller's responsibility to close ln when finished.
	// Closing ln does not affect f, and closing f does not affect ln.
**/
function fileListener(_f:Pointer<stdgo.os.Os.File>):{var _0:Listener; var _1:Error;} {
	var _ln:Listener = ((null : Listener)),
		_err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _fileListener(_f);
		_ln = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_err = Go.pointer((({
			op: "file",
			net: "file+net",
			source: ((null : Addr)),
			addr: new T_fileAddr(_f.value.name()),
			err: _err
		} : OpError))).value;
	};
	return {_0: _ln, _1: _err};
}

/**
	// FilePacketConn returns a copy of the packet network connection
	// corresponding to the open file f.
	// It is the caller's responsibility to close f when finished.
	// Closing c does not affect f, and closing f does not affect c.
**/
function filePacketConn(_f:Pointer<stdgo.os.Os.File>):{var _0:PacketConn; var _1:Error;} {
	var _c:PacketConn = ((null : PacketConn)),
		_err:Error = ((null : stdgo.Error));
	{
		var __tmp__ = _filePacketConn(_f);
		_c = __tmp__._0;
		_err = __tmp__._1;
	};
	if (_err != null) {
		_err = Go.pointer((({
			op: "file",
			net: "file+net",
			source: ((null : Addr)),
			addr: new T_fileAddr(_f.value.name()),
			err: _err
		} : OpError))).value;
	};
	return {_0: _c, _1: _err};
}

function _fileConn(_f:Pointer<stdgo.os.Os.File>):{var _0:Conn; var _1:Error;} {
	return {_0: ((null : Conn)), _1: stdgo.syscall.Syscall.enoprotoopt};
}

function _fileListener(_f:Pointer<stdgo.os.Os.File>):{var _0:Listener; var _1:Error;} {
	return {_0: ((null : Listener)), _1: stdgo.syscall.Syscall.enoprotoopt};
}

function _filePacketConn(_f:Pointer<stdgo.os.Os.File>):{var _0:PacketConn; var _1:Error;} {
	return {_0: ((null : PacketConn)), _1: stdgo.syscall.Syscall.enoprotoopt};
}

function _parseLiteralIP(_addr:GoString):GoString {
	var _ip:IP = new IP();
	var _zone:GoString = (("" : GoString));
	_ip = _parseIPv4(_addr).__copy__();
	if (_ip.__t__ == null || _ip.__t__.isNil()) {
		{
			var __tmp__ = _parseIPv6Zone(_addr);
			_ip = __tmp__._0.__copy__();
			_zone = __tmp__._1;
		};
	};
	if (_ip.__t__ == null || _ip.__t__.isNil()) {
		return "";
	};
	if (_zone == (("" : GoString))) {
		return _ip.toString();
	};
	return _ip.toString() + (("%" : GoString)) + _zone;
}

function _readHosts():Void {
	var _now:stdgo.time.Time.Time = stdgo.time.Time.now().__copy__();
	var _hp:GoString = _testHookHostsPath;
	if (_now.before(_hosts._expire.__copy__())
		&& _hosts._path == _hp
		&& (_hosts._byName == null ? 0 : _hosts._byName.length) > ((0 : GoInt))) {
		return;
	};
	var __tmp__ = _stat(_hp),
		_mtime:stdgo.time.Time.Time = __tmp__._0,
		_size:GoInt64 = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err == null && _hosts._path == _hp && _hosts._mtime.equal(_mtime.__copy__()) && _hosts._size == _size) {
		_hosts._expire = _now.add(_cacheMaxAge).__copy__();
		return;
	};
	var _hs:GoMap<GoString, Slice<GoString>> = new GoMap<GoString,
		Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))));
	var _is:GoMap<GoString, Slice<GoString>> = new GoMap<GoString,
		Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))));
	var _file:Pointer<T_file> = new Pointer<T_file>().nil();
	{
		{
			var __tmp__ = _open(_hp);
			_file = __tmp__._0;
		};
		if (_file == null || _file.isNil()) {
			return;
		};
	};
	{
		var __tmp__ = _file.value._readLine(),
			_line:GoString = __tmp__._0,
			_ok:Bool = __tmp__._1;
		Go.cfor(_ok, {
			var __tmp__ = _file.value._readLine();
			_line = __tmp__._0;
			_ok = __tmp__._1;
		}, {
			{
				var _i:GoInt = internal.bytealg.Bytealg.indexByteString(_line, (("#".code : GoRune)));
				if (_i >= ((0 : GoInt))) {
					_line = _line.__slice__(((0 : GoInt)), _i);
				};
			};
			var _f:Slice<GoString> = _getFields(_line);
			if (_f.length < ((2 : GoInt))) {
				continue;
			};
			var _addr:GoString = _parseLiteralIP(_f[((0 : GoInt))]);
			if (_addr == (("" : GoString))) {
				continue;
			};
			{
				var _i:GoInt = ((1 : GoInt));
				Go.cfor(_i < _f.length, _i++, {
					var _name:GoString = _absDomainName(((_f[_i] : Slice<GoByte>)));
					var _h:Slice<GoUInt8> = ((_f[_i] : Slice<GoByte>));
					_lowerASCIIBytes(_h);
					var _key:GoString = _absDomainName(_h);
					_hs[_key] = _hs[_key].__append__(_addr);
					_is[_addr] = _is[_addr].__append__(_name);
				});
			};
		});
	};
	_hosts._expire = _now.add(_cacheMaxAge).__copy__();
	_hosts._path = _hp;
	_hosts._byName = _hs;
	_hosts._byAddr = _is;
	_hosts._mtime = _mtime.__copy__();
	_hosts._size = _size;
	_file.value._close();
}

/**
	// lookupStaticHost looks up the addresses for the given host from /etc/hosts.
**/
function _lookupStaticHost(_host:GoString):Slice<GoString> {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_hosts.lock();
	try {
		deferstack.unshift(() -> _hosts.unlock());
		_readHosts();
		if ((_hosts._byName == null ? 0 : _hosts._byName.length) != ((0 : GoInt))) {
			var _lowerHost:Slice<GoUInt8> = ((_host : Slice<GoByte>));
			_lowerASCIIBytes(_lowerHost);
			{
				var __tmp__ = _hosts._byName.exists(_absDomainName(_lowerHost)) ? {value: _hosts._byName[_absDomainName(_lowerHost)],
					ok: true} : {value: _hosts._byName.defaultValue(), ok: false},
					_ips:Slice<GoString> = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (_ok) {
					var _ipsCp:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((_ips.length : GoInt)).toBasic()) (("" : GoString))]);
					Go.copy(_ipsCp, _ips);
					{
						for (defer in deferstack) {
							defer();
						};
						return _ipsCp;
					};
				};
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return new Slice<GoString>().nil();
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
			return new Slice<GoString>().nil();
		};
	};
}

/**
	// lookupStaticAddr looks up the hosts for the given address from /etc/hosts.
**/
function _lookupStaticAddr(_addr:GoString):Slice<GoString> {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_hosts.lock();
	try {
		deferstack.unshift(() -> _hosts.unlock());
		_readHosts();
		_addr = _parseLiteralIP(_addr);
		if (_addr == (("" : GoString))) {
			{
				for (defer in deferstack) {
					defer();
				};
				return new Slice<GoString>().nil();
			};
		};
		if ((_hosts._byAddr == null ? 0 : _hosts._byAddr.length) != ((0 : GoInt))) {
			{
				var __tmp__ = _hosts._byAddr.exists(_addr) ? {value: _hosts._byAddr[_addr], ok: true} : {value: _hosts._byAddr.defaultValue(), ok: false},
					_hosts:Slice<GoString> = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (_ok) {
					var _hostsCp:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((_hosts.length : GoInt)).toBasic()) (("" : GoString))]);
					Go.copy(_hostsCp, _hosts);
					{
						for (defer in deferstack) {
							defer();
						};
						return _hostsCp;
					};
				};
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return new Slice<GoString>().nil();
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
			return new Slice<GoString>().nil();
		};
	};
}

/**
	// Interfaces returns a list of the system's network interfaces.
**/
function interfaces():{var _0:Slice<Interface>; var _1:Error;} {
	var __tmp__ = _interfaceTable(((0 : GoInt))),
		_ift:Slice<Interface> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<Interface>().nil(), _1: Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _err
		} : OpError))).value};
	};
	if (_ift.length != ((0 : GoInt))) {
		_zoneCache._update(_ift, false);
	};
	return {_0: _ift, _1: ((null : stdgo.Error))};
}

/**
	// InterfaceAddrs returns a list of the system's unicast interface
	// addresses.
	//
	// The returned list does not identify the associated interface; use
	// Interfaces and Interface.Addrs for more detail.
**/
function interfaceAddrs():{var _0:Slice<Addr>; var _1:Error;} {
	var __tmp__ = _interfaceAddrTable(new Pointer<Interface>().nil()),
		_ifat:Slice<Addr> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_err = Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _err
		} : OpError))).value;
	};
	return {_0: _ifat, _1: _err};
}

/**
	// InterfaceByIndex returns the interface specified by index.
	//
	// On Solaris, it returns one of the logical network interfaces
	// sharing the logical data link; for more precision use
	// InterfaceByName.
**/
function interfaceByIndex(_index:GoInt):{var _0:Pointer<Interface>; var _1:Error;} {
	if (_index <= ((0 : GoInt))) {
		return {_0: new Pointer<Interface>().nil(), _1: Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _errInvalidInterfaceIndex
		} : OpError))).value};
	};
	var __tmp__ = _interfaceTable(_index),
		_ift:Slice<Interface> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Interface>().nil(), _1: Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _err
		} : OpError))).value};
	};
	var __tmp__ = _interfaceByIndex(_ift, _index),
		_ifi:Pointer<Interface> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_err = Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _err
		} : OpError))).value;
	};
	return {_0: _ifi, _1: _err};
}

function _interfaceByIndex(_ift:Slice<Interface>, _index:GoInt):{var _0:Pointer<Interface>; var _1:Error;} {
	for (_ifi in _ift) {
		if (_index == _ifi.index) {
			return {_0: Go.pointer(_ifi), _1: ((null : stdgo.Error))};
		};
	};
	return {_0: new Pointer<Interface>().nil(), _1: _errNoSuchInterface};
}

/**
	// InterfaceByName returns the interface specified by name.
**/
function interfaceByName(_name:GoString):{var _0:Pointer<Interface>; var _1:Error;} {
	if (_name == (("" : GoString))) {
		return {_0: new Pointer<Interface>().nil(), _1: Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _errInvalidInterfaceName
		} : OpError))).value};
	};
	var __tmp__ = _interfaceTable(((0 : GoInt))),
		_ift:Slice<Interface> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<Interface>().nil(), _1: Go.pointer((({
			op: "route",
			net: "ip+net",
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _err
		} : OpError))).value};
	};
	if (_ift.length != ((0 : GoInt))) {
		_zoneCache._update(_ift, false);
	};
	for (_ifi in _ift) {
		if (_name == _ifi.name) {
			return {_0: Go.pointer(_ifi), _1: ((null : stdgo.Error))};
		};
	};
	return {_0: new Pointer<Interface>().nil(), _1: Go.pointer((({
		op: "route",
		net: "ip+net",
		source: ((null : Addr)),
		addr: ((null : Addr)),
		err: _errNoSuchInterface
	} : OpError))).value};
}

/**
	// If the ifindex is zero, interfaceTable returns mappings of all
	// network interfaces. Otherwise it returns a mapping of a specific
	// interface.
**/
function _interfaceTable(_ifindex:GoInt):{var _0:Slice<Interface>; var _1:Error;} {
	return {_0: new Slice<Interface>().nil(), _1: ((null : stdgo.Error))};
}

/**
	// If the ifi is nil, interfaceAddrTable returns addresses for all
	// network interfaces. Otherwise it returns addresses for a specific
	// interface.
**/
function _interfaceAddrTable(_ifi:Pointer<Interface>):{var _0:Slice<Addr>; var _1:Error;} {
	return {_0: new Slice<Addr>().nil(), _1: ((null : stdgo.Error))};
}

/**
	// interfaceMulticastAddrTable returns addresses for a specific
	// interface.
**/
function _interfaceMulticastAddrTable(_ifi:Pointer<Interface>):{var _0:Slice<Addr>; var _1:Error;} {
	return {_0: new Slice<Addr>().nil(), _1: ((null : stdgo.Error))};
}

/**
	// IPv4 returns the IP address (in 16-byte form) of the
	// IPv4 address a.b.c.d.
**/
function ipv4(_a:GoByte, _b:GoByte, _c:GoByte, _d:GoByte):IP {
	var _p:IP = new IP(new Slice<GoUInt8>(...[for (i in 0...((ipv6len : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
	Go.copy(_p, _v4InV6Prefix);
	_p.__t__[((12 : GoInt))] = _a;
	_p.__t__[((13 : GoInt))] = _b;
	_p.__t__[((14 : GoInt))] = _c;
	_p.__t__[((15 : GoInt))] = _d;
	return _p.__copy__();
}

/**
	// IPv4Mask returns the IP mask (in 4-byte form) of the
	// IPv4 mask a.b.c.d.
**/
function ipv4Mask(_a:GoByte, _b:GoByte, _c:GoByte, _d:GoByte):IPMask {
	var _p:IPMask = new IPMask(new Slice<GoUInt8>(...[for (i in 0...((ipv4len : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
	_p.__t__[((0 : GoInt))] = _a;
	_p.__t__[((1 : GoInt))] = _b;
	_p.__t__[((2 : GoInt))] = _c;
	_p.__t__[((3 : GoInt))] = _d;
	return _p.__copy__();
}

/**
	// CIDRMask returns an IPMask consisting of 'ones' 1 bits
	// followed by 0s up to a total length of 'bits' bits.
	// For a mask of this form, CIDRMask is the inverse of IPMask.Size.
**/
function cidrmask(_ones:GoInt, _bits:GoInt):IPMask {
	if (_bits != ((8 : GoUnTypedInt)) * ipv4len && _bits != ((8 : GoUnTypedInt)) * ipv6len) {
		return new IPMask();
	};
	if (_ones < ((0 : GoInt)) || _ones > _bits) {
		return new IPMask();
	};
	var _l:GoInt = _bits / ((8 : GoInt));
	var _m:IPMask = new IPMask(new Slice<GoUInt8>(...[for (i in 0...((_l : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
	var _n:GoUInt = ((_ones : GoUInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _l, _i++, {
			if (_n >= ((8 : GoUInt))) {
				_m.__t__[_i] = ((255 : GoUInt8));
				_n = _n - (((8 : GoUInt)));
				continue;
			};
			_m.__t__[_i] = -1 ^ (((((255 : GoUInt8)) >> _n) : GoByte));
			_n = ((0 : GoUInt));
		});
	};
	return _m.__copy__();
}

/**
	// Is p all zeros?
**/
function _isZeros(_p:IP):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _p.__t__.length, _i++, {
			if (_p.__t__[_i] != ((0 : GoUInt8))) {
				return false;
			};
		});
	};
	return true;
}

function _allFF(_b:Slice<GoByte>):Bool {
	for (_c in _b) {
		if (_c != ((255 : GoUInt8))) {
			return false;
		};
	};
	return true;
}

/**
	// ubtoa encodes the string form of the integer v to dst[start:] and
	// returns the number of bytes written to dst. The caller must ensure
	// that dst has sufficient length.
**/
function _ubtoa(_dst:Slice<GoByte>, _start:GoInt, _v:GoByte):GoInt {
	if (_v < ((10 : GoUInt8))) {
		_dst[_start] = _v + (("0".code : GoRune));
		return ((1 : GoInt));
	} else if (_v < ((100 : GoUInt8))) {
		_dst[_start + ((1 : GoInt))] = _v % ((10 : GoUInt8)) + (("0".code : GoRune));
		_dst[_start] = _v / ((10 : GoUInt8)) + (("0".code : GoRune));
		return ((2 : GoInt));
	};
	_dst[_start + ((2 : GoInt))] = _v % ((10 : GoUInt8)) + (("0".code : GoRune));
	_dst[_start + ((1 : GoInt))] = (_v / ((10 : GoUInt8))) % ((10 : GoUInt8)) + (("0".code : GoRune));
	_dst[_start] = _v / ((100 : GoUInt8)) + (("0".code : GoRune));
	return ((3 : GoInt));
}

function _hexString(_b:Slice<GoByte>):GoString {
	var _s:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_b.length * ((2 : GoInt)):GoInt)).toBasic()) ((0 : GoUInt8))]);
	{
		var _i;
		var _tn;
		for (_obj in _b.keyValueIterator()) {
			_i = _obj.key;
			_tn = _obj.value;
			{
				final __tmp__0 = _hexDigit[(_tn >> ((4 : GoUnTypedInt)))];
				final __tmp__1 = _hexDigit[_tn & ((15 : GoUInt8))];
				_s[_i * ((2 : GoInt))] = __tmp__0;
				_s[_i * ((2 : GoInt)) + ((1 : GoInt))] = __tmp__1;
			};
		};
	};
	return ((_s : GoString));
}

/**
	// ipEmptyString is like ip.String except that it returns
	// an empty string when ip is unset.
**/
function _ipEmptyString(_ip:IP):GoString {
	if (_ip.__t__.length == ((0 : GoInt))) {
		return "";
	};
	return _ip.toString();
}

/**
	// If mask is a sequence of 1 bits followed by 0 bits,
	// return the number of 1 bits.
**/
function _simpleMaskLength(_mask:IPMask):GoInt {
	var _n:GoInt = ((0 : GoInt));
	{
		var _i;
		var _v;
		for (_obj in _mask.__t__.keyValueIterator()) {
			_i = _obj.key;
			_v = _obj.value;
			if (_v == ((255 : GoUInt8))) {
				_n = _n + (((8 : GoInt)));
				continue;
			};
			while (_v & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
				_n++;
				_v = (_v << (((1 : GoUnTypedInt))));
			};
			if (_v != ((0 : GoUInt8))) {
				return -((1 : GoUnTypedInt));
			};
			{
				_i++;
				Go.cfor(_i < _mask.__t__.length, _i++, {
					if (_mask.__t__[_i] != ((0 : GoUInt8))) {
						return -((1 : GoUnTypedInt));
					};
				});
			};
			break;
		};
	};
	return _n;
}

function _networkNumberAndMask(_n:Pointer<IPNet>):{var _0:IP; var _1:IPMask;} {
	var _ip:IP = new IP(), _m:IPMask = new IPMask();
	{
		_ip = _n.value.ip.to4().__copy__();
		if (_ip.__t__ == null || _ip.__t__.isNil()) {
			_ip = _n.value.ip.__copy__();
			if (_ip.__t__.length != ipv6len) {
				return {_0: new IP(), _1: new IPMask()};
			};
		};
	};
	_m = _n.value.mask.__copy__();
	if (_m.__t__.length == ipv4len) {
		if (_ip.__t__.length != ipv4len) {
			return {_0: new IP(), _1: new IPMask()};
		};
	} else if (_m.__t__.length == ipv6len) {
		if (_ip.__t__.length == ipv4len) {
			_m = _m.__slice__(((12 : GoInt))).__copy__();
		};
	} else {
		return {_0: new IP(), _1: new IPMask()};
	};
	return {_0: _ip, _1: _m};
}

/**
	// Parse IPv4 address (d.d.d.d).
**/
function _parseIPv4(_s:GoString):IP {
	var _p:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < ipv4len, _i++, {
			if (_s.length == ((0 : GoInt))) {
				return new IP();
			};
			if (_i > ((0 : GoInt))) {
				if (_s[((0 : GoInt))] != ((".".code : GoRune))) {
					return new IP();
				};
				_s = _s.__slice__(((1 : GoInt)));
			};
			var __tmp__ = _dtoi(_s),
				_n:GoInt = __tmp__._0,
				_c:GoInt = __tmp__._1,
				_ok:Bool = __tmp__._2;
			if (!_ok || _n > ((255 : GoInt))) {
				return new IP();
			};
			if (_c > ((1 : GoInt)) && _s[((0 : GoInt))] == (("0".code : GoRune))) {
				return new IP();
			};
			_s = _s.__slice__(_c);
			_p[_i] = ((_n : GoByte));
		});
	};
	if (_s.length != ((0 : GoInt))) {
		return new IP();
	};
	return ipv4(_p[((0 : GoInt))], _p[((1 : GoInt))], _p[((2 : GoInt))], _p[((3 : GoInt))]).__copy__();
}

/**
	// parseIPv6Zone parses s as a literal IPv6 address and its associated zone
	// identifier which is described in RFC 4007.
**/
function _parseIPv6Zone(_s:GoString):{var _0:IP; var _1:GoString;} {
	var __tmp__ = _splitHostZone(_s),
		_s:GoString = __tmp__._0,
		_zone:GoString = __tmp__._1;
	return {_0: _parseIPv6(_s).__copy__(), _1: _zone};
}

/**
	// parseIPv6 parses s as a literal IPv6 address described in RFC 4291
	// and RFC 5952.
**/
function _parseIPv6(_s:GoString):IP {
	var _ip:IP = new IP();
	_ip = new IP(new Slice<GoUInt8>(...[for (i in 0...((ipv6len : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
	var _ellipsis:GoInt = -((1 : GoUnTypedInt));
	if (_s.length >= ((2 : GoInt)) && _s[((0 : GoInt))] == ((":".code : GoRune)) && _s[((1 : GoInt))] == ((":".code : GoRune))) {
		_ellipsis = ((0 : GoInt));
		_s = _s.__slice__(((2 : GoInt)));
		if (_s.length == ((0 : GoInt))) {
			return _ip.__copy__();
		};
	};
	var _i:GoInt = ((0 : GoInt));
	while (_i < ipv6len) {
		var __tmp__ = _xtoi(_s),
			_n:GoInt = __tmp__._0,
			_c:GoInt = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (!_ok || _n > ((65535 : GoInt))) {
			return new IP();
		};
		if (_c < _s.length && _s[_c] == ((".".code : GoRune))) {
			if (_ellipsis < ((0 : GoInt)) && _i != ipv6len - ipv4len) {
				return new IP();
			};
			if (_i + ipv4len > ipv6len) {
				return new IP();
			};
			var _ip4:IP = _parseIPv4(_s).__copy__();
			if (_ip4.__t__ == null || _ip4.__t__.isNil()) {
				return new IP();
			};
			_ip.__t__[_i] = _ip4.__t__[((12 : GoInt))];
			_ip.__t__[_i + ((1 : GoInt))] = _ip4.__t__[((13 : GoInt))];
			_ip.__t__[_i + ((2 : GoInt))] = _ip4.__t__[((14 : GoInt))];
			_ip.__t__[_i + ((3 : GoInt))] = _ip4.__t__[((15 : GoInt))];
			_s = "";
			_i = _i + (ipv4len);
			break;
		};
		_ip.__t__[_i] = (((_n >> ((8 : GoUnTypedInt))) : GoByte));
		_ip.__t__[_i + ((1 : GoInt))] = ((_n : GoByte));
		_i = _i + (((2 : GoInt)));
		_s = _s.__slice__(_c);
		if (_s.length == ((0 : GoInt))) {
			break;
		};
		if (_s[((0 : GoInt))] != ((":".code : GoRune)) || _s.length == ((1 : GoInt))) {
			return new IP();
		};
		_s = _s.__slice__(((1 : GoInt)));
		if (_s[((0 : GoInt))] == ((":".code : GoRune))) {
			if (_ellipsis >= ((0 : GoInt))) {
				return new IP();
			};
			_ellipsis = _i;
			_s = _s.__slice__(((1 : GoInt)));
			if (_s.length == ((0 : GoInt))) {
				break;
			};
		};
	};
	if (_s.length != ((0 : GoInt))) {
		return new IP();
	};
	if (_i < ipv6len) {
		if (_ellipsis < ((0 : GoInt))) {
			return new IP();
		};
		var _n:GoInt = ipv6len - _i;
		{
			var _j:GoInt = _i - ((1 : GoInt));
			Go.cfor(_j >= _ellipsis, _j--, {
				_ip.__t__[_j + _n] = _ip.__t__[_j];
			});
		};
		{
			var _j:GoInt = _ellipsis + _n - ((1 : GoInt));
			Go.cfor(_j >= _ellipsis, _j--, {
				_ip.__t__[_j] = ((0 : GoUInt8));
			});
		};
	} else if (_ellipsis >= ((0 : GoInt))) {
		return new IP();
	};
	return _ip.__copy__();
}

/**
	// ParseIP parses s as an IP address, returning the result.
	// The string s can be in IPv4 dotted decimal ("192.0.2.1"), IPv6
	// ("2001:db8::68"), or IPv4-mapped IPv6 ("::ffff:192.0.2.1") form.
	// If s is not a valid textual representation of an IP address,
	// ParseIP returns nil.
**/
function parseIP(_s:GoString):IP {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == ((".".code : GoRune))) {
				return _parseIPv4(_s).__copy__();
			} else if (_s[_i] == ((":".code : GoRune))) {
				return _parseIPv6(_s).__copy__();
			};
		});
	};
	return new IP();
}

/**
	// parseIPZone parses s as an IP address, return it and its associated zone
	// identifier (IPv6 only).
**/
function _parseIPZone(_s:GoString):{var _0:IP; var _1:GoString;} {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == ((".".code : GoRune))) {
				return {_0: _parseIPv4(_s).__copy__(), _1: ""};
			} else if (_s[_i] == ((":".code : GoRune))) {
				return _parseIPv6Zone(_s);
			};
		});
	};
	return {_0: new IP(), _1: ""};
}

/**
	// ParseCIDR parses s as a CIDR notation IP address and prefix length,
	// like "192.0.2.0/24" or "2001:db8::/32", as defined in
	// RFC 4632 and RFC 4291.
	//
	// It returns the IP address and the network implied by the IP and
	// prefix length.
	// For example, ParseCIDR("192.0.2.1/24") returns the IP address
	// 192.0.2.1 and the network 192.0.2.0/24.
**/
function parseCIDR(_s:GoString):{var _0:IP; var _1:Pointer<IPNet>; var _2:Error;} {
	var _i:GoInt = internal.bytealg.Bytealg.indexByteString(_s, (("/".code : GoRune)));
	if (_i < ((0 : GoInt))) {
		return {_0: new IP(), _1: new Pointer<IPNet>().nil(), _2: Go.pointer((({type: "CIDR address", text: _s} : ParseError))).value};
	};
	var _addr:GoString = _s.__slice__(0, _i),
		_mask:GoString = _s.__slice__(_i + ((1 : GoInt)));
	var _iplen:GoInt = ipv4len;
	var _ip:IP = _parseIPv4(_addr).__copy__();
	if (_ip.__t__ == null || _ip.__t__.isNil()) {
		_iplen = ipv6len;
		_ip = _parseIPv6(_addr).__copy__();
	};
	var __tmp__ = _dtoi(_mask),
		_n:GoInt = __tmp__._0,
		_i:GoInt = __tmp__._1,
		_ok:Bool = __tmp__._2;
	if (_ip.__t__ == null
		|| _ip.__t__.isNil()
		|| !_ok
		|| _i != _mask.length
		|| _n < ((0 : GoInt))
		|| _n > ((8 : GoInt)) * _iplen) {
		return {_0: new IP(), _1: new Pointer<IPNet>().nil(), _2: Go.pointer((({type: "CIDR address", text: _s} : ParseError))).value};
	};
	var _m:IPMask = cidrmask(_n, ((8 : GoInt)) * _iplen).__copy__();
	return {_0: _ip.__copy__(), _1: Go.pointer((({ip: _ip.mask(_m.__copy__()).__copy__(), mask: _m.__copy__()} : IPNet))), _2: ((null : stdgo.Error))};
}

/**
	// ResolveIPAddr returns an address of IP end point.
	//
	// The network must be an IP network name.
	//
	// If the host in the address parameter is not a literal IP address,
	// ResolveIPAddr resolves the address to an address of IP end point.
	// Otherwise, it parses the address as a literal IP address.
	// The address parameter can use a host name, but this is not
	// recommended, because it will return at most one of the host name's
	// IP addresses.
	//
	// See func Dial for a description of the network and address
	// parameters.
**/
function resolveIPAddr(_network:GoString, _address:GoString):{var _0:Pointer<IPAddr>; var _1:Error;} {
	if (_network == (("" : GoString))) {
		_network = "ip";
	};
	var __tmp__ = _parseNetwork(stdgo.context.Context.background(), _network, false),
		_afnet:GoString = __tmp__._0,
		_:GoInt = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if (_err != null) {
		return {_0: new Pointer<IPAddr>().nil(), _1: _err};
	};
	if (_afnet == (("ip" : GoString)) || _afnet == (("ip4" : GoString)) || _afnet == (("ip6" : GoString))) {} else {
		return {_0: new Pointer<IPAddr>().nil(), _1: new UnknownNetworkError(_network)};
	};
	var __tmp__ = defaultResolver.value._internetAddrList(stdgo.context.Context.background(), _afnet, _address),
		_addrs:T_addrList = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<IPAddr>().nil(), _1: _err};
	};
	return {_0: ((_addrs._forResolve(_network, _address).__underlying__().value : IPAddr)), _1: ((null : stdgo.Error))};
}

function _newIPConn(_fd:Pointer<T_netFD>):Pointer<IPConn> {
	return Go.pointer(new IPConn(new T_conn(_fd).__copy__()));
}

/**
	// DialIP acts like Dial for IP networks.
	//
	// The network must be an IP network name; see func Dial for details.
	//
	// If laddr is nil, a local address is automatically chosen.
	// If the IP field of raddr is nil or an unspecified IP address, the
	// local system is assumed.
**/
function dialIP(_network:GoString, _laddr:Pointer<IPAddr>, _raddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;} {
	if (_raddr == null || _raddr.isNil()) {
		return {_0: new Pointer<IPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: ((null : Addr)),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sd:Pointer<T_sysDialer> = Go.pointer((({_network: _network, _address: _raddr.value.toString(), dialer: new Dialer()} : T_sysDialer)));
	var __tmp__ = _sd.value._dialIP(stdgo.context.Context.background(), _laddr, _raddr),
		_c:Pointer<IPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<IPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// ListenIP acts like ListenPacket for IP networks.
	//
	// The network must be an IP network name; see func Dial for details.
	//
	// If the IP field of laddr is nil or an unspecified IP address,
	// ListenIP listens on all available IP addresses of the local system
	// except multicast IP addresses.
**/
function listenIP(_network:GoString, _laddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;} {
	if (_laddr == null || _laddr.isNil()) {
		_laddr = Go.pointer(new IPAddr());
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _laddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenIP(stdgo.context.Context.background(), _laddr),
		_c:Pointer<IPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<IPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

function _sockaddrToIP(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: ""} : IPAddr))).value;
	} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : IPAddr))).value;
	};
	return ((null : Addr));
}

function _stripIPv4Header(_n:GoInt, _b:Slice<GoByte>):GoInt {
	if (_b.length < ((20 : GoInt))) {
		return _n;
	};
	var _l:GoInt = ((((_b[((0 : GoInt))] & ((15 : GoUInt8))) : GoInt)) << ((2 : GoUnTypedInt)));
	if (((20 : GoInt)) > _l || _l > _b.length) {
		return _n;
	};
	if ((_b[((0 : GoInt))] >> ((4 : GoUnTypedInt))) != ((4 : GoUInt8))) {
		return _n;
	};
	Go.copy(_b, _b.__slice__(_l));
	return _n - _l;
}

/**
	// supportsIPv4 reports whether the platform supports IPv4 networking
	// functionality.
**/
function _supportsIPv4():Bool {
	_ipStackCaps.once.do_(_ipStackCaps._probe);
	return _ipStackCaps._ipv4Enabled;
}

/**
	// supportsIPv6 reports whether the platform supports IPv6 networking
	// functionality.
**/
function _supportsIPv6():Bool {
	_ipStackCaps.once.do_(_ipStackCaps._probe);
	return _ipStackCaps._ipv6Enabled;
}

/**
	// supportsIPv4map reports whether the platform supports mapping an
	// IPv4 address inside an IPv6 address at transport layer
	// protocols. See RFC 4291, RFC 4038 and RFC 3493.
**/
function _supportsIPv4map():Bool {
	if (stdgo.runtime.Runtime.goos == (("dragonfly" : GoString)) || stdgo.runtime.Runtime.goos == (("openbsd" : GoString))) {
		return false;
	};
	_ipStackCaps.once.do_(_ipStackCaps._probe);
	return _ipStackCaps._ipv4MappedIPv6Enabled;
}

/**
	// isIPv4 reports whether addr contains an IPv4 address.
**/
function _isIPv4(_addr:Addr):Bool {
	if (Go.assertable(((_addr : Pointer<TCPAddr>)))) {
		var _addr:Pointer<TCPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__().value;
		return _addr.value.ip.to4().__t__ != null && !_addr.value.ip.to4().__t__.isNil();
	} else if (Go.assertable(((_addr : Pointer<UDPAddr>)))) {
		var _addr:Pointer<UDPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__().value;
		return _addr.value.ip.to4().__t__ != null && !_addr.value.ip.to4().__t__.isNil();
	} else if (Go.assertable(((_addr : Pointer<IPAddr>)))) {
		var _addr:Pointer<IPAddr> = _addr == null ? null : _addr.__underlying__() == null ? null : _addr == null ? null : _addr.__underlying__().value;
		return _addr.value.ip.to4().__t__ != null && !_addr.value.ip.to4().__t__.isNil();
	};
	return false;
}

/**
	// isNotIPv4 reports whether addr does not contain an IPv4 address.
**/
function _isNotIPv4(_addr:Addr):Bool {
	return !_isIPv4(_addr);
}

/**
	// filterAddrList applies a filter to a list of IP addresses,
	// yielding a list of Addr objects. Known filters are nil, ipv4only,
	// and ipv6only. It returns every address when the filter is nil.
	// The result contains at least one address when error is nil.
**/
function _filterAddrList(_filter:IPAddr->Bool, _ips:Slice<IPAddr>, _inetaddr:IPAddr->Addr, _originalAddr:GoString):{var _0:T_addrList; var _1:Error;} {
	var _addrs:T_addrList = new T_addrList();
	for (_ip in _ips) {
		if (_filter == null || _filter(_ip.__copy__())) {
			_addrs = _addrs.__append__(_inetaddr(_ip.__copy__())).__copy__();
		};
	};
	if (_addrs.__t__.length == ((0 : GoInt))) {
		return {_0: new T_addrList(), _1: Go.pointer((({err: _errNoSuitableAddress.error(), addr: _originalAddr} : AddrError))).value};
	};
	return {_0: _addrs.__copy__(), _1: ((null : stdgo.Error))};
}

/**
	// ipv4only reports whether addr is an IPv4 address.
**/
function _ipv4only(_addr:IPAddr):Bool {
	return _addr.ip.to4().__t__ != null && !_addr.ip.to4().__t__.isNil();
}

/**
	// ipv6only reports whether addr is an IPv6 address except IPv4-mapped IPv6 address.
**/
function _ipv6only(_addr:IPAddr):Bool {
	return _addr.ip.__t__.length == ipv6len && _addr.ip.to4().__t__ == null || _addr.ip.to4().__t__.isNil();
}

/**
	// SplitHostPort splits a network address of the form "host:port",
	// "host%zone:port", "[host]:port" or "[host%zone]:port" into host or
	// host%zone and port.
	//
	// A literal IPv6 address in hostport must be enclosed in square
	// brackets, as in "[::1]:80", "[::1%lo0]:80".
	//
	// See func Dial for a description of the hostport parameter, and host
	// and port results.
**/
function splitHostPort(_hostport:GoString):{var _0:GoString; var _1:GoString; var _2:Error;} {
	var _host:GoString = (("" : GoString)),
		_port:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	final _missingPort:GoString = "missing port in address", _tooManyColons:GoString = "too many colons in address";
	var _addrErr:(GoString, GoString) -> {
		var _0:GoString;
		var _1:GoString;
		var _2:stdgo.Error;
	} = function(_addr:GoString, _why:GoString):{var _0:GoString; var _1:GoString; var _2:Error;} {
		var _host:GoString = (("" : GoString)), _port:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
		return {_0: "", _1: "", _2: Go.pointer((({err: _why, addr: _addr} : AddrError))).value};
	};
	var _j:GoInt = ((0 : GoInt)), _k:GoInt = ((0 : GoInt));
	var _i:GoInt = _last(_hostport, ((":".code : GoRune)));
	if (_i < ((0 : GoInt))) {
		return _addrErr(_hostport, _missingPort);
	};
	if (_hostport[((0 : GoInt))] == (("[".code : GoRune))) {
		var _end:GoInt = internal.bytealg.Bytealg.indexByteString(_hostport, (("]".code : GoRune)));
		if (_end < ((0 : GoInt))) {
			return _addrErr(_hostport, "missing \']\' in address");
		};
		if (_end + ((1 : GoInt)) == _hostport.length) {
			return _addrErr(_hostport, _missingPort);
		} else if (_end + ((1 : GoInt)) == _i) {} else {
			if (_hostport[_end + ((1 : GoInt))] == ((":".code : GoRune))) {
				return _addrErr(_hostport, _tooManyColons);
			};
			return _addrErr(_hostport, _missingPort);
		};
		_host = _hostport.__slice__(((1 : GoInt)), _end);
		{
			final __tmp__0 = ((1 : GoInt));
			final __tmp__1 = _end + ((1 : GoInt));
			_j = __tmp__0;
			_k = __tmp__1;
		};
	} else {
		_host = _hostport.__slice__(0, _i);
		if (internal.bytealg.Bytealg.indexByteString(_host, ((":".code : GoRune))) >= ((0 : GoInt))) {
			return _addrErr(_hostport, _tooManyColons);
		};
	};
	if (internal.bytealg.Bytealg.indexByteString(_hostport.__slice__(_j), (("[".code : GoRune))) >= ((0 : GoInt))) {
		return _addrErr(_hostport, "unexpected \'[\' in address");
	};
	if (internal.bytealg.Bytealg.indexByteString(_hostport.__slice__(_k), (("]".code : GoRune))) >= ((0 : GoInt))) {
		return _addrErr(_hostport, "unexpected \']\' in address");
	};
	_port = _hostport.__slice__(_i + ((1 : GoInt)));
	return {_0: _host, _1: _port, _2: ((null : stdgo.Error))};
}

function _splitHostZone(_s:GoString):{var _0:GoString; var _1:GoString;} {
	var _host:GoString = (("" : GoString)), _zone:GoString = (("" : GoString));
	{
		var _i:GoInt = _last(_s, (("%".code : GoRune)));
		if (_i > ((0 : GoInt))) {
			{
				final __tmp__0 = _s.__slice__(0, _i);
				final __tmp__1 = _s.__slice__(_i + ((1 : GoInt)));
				_host = __tmp__0;
				_zone = __tmp__1;
			};
		} else {
			_host = _s;
		};
	};
	return {_0: _host, _1: _zone};
}

/**
	// JoinHostPort combines host and port into a network address of the
	// form "host:port". If host contains a colon, as found in literal
	// IPv6 addresses, then JoinHostPort returns "[host]:port".
	//
	// See func Dial for a description of the host and port parameters.
**/
function joinHostPort(_host:GoString, _port:GoString):GoString {
	if (internal.bytealg.Bytealg.indexByteString(_host, ((":".code : GoRune))) >= ((0 : GoInt))) {
		return (("[" : GoString)) + _host + (("]:" : GoString)) + _port;
	};
	return _host + ((":" : GoString)) + _port;
}

function _loopbackIP(_net:GoString):IP {
	if (_net != (("" : GoString)) && _net[_net.length - ((1 : GoInt))] == (("6".code : GoRune))) {
		return ipv6loopback.__copy__();
	};
	return new IP(new Slice<GoUInt8>(((127 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)))).__copy__();
}

/**
	// favoriteAddrFamily returns the appropriate address family for the
	// given network, laddr, raddr and mode.
	//
	// If mode indicates "listen" and laddr is a wildcard, we assume that
	// the user wants to make a passive-open connection with a wildcard
	// address family, both AF_INET and AF_INET6, and a wildcard address
	// like the following:
	//
	//	- A listen for a wildcard communication domain, "tcp" or
	//	  "udp", with a wildcard address: If the platform supports
	//	  both IPv6 and IPv4-mapped IPv6 communication capabilities,
	//	  or does not support IPv4, we use a dual stack, AF_INET6 and
	//	  IPV6_V6ONLY=0, wildcard address listen. The dual stack
	//	  wildcard address listen may fall back to an IPv6-only,
	//	  AF_INET6 and IPV6_V6ONLY=1, wildcard address listen.
	//	  Otherwise we prefer an IPv4-only, AF_INET, wildcard address
	//	  listen.
	//
	//	- A listen for a wildcard communication domain, "tcp" or
	//	  "udp", with an IPv4 wildcard address: same as above.
	//
	//	- A listen for a wildcard communication domain, "tcp" or
	//	  "udp", with an IPv6 wildcard address: same as above.
	//
	//	- A listen for an IPv4 communication domain, "tcp4" or "udp4",
	//	  with an IPv4 wildcard address: We use an IPv4-only, AF_INET,
	//	  wildcard address listen.
	//
	//	- A listen for an IPv6 communication domain, "tcp6" or "udp6",
	//	  with an IPv6 wildcard address: We use an IPv6-only, AF_INET6
	//	  and IPV6_V6ONLY=1, wildcard address listen.
	//
	// Otherwise guess: If the addresses are IPv4 then returns AF_INET,
	// or else returns AF_INET6. It also returns a boolean value what
	// designates IPV6_V6ONLY option.
	//
	// Note that the latest DragonFly BSD and OpenBSD kernels allow
	// neither "net.inet6.ip6.v6only=1" change nor IPPROTO_IPV6 level
	// IPV6_V6ONLY socket option setting.
**/
function _favoriteAddrFamily(_network:GoString, _laddr:T_sockaddr, _raddr:T_sockaddr, _mode:GoString):{var _0:GoInt; var _1:Bool;} {
	var _family:GoInt = ((0 : GoInt)), _ipv6only:Bool = false;
	if (_network[_network.length - ((1 : GoInt))] == (("4".code : GoRune))) {
		return {_0: stdgo.syscall.Syscall.af_INET, _1: false};
	} else if (_network[_network.length - ((1 : GoInt))] == (("6".code : GoRune))) {
		return {_0: stdgo.syscall.Syscall.af_INET6, _1: true};
	};
	if (_mode == (("listen" : GoString)) && (_laddr == null || _laddr._isWildcard())) {
		if (_supportsIPv4map() || !_supportsIPv4()) {
			return {_0: stdgo.syscall.Syscall.af_INET6, _1: false};
		};
		if (_laddr == null) {
			return {_0: stdgo.syscall.Syscall.af_INET, _1: false};
		};
		return {_0: _laddr._family(), _1: false};
	};
	if ((_laddr == null || _laddr._family() == stdgo.syscall.Syscall.af_INET)
		&& (_raddr == null || _raddr._family() == stdgo.syscall.Syscall.af_INET)) {
		return {_0: stdgo.syscall.Syscall.af_INET, _1: false};
	};
	return {_0: stdgo.syscall.Syscall.af_INET6, _1: false};
}

function _internetSocket(_ctx:stdgo.context.Context.Context, _net:GoString, _laddr:T_sockaddr, _raddr:T_sockaddr, _sotype:GoInt, _proto:GoInt, _mode:GoString,
		_ctrlFn:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> Error):{var _0:Pointer<T_netFD>; var _1:Error;
} {
	var _fd:Pointer<T_netFD> = new Pointer<T_netFD>().nil(),
		_err:Error = ((null : stdgo.Error));
	if ((stdgo.runtime.Runtime.goos == (("aix" : GoString))
		|| stdgo.runtime.Runtime.goos == (("windows" : GoString))
		|| stdgo.runtime.Runtime.goos == (("openbsd" : GoString)))
		&& _mode == (("dial" : GoString))
		&& _raddr._isWildcard()) {
		_raddr = _raddr._toLocal(_net);
	};
	var __tmp__ = _favoriteAddrFamily(_net, _laddr, _raddr, _mode),
		_family:GoInt = __tmp__._0,
		_ipv6only:Bool = __tmp__._1;
	return _socket(_ctx, _net, _family, _sotype, _proto, _ipv6only, _laddr, _raddr, _ctrlFn);
}

function _ipToSockaddr(_family:GoInt, _ip:IP, _port:GoInt, _zone:GoString):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;} {
	if (_family == stdgo.syscall.Syscall.af_INET) {
		if (_ip.__t__.length == ((0 : GoInt))) {
			_ip = ipv4zero.__copy__();
		};
		var _ip4:IP = _ip.to4().__copy__();
		if (_ip4.__t__ == null || _ip4.__t__.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: Go.pointer((({err: "non-IPv4 address", addr: _ip.toString()} : AddrError))).value};
		};
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = Go.pointer((({port: _port,
			addr: new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))])} : stdgo.syscall.Syscall.SockaddrInet4)));
		Go.copy(_sa.value.addr.__slice__(0), _ip4);
		return {_0: Go.toInterface(_sa), _1: ((null : stdgo.Error))};
	} else if (_family == stdgo.syscall.Syscall.af_INET6) {
		if (_ip.__t__.length == ((0 : GoInt)) || _ip.equal(ipv4zero.__copy__())) {
			_ip = ipv6zero.__copy__();
		};
		var _ip6:IP = _ip.to16().__copy__();
		if (_ip6.__t__ == null || _ip6.__t__.isNil()) {
			return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: Go.pointer((({err: "non-IPv6 address", addr: _ip.toString()} : AddrError))).value};
		};
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = Go.pointer((({port: _port, zoneId: ((_zoneCache._index(_zone) : GoUInt32)),
			addr: new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))])} : stdgo.syscall.Syscall.SockaddrInet6)));
		Go.copy(_sa.value.addr.__slice__(0), _ip6);
		return {_0: Go.toInterface(_sa), _1: ((null : stdgo.Error))};
	};
	return {_0: ((null : stdgo.syscall.Syscall.Sockaddr)), _1: Go.pointer((({err: "invalid address family", addr: _ip.toString()} : AddrError))).value};
}

function _lookupProtocolMap(_name:GoString):{var _0:GoInt; var _1:Error;} {
	var _lowerProtocol:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...25) ((0 : GoUInt8))]);
	var _n:GoInt = Go.copy(_lowerProtocol.__slice__(0), _name);
	_lowerASCIIBytes(_lowerProtocol.__slice__(0, _n));
	var __tmp__ = _protocols.exists(((_lowerProtocol.__slice__(0,
		_n) : GoString))) ? {value: _protocols[((_lowerProtocol.__slice__(0, _n) : GoString))], ok: true} : {value: _protocols.defaultValue(), ok: false},
		_proto:GoInt = __tmp__.value,
		_found:Bool = __tmp__.ok;
	if (!_found || _n != _name.length) {
		return {_0: ((0 : GoInt)), _1: Go.pointer((({err: "unknown IP protocol specified", addr: _name} : AddrError))).value};
	};
	return {_0: _proto, _1: ((null : stdgo.Error))};
}

function _lookupPortMap(_network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;} {
	var _port:GoInt = ((0 : GoInt)), _error:Error = ((null : stdgo.Error));
	if (_network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))) {
		_network = "tcp";
	} else if (_network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {
		_network = "udp";
	};
	{
		var __tmp__ = _services.exists(_network) ? {value: _services[_network], ok: true} : {value: _services.defaultValue(), ok: false},
			_m:GoMap<GoString, GoInt> = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		if (_ok) {
			var _lowerService:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...25) ((0 : GoUInt8))]);
			var _n:GoInt = Go.copy(_lowerService.__slice__(0), _service);
			_lowerASCIIBytes(_lowerService.__slice__(0, _n));
			{
				var __tmp__ = _m.exists(((_lowerService.__slice__(0,
					_n) : GoString))) ? {value: _m[((_lowerService.__slice__(0, _n) : GoString))], ok: true} : {value: _m.defaultValue(), ok: false},
					_port:GoInt = __tmp__.value,
					_ok:Bool = __tmp__.ok;
				if (_ok && _n == _service.length) {
					return {_0: _port, _1: ((null : stdgo.Error))};
				};
			};
		};
	};
	return {_0: ((0 : GoInt)), _1: Go.pointer((({err: "unknown port", addr: _network + (("/" : GoString)) + _service} : AddrError))).value};
}

/**
	// ipVersion returns the provided network's IP version: '4', '6' or 0
	// if network does not end in a '4' or '6' byte.
**/
function _ipVersion(_network:GoString):GoByte {
	if (_network == (("" : GoString))) {
		return ((0 : GoUInt8));
	};
	var _n:GoUInt8 = _network[_network.length - ((1 : GoInt))];
	if (_n != (("4".code : GoRune)) && _n != (("6".code : GoRune))) {
		_n = ((0 : GoUInt8));
	};
	return _n;
}

/**
	// LookupHost looks up the given host using the local resolver.
	// It returns a slice of that host's addresses.
	//
	// LookupHost uses context.Background internally; to specify the context, use
	// Resolver.LookupHost.
**/
function lookupHost(_host:GoString):{var _0:Slice<GoString>; var _1:Error;} {
	var _addrs:Slice<GoString> = new Slice<GoString>().nil(),
		_err:Error = ((null : stdgo.Error));
	return defaultResolver.value.lookupHost(stdgo.context.Context.background(), _host);
}

/**
	// LookupIP looks up host using the local resolver.
	// It returns a slice of that host's IPv4 and IPv6 addresses.
**/
function lookupIP(_host:GoString):{var _0:Slice<IP>; var _1:Error;} {
	var __tmp__ = defaultResolver.value.lookupIPAddr(stdgo.context.Context.background(), _host),
		_addrs:Slice<IPAddr> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Slice<IP>().nil(), _1: _err};
	};
	var _ips:Slice<IP> = new Slice<IP>(...[for (i in 0...((_addrs.length : GoInt)).toBasic()) new IP()]);
	{
		var _i;
		var _ia;
		for (_obj in _addrs.keyValueIterator()) {
			_i = _obj.key;
			_ia = _obj.value;
			_ips[_i] = _ia.ip.__copy__();
		};
	};
	return {_0: _ips, _1: ((null : stdgo.Error))};
}

/**
	// withUnexpiredValuesPreserved returns a context.Context that only uses lookupCtx
	// for its values, otherwise it is never canceled and has no deadline.
	// If the lookup context expires, any looked up values will return nil.
	// See Issue 28600.
**/
function _withUnexpiredValuesPreserved(_lookupCtx:stdgo.context.Context.Context):stdgo.context.Context.Context {
	return Go.pointer((({context: stdgo.context.Context.background(), _lookupValues: _lookupCtx} : T_onlyValuesCtx))).value;
}

/**
	// lookupIPReturn turns the return values from singleflight.Do into
	// the return values from LookupIP.
**/
function _lookupIPReturn(_addrsi:AnyInterface, _err:Error, _shared:Bool):{var _0:Slice<IPAddr>; var _1:Error;} {
	if (_err != null) {
		return {_0: new Slice<IPAddr>().nil(), _1: _err};
	};
	var _addrs:Slice<IPAddr> = ((_addrsi.value : Slice<IPAddr>));
	if (_shared) {
		var _clone:Slice<IPAddr> = new Slice<IPAddr>(...[for (i in 0...((_addrs.length : GoInt)).toBasic()) new IPAddr()]);
		Go.copy(_clone, _addrs);
		_addrs = _clone;
	};
	return {_0: _addrs, _1: ((null : stdgo.Error))};
}

/**
	// ipAddrsEface returns an empty interface slice of addrs.
**/
function _ipAddrsEface(_addrs:Slice<IPAddr>):Slice<AnyInterface> {
	var _s:Slice<AnyInterface> = new Slice<AnyInterface>(...[for (i in 0...((_addrs.length : GoInt)).toBasic()) ((null : AnyInterface))]);
	{
		var _i;
		var _v;
		for (_obj in _addrs.keyValueIterator()) {
			_i = _obj.key;
			_v = _obj.value;
			_s[_i] = Go.toInterface(_v.__copy__());
		};
	};
	return _s;
}

/**
	// LookupPort looks up the port for the given network and service.
	//
	// LookupPort uses context.Background internally; to specify the context, use
	// Resolver.LookupPort.
**/
function lookupPort(_network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;} {
	var _port:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return defaultResolver.value.lookupPort(stdgo.context.Context.background(), _network, _service);
}

/**
	// LookupCNAME returns the canonical name for the given host.
	// Callers that do not care about the canonical name can call
	// LookupHost or LookupIP directly; both take care of resolving
	// the canonical name as part of the lookup.
	//
	// A canonical name is the final name after following zero
	// or more CNAME records.
	// LookupCNAME does not return an error if host does not
	// contain DNS "CNAME" records, as long as host resolves to
	// address records.
	//
	// The returned canonical name is validated to be a properly
	// formatted presentation-format domain name.
	//
	// LookupCNAME uses context.Background internally; to specify the context, use
	// Resolver.LookupCNAME.
**/
function lookupCNAME(_host:GoString):{var _0:GoString; var _1:Error;} {
	var _cname:GoString = (("" : GoString)),
		_err:Error = ((null : stdgo.Error));
	return defaultResolver.value.lookupCNAME(stdgo.context.Context.background(), _host);
}

/**
	// LookupSRV tries to resolve an SRV query of the given service,
	// protocol, and domain name. The proto is "tcp" or "udp".
	// The returned records are sorted by priority and randomized
	// by weight within a priority.
	//
	// LookupSRV constructs the DNS name to look up following RFC 2782.
	// That is, it looks up _service._proto.name. To accommodate services
	// publishing SRV records under non-standard names, if both service
	// and proto are empty strings, LookupSRV looks up name directly.
	//
	// The returned service names are validated to be properly
	// formatted presentation-format domain names. If the response contains
	// invalid names, those records are filtered out and an error
	// will be returned alongside the the remaining results, if any.
**/
function lookupSRV(_service:GoString, _proto:GoString, _name:GoString):{var _0:GoString; var _1:Slice<Pointer<SRV>>; var _2:Error;} {
	var _cname:GoString = (("" : GoString)),
		_addrs:Slice<Pointer<SRV>> = new Slice<Pointer<SRV>>().nil(),
		_err:Error = ((null : stdgo.Error));
	return defaultResolver.value.lookupSRV(stdgo.context.Context.background(), _service, _proto, _name);
}

/**
	// LookupMX returns the DNS MX records for the given domain name sorted by preference.
	//
	// The returned mail server names are validated to be properly
	// formatted presentation-format domain names. If the response contains
	// invalid names, those records are filtered out and an error
	// will be returned alongside the the remaining results, if any.
	//
	// LookupMX uses context.Background internally; to specify the context, use
	// Resolver.LookupMX.
**/
function lookupMX(_name:GoString):{var _0:Slice<Pointer<MX>>; var _1:Error;} {
	return defaultResolver.value.lookupMX(stdgo.context.Context.background(), _name);
}

/**
	// LookupNS returns the DNS NS records for the given domain name.
	//
	// The returned name server names are validated to be properly
	// formatted presentation-format domain names. If the response contains
	// invalid names, those records are filtered out and an error
	// will be returned alongside the the remaining results, if any.
	//
	// LookupNS uses context.Background internally; to specify the context, use
	// Resolver.LookupNS.
**/
function lookupNS(_name:GoString):{var _0:Slice<Pointer<NS>>; var _1:Error;} {
	return defaultResolver.value.lookupNS(stdgo.context.Context.background(), _name);
}

/**
	// LookupTXT returns the DNS TXT records for the given domain name.
	//
	// LookupTXT uses context.Background internally; to specify the context, use
	// Resolver.LookupTXT.
**/
function lookupTXT(_name:GoString):{var _0:Slice<GoString>; var _1:Error;} {
	return defaultResolver.value._lookupTXT(stdgo.context.Context.background(), _name);
}

/**
	// LookupAddr performs a reverse lookup for the given address, returning a list
	// of names mapping to that address.
	//
	// The returned names are validated to be properly formatted presentation-format
	// domain names. If the response contains invalid names, those records are filtered
	// out and an error will be returned alongside the the remaining results, if any.
	//
	// When using the host C library resolver, at most one result will be
	// returned. To bypass the host resolver, use a custom Resolver.
	//
	// LookupAddr uses context.Background internally; to specify the context, use
	// Resolver.LookupAddr.
**/
function lookupAddr(_addr:GoString):{var _0:Slice<GoString>; var _1:Error;} {
	var _names:Slice<GoString> = new Slice<GoString>().nil(),
		_err:Error = ((null : stdgo.Error));
	return defaultResolver.value.lookupAddr(stdgo.context.Context.background(), _addr);
}

function _lookupProtocol(_ctx:stdgo.context.Context.Context, _name:GoString):{var _0:GoInt; var _1:Error;} {
	var _proto:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return _lookupProtocolMap(_name);
}

/**
	// concurrentThreadsLimit returns the number of threads we permit to
	// run concurrently doing DNS lookups.
**/
function _concurrentThreadsLimit():GoInt {
	return ((500 : GoInt));
}

/**
	// ParseMAC parses s as an IEEE 802 MAC-48, EUI-48, EUI-64, or a 20-octet
	// IP over InfiniBand link-layer address using one of the following formats:
	//	00:00:5e:00:53:01
	//	02:00:5e:10:00:00:00:01
	//	00:00:00:00:fe:80:00:00:00:00:00:00:02:00:5e:10:00:00:00:01
	//	00-00-5e-00-53-01
	//	02-00-5e-10-00-00-00-01
	//	00-00-00-00-fe-80-00-00-00-00-00-00-02-00-5e-10-00-00-00-01
	//	0000.5e00.5301
	//	0200.5e10.0000.0001
	//	0000.0000.fe80.0000.0000.0000.0200.5e10.0000.0001
**/
function parseMAC(_s:GoString):{var _0:HardwareAddr; var _1:Error;} {
	return stdgo.internal.Macro.controlFlow({
		var _hw:HardwareAddr = new HardwareAddr(),
			_err:Error = ((null : stdgo.Error));
		if (_s.length < ((14 : GoInt))) {
			@:goto "error";
		};
		if (_s[((2 : GoInt))] == ((":".code : GoRune)) || _s[((2 : GoInt))] == (("-".code : GoRune))) {
			if ((_s.length + ((1 : GoInt))) % ((3 : GoInt)) != ((0 : GoInt))) {
				@:goto "error";
			};
			var _n:GoInt = (_s.length + ((1 : GoInt))) / ((3 : GoInt));
			if (_n != ((6 : GoInt)) && _n != ((8 : GoInt)) && _n != ((20 : GoInt))) {
				@:goto "error";
			};
			_hw = new HardwareAddr(new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
			{
				var _x:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _n, _i++, {
					var _ok:Bool = false;
					{
						{
							var __tmp__ = _xtoi2(_s.__slice__(_x), _s[((2 : GoInt))]);
							_hw.__t__[_i] = __tmp__._0;
							_ok = __tmp__._1;
						};
						if (!_ok) {
							@:goto "error";
						};
					};
					_x = _x + (((3 : GoInt)));
				});
			};
		} else if (_s[((4 : GoInt))] == ((".".code : GoRune))) {
			if ((_s.length + ((1 : GoInt))) % ((5 : GoInt)) != ((0 : GoInt))) {
				@:goto "error";
			};
			var _n:GoInt = ((2 : GoInt)) * (_s.length + ((1 : GoInt))) / ((5 : GoInt));
			if (_n != ((6 : GoInt)) && _n != ((8 : GoInt)) && _n != ((20 : GoInt))) {
				@:goto "error";
			};
			_hw = new HardwareAddr(new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))])).__copy__();
			{
				var _x:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _n, _i = _i + (((2 : GoInt))), {
					var _ok:Bool = false;
					{
						{
							var __tmp__ = _xtoi2(_s.__slice__(_x, _x + ((2 : GoInt))), ((0 : GoUInt8)));
							_hw.__t__[_i] = __tmp__._0;
							_ok = __tmp__._1;
						};
						if (!_ok) {
							@:goto "error";
						};
					};
					{
						{
							var __tmp__ = _xtoi2(_s.__slice__(_x + ((2 : GoInt))), _s[((4 : GoInt))]);
							_hw.__t__[_i + ((1 : GoInt))] = __tmp__._0;
							_ok = __tmp__._1;
						};
						if (!_ok) {
							@:goto "error";
						};
					};
					_x = _x + (((5 : GoInt)));
				});
			};
		} else {
			@:goto "error";
		};
		return {_0: _hw.__copy__(), _1: ((null : stdgo.Error))};
		@:label("error") return {_0: new HardwareAddr(), _1: Go.pointer((({err: "invalid MAC address", addr: _s} : AddrError))).value};
	});
}

/**
	// listenerBacklog is a caching wrapper around maxListenerBacklog.
**/
function _listenerBacklog():GoInt {
	_listenerBacklogCache.do_(function():Void {
		_listenerBacklogCache._val = _maxListenerBacklog();
	});
	return _listenerBacklogCache._val;
}

/**
	// mapErr maps from the context errors to the historical internal net
	// error values.
	//
	// TODO(bradfitz): get rid of this after adjusting tests and making
	// context.DeadlineExceeded implement net.Error?
**/
function _mapErr(_err:Error):Error {
	if (Go.toInterface(_err) == Go.toInterface(stdgo.context.Context.canceled)) {
		return _errCanceled;
	} else if (Go.toInterface(_err) == Go.toInterface(stdgo.context.Context.deadlineExceeded)) {
		return _errTimeout;
	} else {
		return _err;
	};
}

/**
	// Fallback implementation of io.ReaderFrom's ReadFrom, when sendfile isn't
	// applicable.
**/
function _genericReadFrom(_w:stdgo.io.Io.Writer, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;} {
	var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
	return stdgo.io.Io.copy(new T_writerOnly(_w).__copy__(), _r);
}

function _acquireThread():Void {
	_threadOnce.do_(function():Void {
		_threadLimit = new Chan<T_timeoutError>(((_concurrentThreadsLimit() : GoInt)).toBasic(), () -> new T_timeoutError());
	});
	_threadLimit.send(new T_timeoutError());
}

function _releaseThread():Void {
	_threadLimit.get();
}

function _nextPort():GoInt {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_portCounterMu.lock();
	try {
		deferstack.unshift(() -> _portCounterMu.unlock());
		_portCounter++;
		{
			for (defer in deferstack) {
				defer();
			};
			return _portCounter;
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

/**
	// socket returns a network file descriptor that is ready for
	// asynchronous I/O using the network poller.
**/
function _socket(_ctx:stdgo.context.Context.Context, _net:GoString, _family:GoInt, _sotype:GoInt, _proto:GoInt, _ipv6only:Bool, _laddr:T_sockaddr,
		_raddr:T_sockaddr, _ctrlFn:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> Error):{var _0:Pointer<T_netFD>; var _1:Error;
} {
	var _fd:Pointer<T_netFD> = Go.pointer((({
		_family: _family,
		_sotype: _sotype,
		_net: _net,
		_r: new Pointer<T_bufferedPipe>().nil(),
		_w: new Pointer<T_bufferedPipe>().nil(),
		_incoming: new Chan<Pointer<T_netFD>>(0, () -> new Pointer<T_netFD>().nil(), true),
		_closedMu: new stdgo.sync.Sync.Mutex(),
		_closed: false,
		_listener: false,
		_laddr: ((null : Addr)),
		_raddr: ((null : Addr)),
		_pfd: new internal.poll.Poll.FD(),
		_isConnected: false
	} : T_netFD)));
	if (_laddr != null && _raddr == null) {
		var _l:Pointer<TCPAddr> = ((_laddr.__underlying__().value : TCPAddr));
		_fd.value._laddr = Go.pointer((({ip: _l.value.ip.__copy__(), port: _nextPort(), zone: _l.value.zone} : TCPAddr))).value;
		_fd.value._listener = true;
		_fd.value._incoming = new Chan<Pointer<T_netFD>>(((((1024 : GoInt)) : GoInt)).toBasic(), () -> new Pointer<T_netFD>().nil());
		_listenersMu.lock();
		_listeners[((_fd.value._laddr.__underlying__().value : TCPAddr)).value.toString()] = _fd;
		_listenersMu.unlock();
		return {_0: _fd, _1: ((null : stdgo.Error))};
	};
	_fd.value._laddr = Go.pointer((({ip: ipv4(((127 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
		((1 : GoUInt8))).__copy__(), port: _nextPort(), zone: ""} : TCPAddr)))
		.value;
	_fd.value._raddr = _raddr;
	_fd.value._r = _newBufferedPipe(((65536 : GoInt)));
	_fd.value._w = _newBufferedPipe(((65536 : GoInt)));
	var _fd2:Pointer<T_netFD> = Go.pointer((({
		_family: _fd.value._family,
		_sotype: _sotype,
		_net: _net,
		_r: new Pointer<T_bufferedPipe>().nil(),
		_w: new Pointer<T_bufferedPipe>().nil(),
		_incoming: new Chan<Pointer<T_netFD>>(0, () -> new Pointer<T_netFD>().nil(), true),
		_closedMu: new stdgo.sync.Sync.Mutex(),
		_closed: false,
		_listener: false,
		_laddr: ((null : Addr)),
		_raddr: ((null : Addr)),
		_pfd: new internal.poll.Poll.FD(),
		_isConnected: false
	} : T_netFD)));
	_fd2.value._laddr = _fd.value._raddr;
	_fd2.value._raddr = _fd.value._laddr;
	_fd2.value._r = _fd.value._w;
	_fd2.value._w = _fd.value._r;
	_listenersMu.lock();
	var __tmp__ = _listeners.exists(((_fd.value._raddr.__underlying__()
		.value : TCPAddr)).value.toString()) ? {value: _listeners[((_fd.value._raddr.__underlying__()
			.value : TCPAddr)).value.toString()], ok: true} : {value: _listeners.defaultValue(), ok: false},
		_l:Pointer<T_netFD> = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	if (!_ok) {
		_listenersMu.unlock();
		return {_0: new Pointer<T_netFD>().nil(), _1: stdgo.syscall.Syscall.econnrefused};
	};
	_l.value._incoming.send(_fd2);
	_listenersMu.unlock();
	return {_0: _fd, _1: ((null : stdgo.Error))};
}

function _newBufferedPipe(_softLimit:GoInt):Pointer<T_bufferedPipe> {
	var _p:Pointer<T_bufferedPipe> = Go.pointer((({
		_softLimit: _softLimit,
		_mu: new stdgo.sync.Sync.Mutex(),
		_buf: new Slice<GoUInt8>().nil(),
		_closed: false,
		_rCond: new stdgo.sync.Sync.Cond(),
		_wCond: new stdgo.sync.Sync.Cond(),
		_rDeadline: new stdgo.time.Time.Time(),
		_wDeadline: new stdgo.time.Time.Time()
	} : T_bufferedPipe)));
	_p.value._rCond.l = Go.pointer(_p.value._mu).value;
	_p.value._wCond.l = Go.pointer(_p.value._mu).value;
	return _p;
}

function _sysSocket(_family:GoInt, _sotype:GoInt, _proto:GoInt):{var _0:GoInt; var _1:Error;} {
	return {_0: ((0 : GoInt)), _1: stdgo.syscall.Syscall.enosys};
}

function _open(_name:GoString):{var _0:Pointer<T_file>; var _1:Error;} {
	var __tmp__ = stdgo.os.Os.open(_name),
		_fd:Pointer<stdgo.os.Os.File> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<T_file>().nil(), _1: _err};
	};
	return {_0: Go.pointer(new T_file(_fd,
		new Slice<GoUInt8>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])
			.setCap(((((64 : GoUnTypedInt)) * ((1024 : GoUnTypedInt)) : GoInt)).toBasic()),
		false)), _1: ((null : stdgo.Error))};
}

function _stat(_name:GoString):{var _0:stdgo.time.Time.Time; var _1:GoInt64; var _2:Error;} {
	var _mtime:stdgo.time.Time.Time = new stdgo.time.Time.Time(),
		_size:GoInt64 = ((0 : GoInt64)),
		_err:Error = ((null : stdgo.Error));
	var __tmp__ = stdgo.os.Os.stat(_name),
		_st:io.fs.Fs.FileInfo = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new stdgo.time.Time.Time().__copy__(), _1: ((0 : GoInt64)), _2: _err};
	};
	return {_0: _st.modTime().__copy__(), _1: _st.size(), _2: ((null : stdgo.Error))};
}

/**
	// Count occurrences in s of any bytes in t.
**/
function _countAnyByte(_s:GoString, _t:GoString):GoInt {
	var _n:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (internal.bytealg.Bytealg.indexByteString(_t, _s[_i]) >= ((0 : GoInt))) {
				_n++;
			};
		});
	};
	return _n;
}

/**
	// Split s at any bytes in t.
**/
function _splitAtBytes(_s:GoString, _t:GoString):Slice<GoString> {
	var _a:Slice<GoString> = new Slice<GoString>(...[
		for (i in 0...((((1 : GoInt)) + _countAnyByte(_s, _t) : GoInt)).toBasic()) (("" : GoString))
	]);
	var _n:GoInt = ((0 : GoInt));
	var _last:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (internal.bytealg.Bytealg.indexByteString(_t, _s[_i]) >= ((0 : GoInt))) {
				if (_last < _i) {
					_a[_n] = _s.__slice__(_last, _i);
					_n++;
				};
				_last = _i + ((1 : GoInt));
			};
		});
	};
	if (_last < _s.length) {
		_a[_n] = _s.__slice__(_last);
		_n++;
	};
	return _a.__slice__(((0 : GoInt)), _n);
}

function _getFields(_s:GoString):Slice<GoString> {
	return _splitAtBytes(_s, " \r\t\n");
}

/**
	// Decimal to integer.
	// Returns number, characters consumed, success.
**/
function _dtoi(_s:GoString):{var _0:GoInt; var _1:GoInt; var _2:Bool;} {
	var _n:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt)), _ok:Bool = false;
	_n = ((0 : GoInt));
	{
		_i = ((0 : GoInt));
		Go.cfor(_i < _s.length && (("0".code : GoRune)) <= _s[_i] && _s[_i] <= (("9".code : GoRune)), _i++, {
			_n = _n * ((10 : GoInt)) + (((_s[_i] - (("0".code : GoRune))) : GoInt));
			if (_n >= _big) {
				return {_0: _big, _1: _i, _2: false};
			};
		});
	};
	if (_i == ((0 : GoInt))) {
		return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: false};
	};
	return {_0: _n, _1: _i, _2: true};
}

/**
	// Hexadecimal to integer.
	// Returns number, characters consumed, success.
**/
function _xtoi(_s:GoString):{var _0:GoInt; var _1:GoInt; var _2:Bool;} {
	var _n:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt)), _ok:Bool = false;
	_n = ((0 : GoInt));
	{
		_i = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if ((("0".code : GoRune)) <= _s[_i] && _s[_i] <= (("9".code : GoRune))) {
				_n = _n * (((16 : GoInt)));
				_n = _n + ((((_s[_i] - (("0".code : GoRune))) : GoInt)));
			} else if ((("a".code : GoRune)) <= _s[_i] && _s[_i] <= (("f".code : GoRune))) {
				_n = _n * (((16 : GoInt)));
				_n = _n + ((((_s[_i] - (("a".code : GoRune))) : GoInt)) + ((10 : GoInt)));
			} else if ((("A".code : GoRune)) <= _s[_i] && _s[_i] <= (("F".code : GoRune))) {
				_n = _n * (((16 : GoInt)));
				_n = _n + ((((_s[_i] - (("A".code : GoRune))) : GoInt)) + ((10 : GoInt)));
			} else {
				break;
			};
			if (_n >= _big) {
				return {_0: ((0 : GoInt)), _1: _i, _2: false};
			};
		});
	};
	if (_i == ((0 : GoInt))) {
		return {_0: ((0 : GoInt)), _1: _i, _2: false};
	};
	return {_0: _n, _1: _i, _2: true};
}

/**
	// xtoi2 converts the next two hex digits of s into a byte.
	// If s is longer than 2 bytes then the third byte must be e.
	// If the first two bytes of s are not hex digits or the third byte
	// does not match e, false is returned.
**/
function _xtoi2(_s:GoString, _e:GoByte):{var _0:GoByte; var _1:Bool;} {
	if (_s.length > ((2 : GoInt)) && _s[((2 : GoInt))] != _e) {
		return {_0: ((0 : GoUInt8)), _1: false};
	};
	var __tmp__ = _xtoi(_s.__slice__(0, ((2 : GoInt)))),
		_n:GoInt = __tmp__._0,
		_ei:GoInt = __tmp__._1,
		_ok:Bool = __tmp__._2;
	return {_0: ((_n : GoByte)), _1: _ok && _ei == ((2 : GoInt))};
}

/**
	// Convert i to a hexadecimal string. Leading zeros are not printed.
**/
function _appendHex(_dst:Slice<GoByte>, _i:GoUInt32):Slice<GoByte> {
	if (_i == ((0 : GoUInt32))) {
		return _dst.__append__((("0".code : GoRune)));
	};
	{
		var _j:GoInt = ((7 : GoInt));
		Go.cfor(_j >= ((0 : GoInt)), _j--, {
			var _v:GoUInt32 = (_i >> (((_j * ((4 : GoInt))) : GoUInt)));
			if (_v > ((0 : GoUInt32))) {
				_dst = _dst.__append__(_hexDigit[_v & ((15 : GoUInt32))]);
			};
		});
	};
	return _dst;
}

/**
	// Number of occurrences of b in s.
**/
function _count(_s:GoString, _b:GoByte):GoInt {
	var _n:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == _b) {
				_n++;
			};
		});
	};
	return _n;
}

/**
	// Index of rightmost occurrence of b in s.
**/
function _last(_s:GoString, _b:GoByte):GoInt {
	var _i:GoInt = _s.length;
	{
		_i--;
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			if (_s[_i] == _b) {
				break;
			};
		});
	};
	return _i;
}

/**
	// lowerASCIIBytes makes x ASCII lowercase in-place.
**/
function _lowerASCIIBytes(_x:Slice<GoByte>):Void {
	{
		var _i;
		var _b;
		for (_obj in _x.keyValueIterator()) {
			_i = _obj.key;
			_b = _obj.value;
			if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune))) {
				_x[_i] = _x[_i] + ((("a".code : GoRune)) - (("A".code : GoRune)));
			};
		};
	};
}

/**
	// lowerASCII returns the ASCII lowercase version of b.
**/
function _lowerASCII(_b:GoByte):GoByte {
	if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune))) {
		return _b + ((("a".code : GoRune)) - (("A".code : GoRune)));
	};
	return _b;
}

/**
	// trimSpace returns x without any leading or trailing ASCII whitespace.
**/
function _trimSpace(_x:Slice<GoByte>):Slice<GoByte> {
	while (_x.length > ((0 : GoInt)) && _isSpace(_x[((0 : GoInt))])) {
		_x = _x.__slice__(((1 : GoInt)));
	};
	while (_x.length > ((0 : GoInt)) && _isSpace(_x[_x.length - ((1 : GoInt))])) {
		_x = _x.__slice__(0, _x.length - ((1 : GoInt)));
	};
	return _x;
}

/**
	// isSpace reports whether b is an ASCII space character.
**/
function _isSpace(_b:GoByte):Bool {
	return _b == ((" ".code : GoRune))
		|| _b == (("\t".code : GoRune))
		|| _b == (("\n".code : GoRune))
		|| _b == (("\r".code : GoRune));
}

/**
	// removeComment returns line, removing any '#' byte and any following
	// bytes.
**/
function _removeComment(_line:Slice<GoByte>):Slice<GoByte> {
	{
		var _i:GoInt = internal.bytealg.Bytealg.indexByte(_line, (("#".code : GoRune)));
		if (_i != -((1 : GoUnTypedInt))) {
			return _line.__slice__(0, _i);
		};
	};
	return _line;
}

/**
	// foreachLine runs fn on each line of x.
	// Each line (except for possibly the last) ends in '\n'.
	// It returns the first non-nil error returned by fn.
**/
function _foreachLine(_x:Slice<GoByte>, _fn:(_line:Slice<GoByte>) -> Error):Error {
	while (_x.length > ((0 : GoInt))) {
		var _nl:GoInt = internal.bytealg.Bytealg.indexByte(_x, (("\n".code : GoRune)));
		if (_nl == -((1 : GoUnTypedInt))) {
			return _fn(_x);
		};
		var _line:Slice<GoUInt8> = _x.__slice__(0, _nl + ((1 : GoInt)));
		_x = _x.__slice__(_nl + ((1 : GoInt)));
		{
			var _err:stdgo.Error = _fn(_line);
			if (_err != null) {
				return _err;
			};
		};
	};
	return ((null : stdgo.Error));
}

/**
	// foreachField runs fn on each non-empty run of non-space bytes in x.
	// It returns the first non-nil error returned by fn.
**/
function _foreachField(_x:Slice<GoByte>, _fn:(_field:Slice<GoByte>) -> Error):Error {
	_x = _trimSpace(_x);
	while (_x.length > ((0 : GoInt))) {
		var _sp:GoInt = internal.bytealg.Bytealg.indexByte(_x, ((" ".code : GoRune)));
		if (_sp == -((1 : GoUnTypedInt))) {
			return _fn(_x);
		};
		{
			var _field:Slice<GoUInt8> = _trimSpace(_x.__slice__(0, _sp));
			if (_field.length > ((0 : GoInt))) {
				{
					var _err:stdgo.Error = _fn(_field);
					if (_err != null) {
						return _err;
					};
				};
			};
		};
		_x = _trimSpace(_x.__slice__(_sp + ((1 : GoInt))));
	};
	return ((null : stdgo.Error));
}

/**
	// stringsHasSuffix is strings.HasSuffix. It reports whether s ends in
	// suffix.
**/
function _stringsHasSuffix(_s:GoString, _suffix:GoString):Bool {
	return _s.length >= _suffix.length && _s.__slice__(_s.length - _suffix.length) == _suffix;
}

/**
	// stringsHasSuffixFold reports whether s ends in suffix,
	// ASCII-case-insensitively.
**/
function _stringsHasSuffixFold(_s:GoString, _suffix:GoString):Bool {
	return _s.length >= _suffix.length && _stringsEqualFold(_s.__slice__(_s.length - _suffix.length), _suffix);
}

/**
	// stringsHasPrefix is strings.HasPrefix. It reports whether s begins with prefix.
**/
function _stringsHasPrefix(_s:GoString, _prefix:GoString):Bool {
	return _s.length >= _prefix.length && _s.__slice__(0, _prefix.length) == _prefix;
}

/**
	// stringsEqualFold is strings.EqualFold, ASCII only. It reports whether s and t
	// are equal, ASCII-case-insensitively.
**/
function _stringsEqualFold(_s:GoString, _t:GoString):Bool {
	if (_s.length != _t.length) {
		return false;
	};
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_lowerASCII(_s[_i]) != _lowerASCII(_t[_i])) {
				return false;
			};
		});
	};
	return true;
}

function _readFull(_r:stdgo.io.Io.Reader):{var _0:Slice<GoByte>; var _1:Error;} {
	var _all:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_err:Error = ((null : stdgo.Error));
	var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
	while (true) {
		var __tmp__ = _r.read(_buf),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_all = _all.__append__(..._buf.__slice__(0, _n).toArray());
		if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
			return {_0: _all, _1: ((null : stdgo.Error))};
		};
		if (_err != null) {
			return {_0: new Slice<GoUInt8>().nil(), _1: _err};
		};
	};
}

/**
	// goDebugString returns the value of the named GODEBUG key.
	// GODEBUG is of the form "key=val,key2=val2"
**/
function _goDebugString(_key:GoString):GoString {
	var _s:GoString = stdgo.os.Os.getenv("GODEBUG");
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length - _key.length - ((1 : GoInt)), _i++, {
			if (_i > ((0 : GoInt)) && _s[_i - ((1 : GoInt))] != ((",".code : GoRune))) {
				continue;
			};
			var _afterKey:GoString = _s.__slice__(_i + _key.length);
			if (_afterKey[((0 : GoInt))] != (("=".code : GoRune)) || _s.__slice__(_i, _i + _key.length) != _key) {
				continue;
			};
			var _val:GoString = _afterKey.__slice__(((1 : GoInt)));
			{
				var _i;
				var _b;
				for (_obj in _val.keyValueIterator()) {
					_i = _obj.key;
					_b = _obj.value;
					if (_b == ((",".code : GoRune))) {
						return _val.__slice__(0, _i);
					};
				};
			};
			return _val;
		});
	};
	return "";
}

function _makePipeDeadline():T_pipeDeadline {
	return (({_cancel: new Chan<T_timeoutError>(0,
		() -> new T_timeoutError()), _mu: new stdgo.sync.Sync.Mutex(), _timer: new Pointer<stdgo.time.Time.Timer>().nil()} : T_pipeDeadline)).__copy__();
}

function _isClosedChan(_c:Chan<T__struct_44>):Bool {
	{
		{
			_c.get();
			return true;
		};
		null;
	};
}

/**
	// Pipe creates a synchronous, in-memory, full duplex
	// network connection; both ends implement the Conn interface.
	// Reads on one end are matched with writes on the other,
	// copying data directly between the two; there is no internal
	// buffering.
**/
function pipe():{var _0:Conn; var _1:Conn;} {
	var _cb1:Chan<Slice<GoUInt8>> = new Chan<Slice<GoUInt8>>(0, () -> new Slice<GoUInt8>().nil());
	var _cb2:Chan<Slice<GoUInt8>> = new Chan<Slice<GoUInt8>>(0, () -> new Slice<GoUInt8>().nil());
	var _cn1:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)));
	var _cn2:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)));
	var _done1:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError());
	var _done2:Chan<T_timeoutError> = new Chan<T_timeoutError>(0, () -> new T_timeoutError());
	var _p1:Pointer<T_pipe> = Go.pointer((({
		_rdRx: _cb1,
		_rdTx: _cn1,
		_wrTx: _cb2,
		_wrRx: _cn2,
		_localDone: _done1,
		_remoteDone: _done2,
		_readDeadline: _makePipeDeadline().__copy__(),
		_writeDeadline: _makePipeDeadline().__copy__(),
		_wrMu: new stdgo.sync.Sync.Mutex(),
		_once: new stdgo.sync.Sync.Once()
	} : T_pipe)));
	var _p2:Pointer<T_pipe> = Go.pointer((({
		_rdRx: _cb2,
		_rdTx: _cn2,
		_wrTx: _cb1,
		_wrRx: _cn1,
		_localDone: _done2,
		_remoteDone: _done1,
		_readDeadline: _makePipeDeadline().__copy__(),
		_writeDeadline: _makePipeDeadline().__copy__(),
		_wrMu: new stdgo.sync.Sync.Mutex(),
		_once: new stdgo.sync.Sync.Once()
	} : T_pipe)));
	return {_0: _p1.value, _1: _p2.value};
}

/**
	// parsePort parses service as a decimal integer and returns the
	// corresponding value as port. It is the caller's responsibility to
	// parse service as a non-decimal integer when needsLookup is true.
	//
	// Some system resolvers will return a valid port number when given a number
	// over 65536 (see https://golang.org/issues/11715). Alas, the parser
	// can't bail early on numbers > 65536. Therefore reasonably large/small
	// numbers are parsed in full and rejected if invalid.
**/
function _parsePort(_service:GoString):{var _0:GoInt; var _1:Bool;} {
	var _port:GoInt = ((0 : GoInt)), _needsLookup:Bool = false;
	if (_service == (("" : GoString))) {
		return {_0: ((0 : GoInt)), _1: false};
	};
	final _max:GoUInt32 = ((((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt))) : GoUInt32)),
	_cutoff:GoUInt32 = (((((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))) : GoUInt32));
	var _neg:Bool = false;
	if (_service[((0 : GoInt))] == (("+".code : GoRune))) {
		_service = _service.__slice__(((1 : GoInt)));
	} else if (_service[((0 : GoInt))] == (("-".code : GoRune))) {
		_neg = true;
		_service = _service.__slice__(((1 : GoInt)));
	};
	var _n:GoUInt32 = ((0 : GoUInt32));
	for (_d in _service) {
		if ((("0".code : GoRune)) <= _d && _d <= (("9".code : GoRune))) {
			_d = _d - ((("0".code : GoRune)));
		} else {
			return {_0: ((0 : GoInt)), _1: true};
		};
		if (_n >= _cutoff) {
			_n = _max;
			break;
		};
		_n = _n * (((10 : GoUInt32)));
		var _nn:GoUInt32 = _n + ((_d : GoUInt32));
		if (_nn < _n || _nn > _max) {
			_n = _max;
			break;
		};
		_n = _nn;
	};
	if (!_neg && _n >= _cutoff) {
		_port = (((_cutoff - ((1 : GoUInt32))) : GoInt));
	} else if (_neg && _n > _cutoff) {
		_port = ((_cutoff : GoInt));
	} else {
		_port = ((_n : GoInt));
	};
	if (_neg) {
		_port = -_port;
	};
	return {_0: _port, _1: false};
}

function _readServices():Void {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		var __tmp__ = _open("/etc/services"),
			_file:Pointer<T_file> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return;
		};
		deferstack.unshift(() -> _file.value._close());
		{
			var __tmp__ = _file.value._readLine(),
				_line:GoString = __tmp__._0,
				_ok:Bool = __tmp__._1;
			Go.cfor(_ok, {
				var __tmp__ = _file.value._readLine();
				_line = __tmp__._0;
				_ok = __tmp__._1;
			}, {
				{
					var _i:GoInt = internal.bytealg.Bytealg.indexByteString(_line, (("#".code : GoRune)));
					if (_i >= ((0 : GoInt))) {
						_line = _line.__slice__(0, _i);
					};
				};
				var _f:Slice<GoString> = _getFields(_line);
				if (_f.length < ((2 : GoInt))) {
					continue;
				};
				var _portnet:GoString = _f[((1 : GoInt))];
				var __tmp__ = _dtoi(_portnet),
					_port:GoInt = __tmp__._0,
					_j:GoInt = __tmp__._1,
					_ok:Bool = __tmp__._2;
				if (!_ok || _port <= ((0 : GoInt)) || _j >= _portnet.length || _portnet[_j] != (("/".code : GoRune))) {
					continue;
				};
				var _netw:GoString = _portnet.__slice__(_j + ((1 : GoInt)));
				var __tmp__ = _services.exists(_netw) ? {value: _services[_netw], ok: true} : {value: _services.defaultValue(), ok: false},
					_m:GoMap<GoString, GoInt> = __tmp__.value,
					_ok1:Bool = __tmp__.ok;
				if (!_ok1) {
					_m = new GoMap<GoString,
						GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
							stdgo.reflect.Reflect.GoType.basic(int_kind))));
					_services[_netw] = _m;
				};
				{
					var _i:GoInt = ((0 : GoInt));
					Go.cfor(_i < _f.length, _i++, {
						if (_i != ((1 : GoInt))) {
							_m[_f[_i]] = _port;
						};
					});
				};
			});
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

/**
	// goLookupPort is the native Go implementation of LookupPort.
**/
function _goLookupPort(_network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;} {
	var _port:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	_onceReadServices.do_(_readServices);
	return _lookupPortMap(_network, _service);
}

function _newRawConn(_fd:Pointer<T_netFD>):{var _0:Pointer<T_rawConn>; var _1:Error;} {
	return {_0: Go.pointer((({_fd: _fd} : T_rawConn))), _1: ((null : stdgo.Error))};
}

function _newRawListener(_fd:Pointer<T_netFD>):{var _0:Pointer<T_rawListener>; var _1:Error;} {
	return {_0: Go.pointer(new T_rawListener((({_fd: _fd} : T_rawConn)).__copy__())), _1: ((null : stdgo.Error))};
}

function _sendFile(_c:Pointer<T_netFD>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error; var _2:Bool;} {
	var _n:GoInt64 = ((0 : GoInt64)),
		_err:Error = ((null : stdgo.Error)),
		_handled:Bool = false;
	return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error)), _2: false};
}

function _maxListenerBacklog():GoInt {
	return stdgo.syscall.Syscall.somaxconn;
}

function _setDefaultSockopts(_s:GoInt, _family:GoInt, _sotype:GoInt, _ipv6only:Bool):Error {
	return ((null : stdgo.Error));
}

function _setDefaultListenerSockopts(_s:GoInt):Error {
	return ((null : stdgo.Error));
}

function _setDefaultMulticastSockopts(_s:GoInt):Error {
	return ((null : stdgo.Error));
}

function _setReadBuffer(_fd:Pointer<T_netFD>, _bytes:GoInt):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setWriteBuffer(_fd:Pointer<T_netFD>, _bytes:GoInt):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setKeepAlive(_fd:Pointer<T_netFD>, _keepalive:Bool):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setLinger(_fd:Pointer<T_netFD>, _sec:GoInt):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setIPv4MulticastInterface(_fd:Pointer<T_netFD>, _ifi:Pointer<Interface>):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setIPv4MulticastLoopback(_fd:Pointer<T_netFD>, _v:Bool):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _joinIPv4Group(_fd:Pointer<T_netFD>, _ifi:Pointer<Interface>, _ip:IP):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setIPv6MulticastInterface(_fd:Pointer<T_netFD>, _ifi:Pointer<Interface>):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setIPv6MulticastLoopback(_fd:Pointer<T_netFD>, _v:Bool):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _joinIPv6Group(_fd:Pointer<T_netFD>, _ifi:Pointer<Interface>, _ip:IP):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _splice(_c:Pointer<T_netFD>, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error; var _2:Bool;} {
	return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error)), _2: false};
}

/**
	// ResolveTCPAddr returns an address of TCP end point.
	//
	// The network must be a TCP network name.
	//
	// If the host in the address parameter is not a literal IP address or
	// the port is not a literal port number, ResolveTCPAddr resolves the
	// address to an address of TCP end point.
	// Otherwise, it parses the address as a pair of literal IP address
	// and port number.
	// The address parameter can use a host name, but this is not
	// recommended, because it will return at most one of the host name's
	// IP addresses.
	//
	// See func Dial for a description of the network and address
	// parameters.
**/
function resolveTCPAddr(_network:GoString, _address:GoString):{var _0:Pointer<TCPAddr>; var _1:Error;} {
	if (_network == (("tcp" : GoString)) || _network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))) {} else if (_network == (("" : GoString))) {
		_network = "tcp";
	} else {
		return {_0: new Pointer<TCPAddr>().nil(), _1: new UnknownNetworkError(_network)};
	};
	var __tmp__ = defaultResolver.value._internetAddrList(stdgo.context.Context.background(), _network, _address),
		_addrs:T_addrList = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<TCPAddr>().nil(), _1: _err};
	};
	return {_0: ((_addrs._forResolve(_network, _address).__underlying__().value : TCPAddr)), _1: ((null : stdgo.Error))};
}

function _newTCPConn(_fd:Pointer<T_netFD>):Pointer<TCPConn> {
	var _c:Pointer<TCPConn> = Go.pointer(new TCPConn(new T_conn(_fd).__copy__()));
	_setNoDelay(_c.value._conn._fd, true);
	return _c;
}

/**
	// DialTCP acts like Dial for TCP networks.
	//
	// The network must be a TCP network name; see func Dial for details.
	//
	// If laddr is nil, a local address is automatically chosen.
	// If the IP field of raddr is nil or an unspecified IP address, the
	// local system is assumed.
**/
function dialTCP(_network:GoString, _laddr:Pointer<TCPAddr>, _raddr:Pointer<TCPAddr>):{var _0:Pointer<TCPConn>; var _1:Error;} {
	if (_network == (("tcp" : GoString)) || _network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))) {} else {
		return {_0: new Pointer<TCPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_raddr == null || _raddr.isNil()) {
		return {_0: new Pointer<TCPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: ((null : Addr)),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sd:Pointer<T_sysDialer> = Go.pointer((({_network: _network, _address: _raddr.value.toString(), dialer: new Dialer()} : T_sysDialer)));
	var __tmp__ = _sd.value._dialTCP(stdgo.context.Context.background(), _laddr, _raddr),
		_c:Pointer<TCPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<TCPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// ListenTCP acts like Listen for TCP networks.
	//
	// The network must be a TCP network name; see func Dial for details.
	//
	// If the IP field of laddr is nil or an unspecified IP address,
	// ListenTCP listens on all available unicast and anycast IP addresses
	// of the local system.
	// If the Port field of laddr is 0, a port number is automatically
	// chosen.
**/
function listenTCP(_network:GoString, _laddr:Pointer<TCPAddr>):{var _0:Pointer<TCPListener>; var _1:Error;} {
	if (_network == (("tcp" : GoString)) || _network == (("tcp4" : GoString)) || _network == (("tcp6" : GoString))) {} else {
		return {_0: new Pointer<TCPListener>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_laddr == null || _laddr.isNil()) {
		_laddr = Go.pointer(new TCPAddr());
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _laddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenTCP(stdgo.context.Context.background(), _laddr),
		_ln:Pointer<TCPListener> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<TCPListener>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _ln, _1: ((null : stdgo.Error))};
}

/**
	// roundDurationUp rounds d to the next multiple of to.
**/
function _roundDurationUp(_d:stdgo.time.Time.Duration, _to:stdgo.time.Time.Duration):stdgo.time.Time.Duration {
	return new stdgo.time.Time.Duration((new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(_d.__t__ + _to.__t__).__t__ - ((1 : GoInt64))))
		.__t__ / _to.__t__);
}

function _sockaddrToTCP(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port, zone: ""} : TCPAddr))).value;
	} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port,
			zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : TCPAddr)))
			.value;
	};
	return ((null : Addr));
}

function _selfConnect(_fd:Pointer<T_netFD>, _err:Error):Bool {
	if (_err != null) {
		return false;
	};
	if (_fd.value._laddr == null || _fd.value._raddr == null) {
		return true;
	};
	var _l:Pointer<TCPAddr> = ((_fd.value._laddr.__underlying__().value : TCPAddr));
	var _r:Pointer<TCPAddr> = ((_fd.value._raddr.__underlying__().value : TCPAddr));
	return _l.value.port == _r.value.port && _l.value.ip.equal(_r.value.ip.__copy__());
}

function _spuriousENOTAVAIL(_err:Error):Bool {
	{
		var __tmp__ = try {
			{value: ((_err.__underlying__().value : OpError)), ok: true};
		} catch (_) {
			{value: new Pointer<OpError>().nil(), ok: false};
		}, _op = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_err = _op.value.err;
		};
	};
	{
		var __tmp__ = try {
			{value: ((_err.__underlying__().value : stdgo.os.Os.SyscallError)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.os.Os.SyscallError>().nil(), ok: false};
		}, _sys = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_err = _sys.value.err;
		};
	};
	return Go.toInterface(_err) == Go.toInterface(stdgo.syscall.Syscall.eaddrnotavail.__t__);
}

function _setNoDelay(_fd:Pointer<T_netFD>, _noDelay:Bool):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

function _setKeepAlivePeriod(_fd:Pointer<T_netFD>, _d:stdgo.time.Time.Duration):Error {
	return stdgo.syscall.Syscall.enoprotoopt;
}

/**
	// ResolveUDPAddr returns an address of UDP end point.
	//
	// The network must be a UDP network name.
	//
	// If the host in the address parameter is not a literal IP address or
	// the port is not a literal port number, ResolveUDPAddr resolves the
	// address to an address of UDP end point.
	// Otherwise, it parses the address as a pair of literal IP address
	// and port number.
	// The address parameter can use a host name, but this is not
	// recommended, because it will return at most one of the host name's
	// IP addresses.
	//
	// See func Dial for a description of the network and address
	// parameters.
**/
function resolveUDPAddr(_network:GoString, _address:GoString):{var _0:Pointer<UDPAddr>; var _1:Error;} {
	if (_network == (("udp" : GoString)) || _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else if (_network == (("" : GoString))) {
		_network = "udp";
	} else {
		return {_0: new Pointer<UDPAddr>().nil(), _1: new UnknownNetworkError(_network)};
	};
	var __tmp__ = defaultResolver.value._internetAddrList(stdgo.context.Context.background(), _network, _address),
		_addrs:T_addrList = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UDPAddr>().nil(), _1: _err};
	};
	return {_0: ((_addrs._forResolve(_network, _address).__underlying__().value : UDPAddr)), _1: ((null : stdgo.Error))};
}

function _newUDPConn(_fd:Pointer<T_netFD>):Pointer<UDPConn> {
	return Go.pointer(new UDPConn(new T_conn(_fd).__copy__()));
}

/**
	// DialUDP acts like Dial for UDP networks.
	//
	// The network must be a UDP network name; see func Dial for details.
	//
	// If laddr is nil, a local address is automatically chosen.
	// If the IP field of raddr is nil or an unspecified IP address, the
	// local system is assumed.
**/
function dialUDP(_network:GoString, _laddr:Pointer<UDPAddr>, _raddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
	if (_network == (("udp" : GoString)) || _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_raddr == null || _raddr.isNil()) {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: ((null : Addr)),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sd:Pointer<T_sysDialer> = Go.pointer((({_network: _network, _address: _raddr.value.toString(), dialer: new Dialer()} : T_sysDialer)));
	var __tmp__ = _sd.value._dialUDP(stdgo.context.Context.background(), _laddr, _raddr),
		_c:Pointer<UDPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// ListenUDP acts like ListenPacket for UDP networks.
	//
	// The network must be a UDP network name; see func Dial for details.
	//
	// If the IP field of laddr is nil or an unspecified IP address,
	// ListenUDP listens on all available IP addresses of the local system
	// except multicast IP addresses.
	// If the Port field of laddr is 0, a port number is automatically
	// chosen.
**/
function listenUDP(_network:GoString, _laddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
	if (_network == (("udp" : GoString)) || _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_laddr == null || _laddr.isNil()) {
		_laddr = Go.pointer(new UDPAddr());
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _laddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenUDP(stdgo.context.Context.background(), _laddr),
		_c:Pointer<UDPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// ListenMulticastUDP acts like ListenPacket for UDP networks but
	// takes a group address on a specific network interface.
	//
	// The network must be a UDP network name; see func Dial for details.
	//
	// ListenMulticastUDP listens on all available IP addresses of the
	// local system including the group, multicast IP address.
	// If ifi is nil, ListenMulticastUDP uses the system-assigned
	// multicast interface, although this is not recommended because the
	// assignment depends on platforms and sometimes it might require
	// routing configuration.
	// If the Port field of gaddr is 0, a port number is automatically
	// chosen.
	//
	// ListenMulticastUDP is just for convenience of simple, small
	// applications. There are golang.org/x/net/ipv4 and
	// golang.org/x/net/ipv6 packages for general purpose uses.
	//
	// Note that ListenMulticastUDP will set the IP_MULTICAST_LOOP socket option
	// to 0 under IPPROTO_IP, to disable loopback of multicast packets.
**/
function listenMulticastUDP(_network:GoString, _ifi:Pointer<Interface>, _gaddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;} {
	if (_network == (("udp" : GoString)) || _network == (("udp4" : GoString)) || _network == (("udp6" : GoString))) {} else {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _gaddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_gaddr == null || _gaddr.isNil() || _gaddr.value.ip.__t__ == null || _gaddr.value.ip.__t__.isNil()) {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _gaddr.value._opAddr(),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _gaddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenMulticastUDP(stdgo.context.Context.background(), _ifi, _gaddr),
		_c:Pointer<UDPConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UDPConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _gaddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

function _sockaddrToUDP(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet4>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet4> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port, zone: ""} : UDPAddr))).value;
	} else if (Go.assertable(((_sa : Pointer<stdgo.syscall.Syscall.SockaddrInet6>)))) {
		var _sa:Pointer<stdgo.syscall.Syscall.SockaddrInet6> = _sa == null ? null : _sa.__underlying__() == null ? null : _sa == null ? null : _sa.__underlying__()
			.value;
		return Go.pointer((({ip: new IP(_sa.value.addr.__slice__(((0 : GoInt)))), port: _sa.value.port,
			zone: _zoneCache._name(((_sa.value.zoneId : GoInt)))} : UDPAddr)))
			.value;
	};
	return ((null : Addr));
}

function _listenIPv4MulticastUDP(_c:Pointer<UDPConn>, _ifi:Pointer<Interface>, _ip:IP):Error {
	if (_ifi != null && !_ifi.isNil()) {
		{
			var _err:stdgo.Error = _setIPv4MulticastInterface(_c.value._conn._fd, _ifi);
			if (_err != null) {
				return _err;
			};
		};
	};
	{
		var _err:stdgo.Error = _setIPv4MulticastLoopback(_c.value._conn._fd, false);
		if (_err != null) {
			return _err;
		};
	};
	{
		var _err:stdgo.Error = _joinIPv4Group(_c.value._conn._fd, _ifi, _ip.__copy__());
		if (_err != null) {
			return _err;
		};
	};
	return ((null : stdgo.Error));
}

function _listenIPv6MulticastUDP(_c:Pointer<UDPConn>, _ifi:Pointer<Interface>, _ip:IP):Error {
	if (_ifi != null && !_ifi.isNil()) {
		{
			var _err:stdgo.Error = _setIPv6MulticastInterface(_c.value._conn._fd, _ifi);
			if (_err != null) {
				return _err;
			};
		};
	};
	{
		var _err:stdgo.Error = _setIPv6MulticastLoopback(_c.value._conn._fd, false);
		if (_err != null) {
			return _err;
		};
	};
	{
		var _err:stdgo.Error = _joinIPv6Group(_c.value._conn._fd, _ifi, _ip.__copy__());
		if (_err != null) {
			return _err;
		};
	};
	return ((null : stdgo.Error));
}

/**
	// ResolveUnixAddr returns an address of Unix domain socket end point.
	//
	// The network must be a Unix network name.
	//
	// See func Dial for a description of the network and address
	// parameters.
**/
function resolveUnixAddr(_network:GoString, _address:GoString):{var _0:Pointer<UnixAddr>; var _1:Error;} {
	if (_network == (("unix" : GoString)) || _network == (("unixgram" : GoString)) || _network == (("unixpacket" : GoString))) {
		return {_0: Go.pointer((({name: _address, net: _network} : UnixAddr))), _1: ((null : stdgo.Error))};
	} else {
		return {_0: new Pointer<UnixAddr>().nil(), _1: new UnknownNetworkError(_network)};
	};
}

function _newUnixConn(_fd:Pointer<T_netFD>):Pointer<UnixConn> {
	return Go.pointer(new UnixConn(new T_conn(_fd).__copy__()));
}

/**
	// DialUnix acts like Dial for Unix networks.
	//
	// The network must be a Unix network name; see func Dial for details.
	//
	// If laddr is non-nil, it is used as the local address for the
	// connection.
**/
function dialUnix(_network:GoString, _laddr:Pointer<UnixAddr>, _raddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;} {
	if (_network == (("unix" : GoString)) || _network == (("unixgram" : GoString)) || _network == (("unixpacket" : GoString))) {} else {
		return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	var _sd:Pointer<T_sysDialer> = Go.pointer((({_network: _network, _address: _raddr.value.toString(), dialer: new Dialer()} : T_sysDialer)));
	var __tmp__ = _sd.value._dialUnix(stdgo.context.Context.background(), _laddr, _raddr),
		_c:Pointer<UnixConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
			op: "dial",
			net: _network,
			source: _laddr.value._opAddr(),
			addr: _raddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

/**
	// ListenUnix acts like Listen for Unix networks.
	//
	// The network must be "unix" or "unixpacket".
**/
function listenUnix(_network:GoString, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixListener>; var _1:Error;} {
	if (_network == (("unix" : GoString)) || _network == (("unixpacket" : GoString))) {} else {
		return {_0: new Pointer<UnixListener>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_laddr == null || _laddr.isNil()) {
		return {_0: new Pointer<UnixListener>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _laddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenUnix(stdgo.context.Context.background(), _laddr),
		_ln:Pointer<UnixListener> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UnixListener>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _ln, _1: ((null : stdgo.Error))};
}

/**
	// ListenUnixgram acts like ListenPacket for Unix networks.
	//
	// The network must be "unixgram".
**/
function listenUnixgram(_network:GoString, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;} {
	if (_network == (("unixgram" : GoString))) {} else {
		return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: new UnknownNetworkError(_network)
		} : OpError))).value};
	};
	if (_laddr == null || _laddr.isNil()) {
		return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: ((null : Addr)),
			err: _errMissingAddress
		} : OpError))).value};
	};
	var _sl:Pointer<T_sysListener> = Go.pointer((({_network: _network, _address: _laddr.value.toString(), listenConfig: new ListenConfig()} : T_sysListener)));
	var __tmp__ = _sl.value._listenUnixgram(stdgo.context.Context.background(), _laddr),
		_c:Pointer<UnixConn> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<UnixConn>().nil(), _1: Go.pointer((({
			op: "listen",
			net: _network,
			source: ((null : Addr)),
			addr: _laddr.value._opAddr(),
			err: _err
		} : OpError))).value};
	};
	return {_0: _c, _1: ((null : stdgo.Error))};
}

function _unixSocket(_ctx:stdgo.context.Context.Context, _net:GoString, _laddr:T_sockaddr, _raddr:T_sockaddr, _mode:GoString,
		_ctrlFn:(GoString, GoString, stdgo.syscall.Syscall.RawConn) -> Error):{var _0:Pointer<T_netFD>; var _1:Error;
} {
	var _sotype:GoInt = ((0 : GoInt));
	if (_net == (("unix" : GoString))) {
		_sotype = stdgo.syscall.Syscall.sock_STREAM;
	} else if (_net == (("unixgram" : GoString))) {
		_sotype = stdgo.syscall.Syscall.sock_DGRAM;
	} else if (_net == (("unixpacket" : GoString))) {
		_sotype = stdgo.syscall.Syscall.sock_SEQPACKET;
	} else {
		return {_0: new Pointer<T_netFD>().nil(), _1: new UnknownNetworkError(_net)};
	};
	if (_mode == (("dial" : GoString))) {
		if (_laddr != null && _laddr._isWildcard()) {
			_laddr = ((null : T_sockaddr));
		};
		if (_raddr != null && _raddr._isWildcard()) {
			_raddr = ((null : T_sockaddr));
		};
		if (_raddr == null && (_sotype != stdgo.syscall.Syscall.sock_DGRAM || _laddr == null)) {
			return {_0: new Pointer<T_netFD>().nil(), _1: _errMissingAddress};
		};
	} else if (_mode == (("listen" : GoString))) {} else {
		return {_0: new Pointer<T_netFD>().nil(), _1: stdgo.errors.Errors.new_((("unknown mode: " : GoString)) + _mode)};
	};
	var __tmp__ = _socket(_ctx, _net, stdgo.syscall.Syscall.af_UNIX, _sotype, ((0 : GoInt)), false, _laddr, _raddr, _ctrlFn),
		_fd:Pointer<T_netFD> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<T_netFD>().nil(), _1: _err};
	};
	return {_0: _fd, _1: ((null : stdgo.Error))};
}

function _sockaddrToUnix(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	{
		var __tmp__ = try {
			{value: ((_sa.value : Pointer<stdgo.syscall.Syscall.SockaddrUnix>)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.syscall.Syscall.SockaddrUnix>().nil(), ok: false};
		}, _s = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return Go.pointer((({name: _s.value.name, net: "unix"} : UnixAddr))).value;
		};
	};
	return ((null : Addr));
}

function _sockaddrToUnixgram(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	{
		var __tmp__ = try {
			{value: ((_sa.value : Pointer<stdgo.syscall.Syscall.SockaddrUnix>)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.syscall.Syscall.SockaddrUnix>().nil(), ok: false};
		}, _s = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return Go.pointer((({name: _s.value.name, net: "unixgram"} : UnixAddr))).value;
		};
	};
	return ((null : Addr));
}

function _sockaddrToUnixpacket(_sa:stdgo.syscall.Syscall.Sockaddr):Addr {
	{
		var __tmp__ = try {
			{value: ((_sa.value : Pointer<stdgo.syscall.Syscall.SockaddrUnix>)), ok: true};
		} catch (_) {
			{value: new Pointer<stdgo.syscall.Syscall.SockaddrUnix>().nil(), ok: false};
		}, _s = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			return Go.pointer((({name: _s.value.name, net: "unixpacket"} : UnixAddr))).value;
		};
	};
	return ((null : Addr));
}

function _sotypeToNet(_sotype:GoInt):GoString {
	if (_sotype == stdgo.syscall.Syscall.sock_STREAM) {
		return "unix";
	} else if (_sotype == stdgo.syscall.Syscall.sock_DGRAM) {
		return "unixgram";
	} else if (_sotype == stdgo.syscall.Syscall.sock_SEQPACKET) {
		return "unixpacket";
	} else {
		throw "sotypeToNet unknown socket type";
	};
}

function _setReadMsgCloseOnExec(_oob:Slice<GoByte>):Void {}

@:keep var _ = {
	try {
		_netGo = true;
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_addrinfoErrno_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();
}

class Dialer_extension_fields {
	public function _dualStack(__tmp__):Bool
		return __tmp__._dualStack();

	public function _deadline(__tmp__, _ctx:stdgo.context.Context.Context, _now:stdgo.time.Time.Time):stdgo.time.Time.Time
		return __tmp__._deadline(_ctx, _now);

	public function _resolver(__tmp__):Pointer<Resolver>
		return __tmp__._resolver();

	public function _fallbackDelay(__tmp__):stdgo.time.Time.Duration
		return __tmp__._fallbackDelay();

	public function dial(__tmp__, _network:GoString, _address:GoString):{var _0:Conn; var _1:Error;}
		return __tmp__.dial(_network, _address);

	public function dialContext(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:Conn; var _1:Error;}
		return __tmp__.dialContext(_ctx, _network, _address);
}

class T_sysDialer_extension_fields {
	public function _dialParallel(__tmp__, _ctx:stdgo.context.Context.Context, _primaries:T_addrList, _fallbacks:T_addrList):{var _0:Conn; var _1:Error;}
		return __tmp__._dialParallel(_ctx, _primaries, _fallbacks);

	public function _dialSerial(__tmp__, _ctx:stdgo.context.Context.Context, _ras:T_addrList):{var _0:Conn; var _1:Error;}
		return __tmp__._dialSerial(_ctx, _ras);

	public function _dialSingle(__tmp__, _ctx:stdgo.context.Context.Context, _ra:Addr):{var _0:Conn; var _1:Error;}
		return __tmp__._dialSingle(_ctx, _ra);

	public function _dialIP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<IPAddr>,
			_raddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;}
		return __tmp__._dialIP(_ctx, _laddr, _raddr);

	public function _dialTCP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>,
			_raddr:Pointer<TCPAddr>):{var _0:Pointer<TCPConn>; var _1:Error;}
		return __tmp__._dialTCP(_ctx, _laddr, _raddr);

	public function _doDialTCP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>,
			_raddr:Pointer<TCPAddr>):{var _0:Pointer<TCPConn>; var _1:Error;}
		return __tmp__._doDialTCP(_ctx, _laddr, _raddr);

	public function _dialUDP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<UDPAddr>,
			_raddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;}
		return __tmp__._dialUDP(_ctx, _laddr, _raddr);

	public function _dialUnix(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>,
			_raddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;}
		return __tmp__._dialUnix(_ctx, _laddr, _raddr);
}

@:structInit class T_dialResult__dialParallel_0 {
	@:embedded
	public var conn:Conn = ((null : Conn));
	@:embedded
	public var _error:stdgo.Error = ((null : stdgo.Error));
	public var _primary:Bool = false;
	public var _done:Bool = false;

	public function new(?conn:Conn, ?_error:stdgo.Error, ?_primary:Bool, ?_done:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(conn) + " " + Go.string(_error) + " " + Go.string(_primary) + " " + Go.string(_done) + "}";
	}

	public function close():stdgo.Error
		return conn.close();

	public function error():GoString
		return _error.error();

	public function localAddr():Addr
		return conn.localAddr();

	public function read(_b:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return conn.read(_0);

	public function remoteAddr():Addr
		return conn.remoteAddr();

	public function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return conn.setDeadline(_0);

	public function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return conn.setReadDeadline(_0);

	public function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error
		return conn.setWriteDeadline(_0);

	public function write(_b:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
		return conn.write(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dialResult__dialParallel_0(conn, _error, _primary, _done);
	}

	public function __set__(__tmp__) {
		this.conn = __tmp__.conn;
		this._error = __tmp__._error;
		this._primary = __tmp__._primary;
		this._done = __tmp__._done;
		return this;
	}
}

class ListenConfig_extension_fields {
	public function listen(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:Listener; var _1:Error;}
		return __tmp__.listen(_ctx, _network, _address);

	public function listenPacket(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _address:GoString):{var _0:PacketConn; var _1:Error;}
		return __tmp__.listenPacket(_ctx, _network, _address);
}

class T_sysListener_extension_fields {
	public function _listenIP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<IPAddr>):{var _0:Pointer<IPConn>; var _1:Error;}
		return __tmp__._listenIP(_ctx, _laddr);

	public function _listenTCP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<TCPAddr>):{var _0:Pointer<TCPListener>; var _1:Error;}
		return __tmp__._listenTCP(_ctx, _laddr);

	public function _listenUDP(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;}
		return __tmp__._listenUDP(_ctx, _laddr);

	public function _listenMulticastUDP(__tmp__, _ctx:stdgo.context.Context.Context, _ifi:Pointer<Interface>,
			_gaddr:Pointer<UDPAddr>):{var _0:Pointer<UDPConn>; var _1:Error;}
		return __tmp__._listenMulticastUDP(_ctx, _ifi, _gaddr);

	public function _listenUnix(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixListener>; var _1:Error;}
		return __tmp__._listenUnix(_ctx, _laddr);

	public function _listenUnixgram(__tmp__, _ctx:stdgo.context.Context.Context, _laddr:Pointer<UnixAddr>):{var _0:Pointer<UnixConn>; var _1:Error;}
		return __tmp__._listenUnixgram(_ctx, _laddr);
}

class T_byPriorityWeight_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);

	public function _shuffleByWeight(__tmp__):Void
		__tmp__._shuffleByWeight();

	public function _sort(__tmp__):Void
		__tmp__._sort();
}

class T_byPref_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);

	public function _sort(__tmp__):Void
		__tmp__._sort();
}

class T_fileAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class Interface_extension_fields {
	public function addrs(__tmp__):{var _0:Slice<Addr>; var _1:Error;}
		return __tmp__.addrs();

	public function multicastAddrs(__tmp__):{var _0:Slice<Addr>; var _1:Error;}
		return __tmp__.multicastAddrs();
}

class Flags_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class T_ipv6ZoneCache_extension_fields {
	public function _update(__tmp__, _ift:Slice<Interface>, _force:Bool):Bool
		return __tmp__._update(_ift, _force);

	public function _name(__tmp__, _index:GoInt):GoString
		return __tmp__._name(_index);

	public function _index(__tmp__, _name:GoString):GoInt
		return __tmp__._index(_name);
}

class IP_extension_fields {
	public function isUnspecified(__tmp__):Bool
		return __tmp__.isUnspecified();

	public function isLoopback(__tmp__):Bool
		return __tmp__.isLoopback();

	public function isPrivate(__tmp__):Bool
		return __tmp__.isPrivate();

	public function isMulticast(__tmp__):Bool
		return __tmp__.isMulticast();

	public function isInterfaceLocalMulticast(__tmp__):Bool
		return __tmp__.isInterfaceLocalMulticast();

	public function isLinkLocalMulticast(__tmp__):Bool
		return __tmp__.isLinkLocalMulticast();

	public function isLinkLocalUnicast(__tmp__):Bool
		return __tmp__.isLinkLocalUnicast();

	public function isGlobalUnicast(__tmp__):Bool
		return __tmp__.isGlobalUnicast();

	public function to4(__tmp__):IP
		return __tmp__.to4();

	public function to16(__tmp__):IP
		return __tmp__.to16();

	public function defaultMask(__tmp__):IPMask
		return __tmp__.defaultMask();

	public function mask(__tmp__, _mask:IPMask):IP
		return __tmp__.mask(_mask);

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function marshalText(__tmp__):{var _0:Slice<GoByte>; var _1:Error;}
		return __tmp__.marshalText();

	public function unmarshalText(__tmp__, _text:Slice<GoByte>):Error
		return __tmp__.unmarshalText(_text);

	public function equal(__tmp__, _x:IP):Bool
		return __tmp__.equal(_x);

	public function _matchAddrFamily(__tmp__, _x:IP):Bool
		return __tmp__._matchAddrFamily(_x);
}

class IPMask_extension_fields {
	public function size(__tmp__):{var _0:GoInt; var _1:GoInt;}
		return __tmp__.size();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class IPNet_extension_fields {
	public function contains(__tmp__, _ip:IP):Bool
		return __tmp__.contains(_ip);

	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class IPAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _isWildcard(__tmp__):Bool
		return __tmp__._isWildcard();

	public function _opAddr(__tmp__):Addr
		return __tmp__._opAddr();

	public function _family(__tmp__):GoInt
		return __tmp__._family();

	public function _sockaddr(__tmp__, _family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;}
		return __tmp__._sockaddr(_family);

	public function _toLocal(__tmp__, _net:GoString):T_sockaddr
		return __tmp__._toLocal(_net);
}

class IPConn_extension_fields {
	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function readFromIP(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<IPAddr>; var _2:Error;}
		return __tmp__.readFromIP(_b);

	public function readFrom(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;}
		return __tmp__.readFrom(_b);

	public function readMsgIP(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<IPAddr>;
		var _4:Error;
	}
		return __tmp__.readMsgIP(_b, _oob);

	public function writeToIP(__tmp__, _b:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeToIP(_b, _addr);

	public function writeTo(__tmp__, _b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeTo(_b, _addr);

	public function writeMsgIP(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__.writeMsgIP(_b, _oob, _addr);

	public function _readFrom(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<IPAddr>; var _2:Error;}
		return __tmp__._readFrom(_b);

	public function _readMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<IPAddr>;
		var _4:Error;
	}
		return __tmp__._readMsg(_b, _oob);

	public function _writeTo(__tmp__, _b:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__._writeTo(_b, _addr);

	public function _writeMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<IPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__._writeMsg(_b, _oob, _addr);
}

class T_ipStackCapabilities_extension_fields {
	public function _probe(__tmp__):Void
		__tmp__._probe();
}

class T_addrList_extension_fields {
	public function _forResolve(__tmp__, _network:GoString, _addr:GoString):Addr
		return __tmp__._forResolve(_network, _addr);

	public function _first(__tmp__, _strategy:Addr->Bool):Addr
		return __tmp__._first(_strategy);

	public function _partition(__tmp__, _strategy:Addr->Bool):{var _0:T_addrList; var _1:T_addrList;}
		return __tmp__._partition(_strategy);
}

class Resolver_extension_fields {
	public function _resolveAddrList(__tmp__, _ctx:stdgo.context.Context.Context, _op:GoString, _network:GoString, _addr:GoString,
			_hint:Addr):{var _0:T_addrList; var _1:Error;}
		return __tmp__._resolveAddrList(_ctx, _op, _network, _addr, _hint);

	public function _internetAddrList(__tmp__, _ctx:stdgo.context.Context.Context, _net:GoString, _addr:GoString):{var _0:T_addrList; var _1:Error;}
		return __tmp__._internetAddrList(_ctx, _net, _addr);

	public function _preferGo(__tmp__):Bool
		return __tmp__._preferGo();

	public function _strictErrors(__tmp__):Bool
		return __tmp__._strictErrors();

	public function _getLookupGroup(__tmp__):Pointer<internal.singleflight.Singleflight.Group>
		return __tmp__._getLookupGroup();

	public function lookupHost(__tmp__, _ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.lookupHost(_ctx, _host);

	public function lookupIPAddr(__tmp__, _ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;}
		return __tmp__.lookupIPAddr(_ctx, _host);

	public function lookupIP(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IP>; var _1:Error;}
		return __tmp__.lookupIP(_ctx, _network, _host);

	public function _lookupIPAddr(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;}
		return __tmp__._lookupIPAddr(_ctx, _network, _host);

	public function lookupPort(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;}
		return __tmp__.lookupPort(_ctx, _network, _service);

	public function lookupCNAME(__tmp__, _ctx:stdgo.context.Context.Context, _host:GoString):{var _0:GoString; var _1:Error;}
		return __tmp__.lookupCNAME(_ctx, _host);

	public function lookupSRV(__tmp__, _ctx:stdgo.context.Context.Context, _service:GoString, _proto:GoString,
			_name:GoString):{var _0:GoString; var _1:Slice<Pointer<SRV>>; var _2:Error;}
		return __tmp__.lookupSRV(_ctx, _service, _proto, _name);

	public function lookupMX(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<MX>>; var _1:Error;}
		return __tmp__.lookupMX(_ctx, _name);

	public function lookupNS(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<NS>>; var _1:Error;}
		return __tmp__.lookupNS(_ctx, _name);

	public function lookupTXT(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.lookupTXT(_ctx, _name);

	public function lookupAddr(__tmp__, _ctx:stdgo.context.Context.Context, _addr:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__.lookupAddr(_ctx, _addr);

	public function _lookupHost(__tmp__, _ctx:stdgo.context.Context.Context, _host:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__._lookupHost(_ctx, _host);

	public function _lookupIP(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _host:GoString):{var _0:Slice<IPAddr>; var _1:Error;}
		return __tmp__._lookupIP(_ctx, _network, _host);

	public function _lookupPort(__tmp__, _ctx:stdgo.context.Context.Context, _network:GoString, _service:GoString):{var _0:GoInt; var _1:Error;}
		return __tmp__._lookupPort(_ctx, _network, _service);

	public function _lookupCNAME(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:GoString; var _1:Error;}
		return __tmp__._lookupCNAME(_ctx, _name);

	public function _lookupSRV(__tmp__, _ctx:stdgo.context.Context.Context, _service:GoString, _proto:GoString,
			_name:GoString):{var _0:GoString; var _1:Slice<Pointer<SRV>>; var _2:Error;}
		return __tmp__._lookupSRV(_ctx, _service, _proto, _name);

	public function _lookupMX(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<MX>>; var _1:Error;}
		return __tmp__._lookupMX(_ctx, _name);

	public function _lookupNS(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<Pointer<NS>>; var _1:Error;}
		return __tmp__._lookupNS(_ctx, _name);

	public function _lookupTXT(__tmp__, _ctx:stdgo.context.Context.Context, _name:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__._lookupTXT(_ctx, _name);

	public function _lookupAddr(__tmp__, _ctx:stdgo.context.Context.Context, _addr:GoString):{var _0:Slice<GoString>; var _1:Error;}
		return __tmp__._lookupAddr(_ctx, _addr);
}

class T_onlyValuesCtx_extension_fields {
	public function value(__tmp__, _key:AnyInterface):AnyInterface
		return __tmp__.value(_key);
}

class HardwareAddr_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class T_conn_extension_fields {
	public function _ok(__tmp__):Bool
		return __tmp__._ok();

	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function close(__tmp__):Error
		return __tmp__.close();

	public function localAddr(__tmp__):Addr
		return __tmp__.localAddr();

	public function remoteAddr(__tmp__):Addr
		return __tmp__.remoteAddr();

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setReadDeadline(_t);

	public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setWriteDeadline(_t);

	public function setReadBuffer(__tmp__, _bytes:GoInt):Error
		return __tmp__.setReadBuffer(_bytes);

	public function setWriteBuffer(__tmp__, _bytes:GoInt):Error
		return __tmp__.setWriteBuffer(_bytes);

	public function file(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__.file();
}

class OpError_extension_fields {
	public function unwrap(__tmp__):Error
		return __tmp__.unwrap();

	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class ParseError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class AddrError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class UnknownNetworkError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class InvalidAddrError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class T_timeoutError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class DNSConfigError_extension_fields {
	public function unwrap(__tmp__):Error
		return __tmp__.unwrap();

	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class DNSError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();
}

class Buffers_extension_fields {
	public function writeTo(__tmp__, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __tmp__.writeTo(_w);

	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function _consume(__tmp__, _n:GoInt64):Void
		__tmp__._consume(_n);
}

class T_netFD_extension_fields {
	public function read(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_p);

	public function write(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_p);

	public function close(__tmp__):Error
		return __tmp__.close();

	public function _closeRead(__tmp__):Error
		return __tmp__._closeRead();

	public function _closeWrite(__tmp__):Error
		return __tmp__._closeWrite();

	public function _accept(__tmp__):{var _0:Pointer<T_netFD>; var _1:Error;}
		return __tmp__._accept();

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setReadDeadline(_t);

	public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setWriteDeadline(_t);

	public function _readFrom(__tmp__, _p:Slice<GoByte>):{var _0:GoInt; var _1:stdgo.syscall.Syscall.Sockaddr; var _2:Error;}
		return __tmp__._readFrom(_p);

	public function _readMsg(__tmp__, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:stdgo.syscall.Syscall.Sockaddr;
		var _4:Error;
	}
		return __tmp__._readMsg(_p, _oob, _flags);

	public function _writeTo(__tmp__, _p:Slice<GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{var _0:GoInt; var _1:Error;}
		return __tmp__._writeTo(_p, _sa);

	public function _writeMsg(__tmp__, _p:Slice<GoByte>, _oob:Slice<GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__._writeMsg(_p, _oob, _sa);

	public function _dup(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__._dup();
}

class T_bufferedPipe_extension_fields {
	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function close(__tmp__):Void
		__tmp__.close();

	public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Void
		__tmp__.setReadDeadline(_t);

	public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Void
		__tmp__.setWriteDeadline(_t);
}

class T_file_extension_fields {
	public function _close(__tmp__):Void
		__tmp__._close();

	public function _getLineFromData(__tmp__):{var _0:GoString; var _1:Bool;}
		return __tmp__._getLineFromData();

	public function _readLine(__tmp__):{var _0:GoString; var _1:Bool;}
		return __tmp__._readLine();
}

class T_pipeDeadline_extension_fields {
	public function _set(__tmp__, _t:stdgo.time.Time.Time):Void
		__tmp__._set(_t);

	public function _wait(__tmp__):Chan<T__struct_44>
		return __tmp__._wait();
}

class T_pipeAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class T_pipe_extension_fields {
	public function localAddr(__tmp__):Addr
		return __tmp__.localAddr();

	public function remoteAddr(__tmp__):Addr
		return __tmp__.remoteAddr();

	public function read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.read(_b);

	public function _read(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__._read(_b);

	public function write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__.write(_b);

	public function _write(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __tmp__._write(_b);

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function setReadDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setReadDeadline(_t);

	public function setWriteDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setWriteDeadline(_t);

	public function close(__tmp__):Error
		return __tmp__.close();
}

class T_rawConn_extension_fields {
	public function _ok(__tmp__):Bool
		return __tmp__._ok();

	public function control(__tmp__, _f:GoUIntptr->Void):Error
		return __tmp__.control(_f);

	public function read(__tmp__, _f:GoUIntptr->Bool):Error
		return __tmp__.read(_f);

	public function write(__tmp__, _f:GoUIntptr->Bool):Error
		return __tmp__.write(_f);
}

class T_rawListener_extension_fields {
	public function read(__tmp__, _0:GoUIntptr->Bool):Error
		return __tmp__.read(_0);

	public function write(__tmp__, _0:GoUIntptr->Bool):Error
		return __tmp__.write(_0);
}

class TCPAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _isWildcard(__tmp__):Bool
		return __tmp__._isWildcard();

	public function _opAddr(__tmp__):Addr
		return __tmp__._opAddr();

	public function _family(__tmp__):GoInt
		return __tmp__._family();

	public function _sockaddr(__tmp__, _family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;}
		return __tmp__._sockaddr(_family);

	public function _toLocal(__tmp__, _net:GoString):T_sockaddr
		return __tmp__._toLocal(_net);
}

class TCPConn_extension_fields {
	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function readFrom(__tmp__, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __tmp__.readFrom(_r);

	public function closeRead(__tmp__):Error
		return __tmp__.closeRead();

	public function closeWrite(__tmp__):Error
		return __tmp__.closeWrite();

	public function setLinger(__tmp__, _sec:GoInt):Error
		return __tmp__.setLinger(_sec);

	public function setKeepAlive(__tmp__, _keepalive:Bool):Error
		return __tmp__.setKeepAlive(_keepalive);

	public function setKeepAlivePeriod(__tmp__, _d:stdgo.time.Time.Duration):Error
		return __tmp__.setKeepAlivePeriod(_d);

	public function setNoDelay(__tmp__, _noDelay:Bool):Error
		return __tmp__.setNoDelay(_noDelay);

	public function _readFrom(__tmp__, _r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Error;}
		return __tmp__._readFrom(_r);
}

class TCPListener_extension_fields {
	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function acceptTCP(__tmp__):{var _0:Pointer<TCPConn>; var _1:Error;}
		return __tmp__.acceptTCP();

	public function accept(__tmp__):{var _0:Conn; var _1:Error;}
		return __tmp__.accept();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function addr(__tmp__):Addr
		return __tmp__.addr();

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function file(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__.file();

	public function _ok(__tmp__):Bool
		return __tmp__._ok();

	public function _accept(__tmp__):{var _0:Pointer<TCPConn>; var _1:Error;}
		return __tmp__._accept();

	public function _close(__tmp__):Error
		return __tmp__._close();

	public function _file(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__._file();
}

class UDPAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _isWildcard(__tmp__):Bool
		return __tmp__._isWildcard();

	public function _opAddr(__tmp__):Addr
		return __tmp__._opAddr();

	public function _family(__tmp__):GoInt
		return __tmp__._family();

	public function _sockaddr(__tmp__, _family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;}
		return __tmp__._sockaddr(_family);

	public function _toLocal(__tmp__, _net:GoString):T_sockaddr
		return __tmp__._toLocal(_net);
}

class UDPConn_extension_fields {
	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function readFromUDP(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;}
		return __tmp__.readFromUDP(_b);

	public function _readFromUDP(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;}
		return __tmp__._readFromUDP(_b, _addr);

	public function readFrom(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;}
		return __tmp__.readFrom(_b);

	public function readMsgUDP(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UDPAddr>;
		var _4:Error;
	}
		return __tmp__.readMsgUDP(_b, _oob);

	public function writeToUDP(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeToUDP(_b, _addr);

	public function writeTo(__tmp__, _b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeTo(_b, _addr);

	public function writeMsgUDP(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__.writeMsgUDP(_b, _oob, _addr);

	public function _readFrom(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Pointer<UDPAddr>; var _2:Error;}
		return __tmp__._readFrom(_b, _addr);

	public function _readMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UDPAddr>;
		var _4:Error;
	}
		return __tmp__._readMsg(_b, _oob);

	public function _writeTo(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__._writeTo(_b, _addr);

	public function _writeMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UDPAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__._writeMsg(_b, _oob, _addr);
}

class UnixAddr_extension_fields {
	public function network(__tmp__):GoString
		return __tmp__.network();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _isWildcard(__tmp__):Bool
		return __tmp__._isWildcard();

	public function _opAddr(__tmp__):Addr
		return __tmp__._opAddr();

	public function _family(__tmp__):GoInt
		return __tmp__._family();

	public function _sockaddr(__tmp__, _family:GoInt):{var _0:stdgo.syscall.Syscall.Sockaddr; var _1:Error;}
		return __tmp__._sockaddr(_family);

	public function _toLocal(__tmp__, _net:GoString):T_sockaddr
		return __tmp__._toLocal(_net);
}

class UnixConn_extension_fields {
	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function closeRead(__tmp__):Error
		return __tmp__.closeRead();

	public function closeWrite(__tmp__):Error
		return __tmp__.closeWrite();

	public function readFromUnix(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UnixAddr>; var _2:Error;}
		return __tmp__.readFromUnix(_b);

	public function readFrom(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Addr; var _2:Error;}
		return __tmp__.readFrom(_b);

	public function readMsgUnix(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UnixAddr>;
		var _4:Error;
	}
		return __tmp__.readMsgUnix(_b, _oob);

	public function writeToUnix(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeToUnix(_b, _addr);

	public function writeTo(__tmp__, _b:Slice<GoByte>, _addr:Addr):{var _0:GoInt; var _1:Error;}
		return __tmp__.writeTo(_b, _addr);

	public function writeMsgUnix(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__.writeMsgUnix(_b, _oob, _addr);

	public function _readFrom(__tmp__, _b:Slice<GoByte>):{var _0:GoInt; var _1:Pointer<UnixAddr>; var _2:Error;}
		return __tmp__._readFrom(_b);

	public function _readMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
		var _3:Pointer<UnixAddr>;
		var _4:Error;
	}
		return __tmp__._readMsg(_b, _oob);

	public function _writeTo(__tmp__, _b:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:Error;}
		return __tmp__._writeTo(_b, _addr);

	public function _writeMsg(__tmp__, _b:Slice<GoByte>, _oob:Slice<GoByte>, _addr:Pointer<UnixAddr>):{var _0:GoInt; var _1:GoInt; var _2:Error;}
		return __tmp__._writeMsg(_b, _oob, _addr);
}

class UnixListener_extension_fields {
	public function _ok(__tmp__):Bool
		return __tmp__._ok();

	public function syscallConn(__tmp__):{var _0:stdgo.syscall.Syscall.RawConn; var _1:Error;}
		return __tmp__.syscallConn();

	public function acceptUnix(__tmp__):{var _0:Pointer<UnixConn>; var _1:Error;}
		return __tmp__.acceptUnix();

	public function accept(__tmp__):{var _0:Conn; var _1:Error;}
		return __tmp__.accept();

	public function close(__tmp__):Error
		return __tmp__.close();

	public function addr(__tmp__):Addr
		return __tmp__.addr();

	public function setDeadline(__tmp__, _t:stdgo.time.Time.Time):Error
		return __tmp__.setDeadline(_t);

	public function file(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__.file();

	public function _accept(__tmp__):{var _0:Pointer<UnixConn>; var _1:Error;}
		return __tmp__._accept();

	public function _close(__tmp__):Error
		return __tmp__._close();

	public function _file(__tmp__):{var _0:Pointer<stdgo.os.Os.File>; var _1:Error;}
		return __tmp__._file();

	public function setUnlinkOnClose(__tmp__, _unlink:Bool):Void
		__tmp__.setUnlinkOnClose(_unlink);
}
