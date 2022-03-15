package stdgo.sync;

import stdgo.StdGoTypes;
import stdgo.StdGoTypes;

class Pool {
	public function new() {}

	public function get()
		return null;

	public function put()
		return null;
}

typedef Locker = StructType & {
	public function lock():Void;
	public function unlock():Void;
}

class RWMutex {
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

	public function unlock()
		mutex.release();

	public function rlock() {}

	public function runlock() {}
}

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

	public function wait()
		lock.wait();
}

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
