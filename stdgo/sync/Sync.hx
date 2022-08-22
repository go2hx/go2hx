package stdgo.sync;

import stdgo.StdGoTypes;
#if (target.threaded)
import sys.thread.Deque;

@:structInit
class Pool {
	@:local
	var pool:Deque<AnyInterface> = null;

	public var new_:() -> AnyInterface = null;

	public var _victimSize:GoInt = 0;
	public var _victim:AnyInterface = null;
	public var _noCopy:stdgo.sync.T_noCopy = null;
	public var _localSize:GoInt = 0;
	public var _local:AnyInterface = null;

	public function new(new_ = null, _victimSize = null, _victim = null, _noCopy = null, _localSize = null, _local = null) {
		if (new_ != null)
			this.new_ = new_;
		if (_victimSize != null)
			this._victimSize = _victimSize;
		if (_victim != null)
			this._victim = _victim;
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (_localSize != null)
			this._localSize = _localSize;
		if (_local != null)
			this._local = _local;
		pool = new Deque();
	}

	public function get():AnyInterface {
		var obj = pool.pop(true);
		if (obj == null && new_ != null)
			obj = new_();
		return obj;
	}

	public function put(_p:AnyInterface) {
		pool.push(_p);
	}
}
#else
@:structInit
class Pool {
	public var new_:() -> AnyInterface = null;

	public var _victimSize:GoInt = 0;
	public var _victim:AnyInterface = null;
	public var _noCopy:stdgo.sync.T_noCopy = null;
	public var _localSize:GoInt = 0;
	public var _local:AnyInterface = null;

	public function new(new_ = null, _victimSize = null, _victim = null, _noCopy = null, _localSize = null, _local = null) {
		if (new_ != null)
			this.new_ = new_;
		if (_victimSize != null)
			this._victimSize = _victimSize;
		if (_victim != null)
			this._victim = _victim;
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (_localSize != null)
			this._localSize = _localSize;
		if (_local != null)
			this._local = _local;
	}

	public function get():AnyInterface {
		return null;
	}

	public function put(_p:AnyInterface) {}
}
#end

typedef Locker = StructType & {
	public function lock():Void;
	public function unlock():Void;
}

@:structInit
class RWMutex {
	@:local
	var mutex:sys.thread.Mutex;

	public function __underlying__():AnyInterface
		return null;

	public function new() {
		mutex = new sys.thread.Mutex();
	}

	public function lock() {}

	public function unlock() {}

	public function rlock() {}

	public function runlock() {}
}

@:structInit
class Map_ {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;

	public function delete(key:AnyInterface) {}

	public function load(key:AnyInterface)
		return {_0: null, _1: false};

	public function loadAndDelete(key:AnyInterface)
		return {_0: null, _1: false};

	public function loadOrStore(key:AnyInterface, value:AnyInterface)
		return {_0: null, _1: false};

	public function range(f:(key:AnyInterface, value:AnyInterface) -> Bool)
		return null;

	public function store(key:AnyInterface, value:AnyInterface) {}
}

// noCopy may be embedded into structs which must not be copied
// after the first use.
//
// See https://golang.org/issues/8005#issuecomment-190753527
// for details.

@:structInit
class Mutex {
	@:local
	var mutex:sys.thread.Mutex;

	public function new() {
		mutex = new sys.thread.Mutex();
	}

	public function __underlying__():AnyInterface
		return null;

	public function lock()
		mutex.acquire();

	public function tryLock():Bool
		return mutex.tryAcquire();

	public function _lockSlow() {}

	public function _unlockSlow(i:GoInt32) {}

	public function unlock()
		mutex.release();

	public function rlock() {}

	public function runlock() {}
}

@:structInit
class WaitGroup {
	var lock:sys.thread.Lock;

	var counter:GoUInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new()
		lock = new sys.thread.Lock();

	public function add(delta:GoInt) {
		counter += delta;
		if (counter < 0)
			throw "sync: negative WaitGroup counter";
	}

	public function done() {
		counter--;
		if (counter <= 0) {
			lock.release();
		}
	}

	public function wait_()
		lock.wait();
}

@:structInit
class T_noCopy {
	public function new() {}

	public function lock() {}

	public function unlock() {}
}

@:structInit
class Once {
	public var done:Bool = false;

	public function __underlying__():AnyInterface
		return null;

	public function new() {}

	public function do_(f:haxe.Constraints.Function) {
		if (done)
			return;
		done = true;
		f();
	}
}
