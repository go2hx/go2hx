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
function put(_p) {
	@:privateAccess _p.pool.push(_x);
}

function _runtime_procPin()
	return 0;

@:recv(Map_)
function _dirtyLocked() {}

@:recv(Cond)
function wait_(_c) {
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

@:recv(Mutex)
function lock(_m) {
	@:privateAccess @:define("target.threaded") _m.mutex.acquire();
}

@:recv(Mutex)
function tryLock(_m) {
	@:privateAccess @:define("target.threaded") _m.mutex.tryAcquire();
}

@:recv(Mutex)
function unlock(_m) {
	@:privateAccess @:define("target.threaded") _m.mutex.release();
}

@:recv(WaitGroup)
function add(_wg) {
	@:define("target.threaded") {
		@:privateAccess _wg.mutex.acquire();
		@:privateAccess _wg.counter += _delta;
		if (@:privateAccess _wg.counter < 0) {
			@:privateAccess _wg.mutex.release();
			throw "sync: negative WaitGroup counter";
		}
		@:privateAccess _wg.mutex.release();
	}
}

@:recv(WaitGroup)
function done(_wg) {
	@:define("target.threaded") {
		@:privateAccess _wg.mutex.acquire();
		@:privateAccess _wg.counter--;
		if (@:privateAccess _wg.counter <= 0) {
			@:privateAccess _wg.lock.release();
		}
		@:privateAccess _wg.mutex.release();
	}
}

@:recv(WaitGroup)
function wait_(_wg) {
	@:define("target.threaded") {
		@:privateAccess @:define("target.threaded") _wg.lock.wait();
	}
}

@:recv(Once)
function do_(_o) {
	if (@:privateAccess _o._done == 1)
		return;
	@:privateAccess _o._done = 1;
	_f();
}
