package stdgo.sync;

import stdgo.StdGoTypes;
import stdgo.StdGoTypes;
import sys.thread.Lock;

typedef Pool = Dynamic;

typedef Locker = StructType & {
	public function lock():Void;
	public function unlock():Void;
}

class RWMutex {
	var mutux:sys.thread.Mutex;

	public function __underlying__():AnyInterface
		return null;

	public function new() {
		mutux = new sys.thread.Mutex();
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
	public function new() {}

	public function __underlying__():AnyInterface
		return null;

	var mutux:Mutex;

	public function lock() {}

	public function unlock() {}

	public function rlock() {}

	public function runlock() {}
}

class WaitGroup {
	var lock:Lock;

	var counter:GoUInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new() {
		lock = new Lock();
	}

	public function add(delta:GoInt) {
		counter += delta;
		if (counter < 0)
			throw "sync: negative WaitGroup counter";
		// TODO: check for overflow
		if (delta < 0)
			checkFinish();
	}

	public function done() {
		counter--;
		checkFinish();
	}

	public function wait() {
		lock.wait();
	}

	function checkFinish() {
		if (counter <= 0)
			lock.release();
	}
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
