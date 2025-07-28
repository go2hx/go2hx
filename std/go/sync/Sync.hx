package go.sync;

@:recv(Pool)
function _pinSlow()
	return {_0: null, _1: 0};

@:recv(Pool)
function get(_p) {
	var obj = @:define("target.threaded", @:privateAccess _p.pool.pop()) @:privateAccess _p.pool.pop(false);
	if (obj == null && @:privateAccess _p.new_ != null)
		obj = @:privateAccess _p.new_();
	return obj;
}

@:recv(Pool)
function put(_p, _x) {
	@:privateAccess _p.pool.push(_x);
}

function _runtime_procPin()
	return 0;

@:recv(Map_)
function _dirtyLocked() {
	trace("dirtyLocked not implemented");
}

@:recv(Map_)
function range(_m, _f) {
	for (key => value in @:privateAccess _m.map) {
		if (!_f(key, value))
			break;
	}
}

@:recv(Map_)
function load(_m, _key) {
	if (@:privateAccess _m.map.exists(_key)) {
		return {_0: @:privateAccess _m.map.get(_key), _1: true};
	}else{
		return {_0: null, _1: false};
	}
}

@:recv(Map_)
function store(_m, _key, _value) {
	@:privateAccess _m._mu.lock();
	@:privateAccess _m.map.set(_key, _value);
	@:privateAccess _m._mu.unlock();
}

@:recv(Map_)
function delete(_m, _key) {
	@:privateAccess _m._mu.lock();
	@:privateAccess _m.map.remove(_key);
	@:privateAccess _m._mu.unlock();
}

@:recv(Map_)
function swap(_m,_key,_value):{_0:go.AnyInterface, _1:Bool} {
	@:privateAccess _m._mu.lock();
	if (@:privateAccess _m.map.exists(_key)) {
		final oldValue = @:privateAccess _m.map.get(_key);
		@:privateAccess _m.map.set(_key, _value);
		@:privateAccess _m._mu.unlock();
		return {_0: oldValue, _1: true};
	}else{
		@:privateAccess _m.map.set(_key, _value);
		@:privateAccess _m._mu.unlock();
		return {_0: null, _1: false};
	}
}

@:recv(Map_)
function loadOrStore(_m,_key,_value):{_0:go.AnyInterface, _1:Bool} {
	@:privateAccess _m._mu.lock();
	if (@:privateAccess _m.map.exists(_key)) {
		final oldValue = @:privateAccess _m.map.get(_key);
		@:privateAccess _m._mu.unlock();
		return {_0: oldValue, _1: true};
	}else{
		@:privateAccess _m.map.set(_key, _value);
		@:privateAccess _m._mu.unlock();
		return {_0: _value, _1: false};
	}
}

@:recv(Map_)
function loadAndDelete(_m,_key,_value):{_0:go.AnyInterface, _1:Bool} {
	@:privateAccess _m._mu.lock();
	if (@:privateAccess _m.map.exists(_key)) {
		final oldValue = @:privateAccess _m.map.get(_key);
		@:privateAccess _m.map.remove(_key);
		@:privateAccess _m._mu.unlock();
		return {_0: oldValue, _1: true};
	}else{
		@:privateAccess _m._mu.unlock();
		return {_0: null, _1: false};
	}
}

@:recv(Cond)
overload extern inline function wait_(_c) {
	_c.l.unlock();
	@:privateAccess @:define("target.threaded") _c.cond.wait();
	_c.l.lock();
}

@:recv(Cond)
function broadcast(_c) {
	@:privateAccess @:define("target.threaded") _c.cond.broadcast();
}

@:recv(Cond)
function signal(_c) {
	@:privateAccess @:define("target.threaded") _c.cond.signal();
}

@:recv(RWMutex)
function rLock(_rw) {
	@:privateAccess @:define("target.threaded") _rw.rmutex.acquire();
}

@:recv(RWMutex)
function rUnlock(_m) {
	@:privateAccess @:define("target.threaded") _rw.rmutex.release();
}

@:recv(RWMutex)
function rTryLock(_rw):Bool {
	return @:privateAccess @:define("target.threaded", false) _rw.rmutex.tryAcquire();
}

@:recv(RWMutex)
function lock(_rw) {
	@:privateAccess @:define("target.threaded") _rw.wmutex.acquire();
}

@:recv(RWMutex)
function rLocker(_rw) {
	return @:privateAccess @:define("target.threaded") {
		{ lock : _rw.rmutex.acquire, unlock : _rw.rmutex.release, __underlying__: null};
	};
}

@:recv(RWMutex)
function unlock(_m) {
	@:privateAccess @:define("target.threaded") _rw.wmutex.release();
}

@:recv(RWMutex)
function tryLock(_m):Bool {
	return @:privateAccess @:define("target.threaded", false) _rw.wmutex.tryAcquire();
}

@:recv(Mutex)
function lock(_m) {
	@:privateAccess @:define("target.threaded") _m.mutex.acquire();
}

@:recv(Mutex)
function tryLock(_m):Bool {
	return @:privateAccess @:define("target.threaded", false) _m.mutex.tryAcquire();
}

@:recv(Mutex)
function unlock(_m) {
	@:privateAccess @:define("target.threaded") _m.mutex.release();
}

@:recv(WaitGroup)
function add(_wg, _delta) {
	@:define("target.threaded") {
		@:privateAccess _wg.mutex.acquire();
		@:privateAccess _wg.counter += _delta;
		@:privateAccess _wg.mutex.release();
	}
}

@:recv(WaitGroup)
function done(_wg) {
	@:define("target.threaded") {
		@:privateAccess _wg.mutex.acquire();
		@:privateAccess _wg.counter--;
		if (@:privateAccess _wg.counter < 0) {
			@:privateAccess _wg.mutex.release();
			throw "sync: negative WaitGroup counter";
		}
		@:privateAccess _wg.mutex.release();
	}
}

@:recv(WaitGroup)
overload extern inline function wait_(_wg) {
	@:define("target.threaded") {
		while (true) {
			if (@:privateAccess !_wg.mutex.tryAcquire()) {
				go._internal.internal.Async.tick();
				std.Sys.sleep(0.001);
				continue;
			}
			if (@:privateAccess _wg.counter <= 0) {
				@:privateAccess _wg.mutex.release();
				break;
			}
			@:privateAccess _wg.mutex.release();
			go._internal.internal.Async.tick();
			std.Sys.sleep(0.001);
		}
	};
}

@:recv(Once)
function do_(_o, _f) {
	if (@:privateAccess _o._done == 1)
		return;
	@:privateAccess _o._done = 1;
	_f();
}

function newCond(_l) {
	return {l: _l};
}
