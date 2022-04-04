package stdgo.os.signal;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef T_stringer = StructType & {
	public function toString():GoString;
};

@:structInit class T_stopping {
	public var _c:Chan<stdgo.os.Os.Signal> = new Chan<stdgo.os.Os.Signal>(0, () -> ((null : stdgo.os.Os.Signal)), true);
	public var _h:Pointer<T_handler> = new Pointer<T_handler>().nil();

	public function new(?_c:Chan<stdgo.os.Os.Signal>, ?_h:Pointer<T_handler>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_c) + " " + Go.string(_h) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_stopping(_c, _h);
	}

	public function __set__(__tmp__) {
		this._c = __tmp__._c;
		this._h = __tmp__._h;
		return this;
	}
}

@:structInit class T_handler {
	public function _clear(_sig:GoInt):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._mask[_sig / ((32 : GoInt))] = (_h.value._mask[_sig / ((32 : GoInt))] & ((((1 : GoUInt32)) << (((_sig & ((31 : GoInt))) : GoUInt))))) ^ ((-1 : GoUnTypedInt));
	}

	public function _set(_sig:GoInt):Void {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_h.value._mask[_sig / ((32 : GoInt))] = _h.value._mask[_sig / ((32 : GoInt))] | ((((1 : GoUInt32)) << (((_sig & ((31 : GoInt))) : GoUInt))));
	}

	public function _want(_sig:GoInt):Bool {
		var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_h.value._mask[_sig / ((32 : GoInt))] >> (((_sig & ((31 : GoInt))) : GoUInt)))) & ((1 : GoUInt32)) != ((0 : GoUInt32));
	}

	public var _mask:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...3) ((0 : GoUInt32))]);

	public function new(?_mask:GoArray<GoUInt32>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_mask) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_handler(_mask);
	}

	public function __set__(__tmp__) {
		this._mask = __tmp__._mask;
		return this;
	}
}

@:structInit class T_signalCtx {
	public function toString():GoString {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _buf:Slice<GoByte> = new Slice<GoUInt8>().nil();
		var _name:GoString = ((_c.value.context.__underlying__().value : T_stringer)).toString();
		_name = _name.__slice__(0, _name.length - ".WithCancel".length);
		_buf = _buf.__append__(...(("signal.NotifyContext(" : GoString)) + _name.toArray());
		if (_c.value._signals.length != ((0 : GoInt))) {
			_buf = _buf.__append__(...((", [" : GoString)).toArray());
			{
				var _i;
				var _s;
				for (_obj in _c.value._signals.keyValueIterator()) {
					_i = _obj.key;
					_s = _obj.value;
					_buf = _buf.__append__(..._s.toString().toArray());
					if (_i != _c.value._signals.length - ((1 : GoInt))) {
						_buf = _buf.__append__(((" ".code : GoRune)));
					};
				};
			};
			_buf = _buf.__append__((("]".code : GoRune)));
		};
		_buf = _buf.__append__(((")".code : GoRune)));
		return ((_buf : GoString));
	}

	public function _stop():Void {
		var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_c.value._cancel.__t__();
		stop(_c.value._ch);
	}

	@:embedded
	public var context:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context));
	public var _cancel:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
	public var _signals:Slice<stdgo.os.Os.Signal> = new Slice<stdgo.os.Os.Signal>().nil();
	public var _ch:Chan<stdgo.os.Os.Signal> = new Chan<stdgo.os.Os.Signal>(0, () -> ((null : stdgo.os.Os.Signal)), true);

	public function new(?context:stdgo.context.Context.Context, ?_cancel:stdgo.context.Context.CancelFunc, ?_signals:Slice<stdgo.os.Os.Signal>,
			?_ch:Chan<stdgo.os.Os.Signal>)
		stdgo.internal.Macro.initLocals();

	public function deadline():{var _0:stdgo.time.Time.Time; var _1:Bool;}
		return context.deadline();

	public function done():Chan<{}>
		return context.done();

	public function err():stdgo.Error
		return context.err();

	public function value(_key:AnyInterface):AnyInterface
		return context.value(_0);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_signalCtx(context, _cancel, _signals, _ch);
	}

	public function __set__(__tmp__) {
		this.context = __tmp__.context;
		this._cancel = __tmp__._cancel;
		this._signals = __tmp__._signals;
		this._ch = __tmp__._ch;
		return this;
	}
}

