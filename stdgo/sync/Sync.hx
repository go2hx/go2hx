package stdgo.sync;

import sys.thread.Lock;
import stdgo.StdGoTypes;
import stdgo.StdGoTypes;
import sys.thread.Mutex;

class RWMutex implements StructType {
	var mutux:Mutex;

	public function __underlying__():AnyInterface
		return null;

	public function new() {
		mutux = new Mutex();
	}

	public function lock() {}

	public function unlock() {}

	public function rlock() {}

	public function runlock() {}
}

class Mutex implements StructType {
	public function __underlying__():AnyInterface
		return null;
	var mutux:Mutex;

	public function lock() {}

	public function unlock() {}

	public function rlock() {}

	public function runlock() {}
}

class WaitGroup implements StructType {
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

class Once implements StructType {
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
