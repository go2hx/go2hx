package stdgo.sync;

import sys.thread.Lock;
import stdgo.StdGoTypes;
import stdgo.StdGoTypes;
import sys.thread.Mutex;

class RWMutex implements StructType {
	var mutux:Mutex;
	public var _address_:Int = 0;

	public function new() {
		mutux = new Mutex();
		_address_ = Go.addressIndex++;
	}

	public function lock() {}

	public function unlock() {}

	public function rlock() {}

	public function runlock() {}
}

class WaitGroup implements StructType {

	var lock:Lock;
	public var _address_:Int = 0;

	var counter:GoUInt = 0;

	public function new() {
		_address_ = Go.addressIndex++;
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
	public var _address_:Int;
	public var done:Bool = false;
	public function new() {
		_address_ = Go.addressIndex++;
	}
	public function do_(f:haxe.Constraints.Function) {
		if (done)
			return;
		done = true;
		f();
	}
}