@:structInit @:local class T__struct_40 {
	@:embedded
	public var mutex:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _m:GoMap<Chan<stdgo.os.Os.Signal>, Pointer<T_handler>> = new GoMap<Chan<stdgo.os.Os.Signal>,
		Pointer<T_handler>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.chanType(1,
			stdgo.reflect.Reflect.GoType.named("os.Signal", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))),
		stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("os/signal.handler", [],
			stdgo.reflect.Reflect.GoType.named("os/signal.handler", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "_mask",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), 3)
				}
			]))))))).nil();
	public var _ref:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0...65) ((0 : GoInt64))]);
	public var _stopping:Slice<T_stopping> = new Slice<T_stopping>().nil();

	public function new(?mutex:stdgo.sync.Sync.Mutex, ?_m:GoMap<Chan<stdgo.os.Os.Signal>, Pointer<T_handler>>, ?_ref:GoArray<GoInt64>,
			?_stopping:Slice<T_stopping>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(mutex) + " " + Go.string(_m) + " " + Go.string(_ref) + " " + Go.string(_stopping) + "}";
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
		return new T__struct_40(mutex, _m, _ref, _stopping);
	}

	public function __set__(__tmp__) {
		this.mutex = __tmp__.mutex;
		this._m = __tmp__._m;
		this._ref = __tmp__._ref;
		this._stopping = __tmp__._stopping;
		return this;
	}
}

var _watchSignalLoop:() -> Void = null;
final _numSig:GoInt64 = ((65 : GoUnTypedInt));
var _handlers:T__struct_40 = new T__struct_40();
var _watchSignalLoopOnce:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();

