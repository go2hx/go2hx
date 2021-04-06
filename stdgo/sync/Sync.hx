package stdgo.sync;

import sys.thread.Lock;
import stdgo.StdGoTypes;
import stdgo.StdGoTypes;
import sys.thread.Mutex;

class RWMutex implements StructType {
	var mutux:Mutex;

	public var _is_pointer_:Bool = false;
	public final _typeName_:String = "RWMutex";
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
	public var _is_pointer_:Bool = false;
	var lock:Lock;
	public final _typeName_:String = "WaitGroup";
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
		//TODO: check for overflow
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