/**
	// Stop relaying the signals, sigs, to any channels previously registered to
	// receive them and either reset the signal handlers to their original values
	// (action=disableSignal) or ignore the signals (action=ignoreSignal).
**/
function _cancel(_sigs:Slice<stdgo.os.Os.Signal>, _action:GoInt->Void):Void {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		_handlers.lock();
		deferstack.unshift(() -> _handlers.unlock());
		var _remove:GoInt->Void = function(_n:GoInt):Void {
			var _zerohandler:T_handler = new T_handler();
			{
				var _c;
				var _h;
				for (_obj in _handlers._m.keyValueIterator()) {
					_c = _obj.key;
					_h = _obj.value;
					if (_h.value._want(_n)) {
						_handlers._ref[_n]--;
						_h.value._clear(_n);
						if ({
							var bool = true;
							for (i in 0..._h.value._mask.length.toBasic()) {
								if (Go.toInterface(_h.value._mask[i]) != Go.toInterface(_zerohandler._mask[i])) {
									bool = false;
									break;
								};
							};
							bool;
						}) {
							_handlers._m.remove(_c);
						};
					};
				};
			};
			_action(_n);
		};
		if (_sigs.length == ((0 : GoInt))) {
			{
				var _n:GoInt = ((0 : GoInt));
				Go.cfor(_n < _numSig, _n++, {
					_remove(_n);
				});
			};
		} else {
			for (_s in _sigs) {
				_remove(_signum(_s));
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

/**
	// Ignore causes the provided signals to be ignored. If they are received by
	// the program, nothing will happen. Ignore undoes the effect of any prior
	// calls to Notify for the provided signals.
	// If no signals are provided, all incoming signals will be ignored.
**/
function ignore(_sig:haxe.Rest<stdgo.os.Os.Signal>):Void {
	var _sig = new Slice<stdgo.os.Os.Signal>(..._sig);
	_cancel(_sig, _ignoreSignal);
}

/**
	// Ignored reports whether sig is currently ignored.
**/
function ignored(_sig:stdgo.os.Os.Signal):Bool {
	var _sn:GoInt = _signum(_sig);
	return _sn >= ((0 : GoInt)) && _signalIgnored(_sn);
}

/**
	// Notify causes package signal to relay incoming signals to c.
	// If no signals are provided, all incoming signals will be relayed to c.
	// Otherwise, just the provided signals will.
	//
	// Package signal will not block sending to c: the caller must ensure
	// that c has sufficient buffer space to keep up with the expected
	// signal rate. For a channel used for notification of just one signal value,
	// a buffer of size 1 is sufficient.
	//
	// It is allowed to call Notify multiple times with the same channel:
	// each call expands the set of signals sent to that channel.
	// The only way to remove signals from the set is to call Stop.
	//
	// It is allowed to call Notify multiple times with different channels
	// and the same signals: each channel receives copies of incoming
	// signals independently.
**/
function notify(_c:Chan<stdgo.os.Os.Signal>, _sig:haxe.Rest<stdgo.os.Os.Signal>):Void {
	var _sig = new Slice<stdgo.os.Os.Signal>(..._sig);
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		if (_c == null || _c.isNil()) {
			throw "os/signal: Notify using nil channel";
		};
		_handlers.lock();
		deferstack.unshift(() -> _handlers.unlock());
		var _h:Pointer<T_handler> = _handlers._m[_c];
		if (_h == null || _h.isNil()) {
			if (_handlers._m == null || _handlers._m.isNil()) {
				_handlers._m = new GoMap<Chan<stdgo.os.Os.Signal>,
					Pointer<T_handler>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.chanType(1,
						stdgo.reflect.Reflect.GoType.named("os.Signal", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))),
					stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("os/signal.handler", [],
						stdgo.reflect.Reflect.GoType.named("os/signal.handler", [], stdgo.reflect.Reflect.GoType.structType([
							{
								name: "_mask",
								embedded: false,
								tag: "",
								type: stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.basic(uint32_kind), 3)
							}
						])))))));
			};
			_h = Go.pointer(new T_handler());
			_handlers._m[_c] = _h;
		};
		var _add:GoInt->Void = function(_n:GoInt):Void {
			if (_n < ((0 : GoInt))) {
				return;
			};
			if (!_h.value._want(_n)) {
				_h.value._set(_n);
				if (_handlers._ref[_n] == ((0 : GoInt64))) {
					_enableSignal(_n);
					_watchSignalLoopOnce.do_(function():Void {
						if (_watchSignalLoop != null) {
							Go.routine(_watchSignalLoop());
						};
					});
				};
				_handlers._ref[_n]++;
			};
		};
		if (_sig.length == ((0 : GoInt))) {
			{
				var _n:GoInt = ((0 : GoInt));
				Go.cfor(_n < _numSig, _n++, {
					_add(_n);
				});
			};
		} else {
			for (_s in _sig) {
				_add(_signum(_s));
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

/**
	// Reset undoes the effect of any prior calls to Notify for the provided
	// signals.
	// If no signals are provided, all signal handlers will be reset.
**/
function reset(_sig:haxe.Rest<stdgo.os.Os.Signal>):Void {
	var _sig = new Slice<stdgo.os.Os.Signal>(..._sig);
	_cancel(_sig, _disableSignal);
}

/**
	// Stop causes package signal to stop relaying incoming signals to c.
	// It undoes the effect of all prior calls to Notify using c.
	// When Stop returns, it is guaranteed that c will receive no more signals.
**/
function stop(_c:Chan<stdgo.os.Os.Signal>):Void {
	_handlers.lock();
	var _h:Pointer<T_handler> = _handlers._m[_c];
	if (_h == null || _h.isNil()) {
		_handlers.unlock();
		return;
	};
	_handlers._m.remove(_c);
	{
		var _n:GoInt = ((0 : GoInt));
		Go.cfor(_n < _numSig, _n++, {
			if (_h.value._want(_n)) {
				_handlers._ref[_n]--;
				if (_handlers._ref[_n] == ((0 : GoInt64))) {
					_disableSignal(_n);
				};
			};
		});
	};
	_handlers._stopping = _handlers._stopping.__append__(new T_stopping(_c, _h).__copy__());
	_handlers.unlock();
	_signalWaitUntilIdle();
	_handlers.lock();
	{
		var _i;
		var _s;
		for (_obj in _handlers._stopping.keyValueIterator()) {
			_i = _obj.key;
			_s = _obj.value;
			if (_s._c == _c) {
				_handlers._stopping = _handlers._stopping.__slice__(0, _i).__append__(..._handlers._stopping.__slice__(_i + ((1 : GoInt))).toArray());
				break;
			};
		};
	};
	_handlers.unlock();
}

/**
	// Wait until there are no more signals waiting to be delivered.
	// Defined by the runtime package.
**/
function _signalWaitUntilIdle():Void {}

function _process(_sig:stdgo.os.Os.Signal):Void {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		var _n:GoInt = _signum(_sig);
		if (_n < ((0 : GoInt))) {
			return;
		};
		_handlers.lock();
		deferstack.unshift(() -> _handlers.unlock());
		{
			var _c;
			var _h;
			for (_obj in _handlers._m.keyValueIterator()) {
				_c = _obj.key;
				_h = _obj.value;
				if (_h.value._want(_n)) {
					{
						_c.send(_sig);
						null;
					};
				};
			};
		};
		for (_d in _handlers._stopping) {
			if (_d._h.value._want(_n)) {
				{
					_d._c.send(_sig);
					null;
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

/**
	// NotifyContext returns a copy of the parent context that is marked done
	// (its Done channel is closed) when one of the listed signals arrives,
	// when the returned stop function is called, or when the parent context's
	// Done channel is closed, whichever happens first.
	//
	// The stop function unregisters the signal behavior, which, like signal.Reset,
	// may restore the default behavior for a given signal. For example, the default
	// behavior of a Go program receiving os.Interrupt is to exit. Calling
	// NotifyContext(parent, os.Interrupt) will change the behavior to cancel
	// the returned context. Future interrupts received will not trigger the default
	// (exit) behavior until the returned stop function is called.
	//
	// The stop function releases resources associated with it, so code should
	// call stop as soon as the operations running in this Context complete and
	// signals no longer need to be diverted to the context.
**/
function notifyContext(_parent:stdgo.context.Context.Context,
		_signals:haxe.Rest<stdgo.os.Os.Signal>):{var _0:stdgo.context.Context.Context; var _1:stdgo.context.Context.CancelFunc;} {
	var _signals = new Slice<stdgo.os.Os.Signal>(..._signals);
	var _ctx:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context)),
		_stop:stdgo.context.Context.CancelFunc = new stdgo.context.Context.CancelFunc();
	var __tmp__ = stdgo.context.Context.withCancel(_parent),
		_ctx:stdgo.context.Context.Context = __tmp__._0,
		_cancel:stdgo.context.Context.CancelFunc = __tmp__._1;
	var _c:Pointer<T_signalCtx> = Go.pointer((({
		context: _ctx,
		_cancel: _cancel.__copy__(),
		_signals: _signals,
		_ch: new Chan<stdgo.os.Os.Signal>(0, () -> ((null : stdgo.os.Os.Signal)), true)
	} : T_signalCtx)));
	_c.value._ch = new Chan<stdgo.os.Os.Signal>(((((1 : GoInt)) : GoInt)).toBasic(), () -> ((null : stdgo.os.Os.Signal)));
	notify(_c.value._ch, ..._c.value._signals.toArray());
	if (_ctx.err() == null) {
		Go.routine({
			var a = function():Void {
				{
					{
						_c.value._ch.get();
						_c.value._cancel.__t__();
					};
					_c.value.done().get();
				};
			};
			a();
		});
	};
	return {_0: _c.value, _1: new stdgo.context.Context.CancelFunc(_c.value._stop)};
}

/**
	// Defined by the runtime package.
**/
function _signal_disable(_0:GoUInt32):Void {}

function _signal_enable(_0:GoUInt32):Void {}
function _signal_ignore(_0:GoUInt32):Void {}

function _signal_ignored(_0:GoUInt32):Bool
	throw "not implemeneted";

function _signal_recv():GoUInt32
	throw "not implemeneted";

function _loop():Void {
	while (true) {
		_process(new stdgo.syscall.Syscall.Signal(_signal_recv()));
	};
}

function _signum(_sig:stdgo.os.Os.Signal):GoInt {
	if (Go.assertable(((_sig : stdgo.syscall.Syscall.Signal)))) {
		var _sig:stdgo.syscall.Syscall.Signal = _sig == null ? null : _sig.__underlying__() == null ? null : _sig == null ? null : _sig.__underlying__().value;
		var _i:GoInt = _sig.__t__;
		if (_i < ((0 : GoInt)) || _i >= _numSig) {
			return -((1 : GoUnTypedInt));
		};
		return _i;
	} else {
		var _sig:stdgo.os.Os.Signal = _sig == null ? null : _sig.__underlying__() == null ? null : _sig == null ? null : _sig.__underlying__().value;
		return -((1 : GoUnTypedInt));
	};
}

function _enableSignal(_sig:GoInt):Void {
	_signal_enable(((_sig : GoUInt32)));
}

function _disableSignal(_sig:GoInt):Void {
	_signal_disable(((_sig : GoUInt32)));
}

function _ignoreSignal(_sig:GoInt):Void {
	_signal_ignore(((_sig : GoUInt32)));
}

function _signalIgnored(_sig:GoInt):Bool {
	return _signal_ignored(((_sig : GoUInt32)));
}

@:keep var _ = {
	try {
		_watchSignalLoop = _loop;
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_handler_extension_fields {
	public function _want(__tmp__, _sig:GoInt):Bool
		return __tmp__._want(_sig);

	public function _set(__tmp__, _sig:GoInt):Void
		__tmp__._set(_sig);

	public function _clear(__tmp__, _sig:GoInt):Void
		__tmp__._clear(_sig);
}

class T_signalCtx_extension_fields {
	public function _stop(__tmp__):Void
		__tmp__._stop();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}
