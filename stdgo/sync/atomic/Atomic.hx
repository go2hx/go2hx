package stdgo.sync.atomic;

import haxe.Int32;
import haxe.Int64;
import stdgo.StdGoTypes;

var mutex = new sys.thread.Mutex();

function addInt32(addr:Pointer<GoInt32>, delta:GoInt32):GoInt32 {
	mutex.acquire();
	final value = addr.value += delta;
	mutex.release();
	return value;
}

function addInt64(addr:Pointer<GoInt64>, delta:GoInt64):GoInt64 {
	mutex.acquire();
	final value = addr.value += delta;
	mutex.release();
	return value;
}

function addUint32(addr:Pointer<GoUInt32>, delta:GoUInt32):GoUInt32 {
	mutex.acquire();
	final value = addr.value += delta;
	mutex.release();
	return value;
}

function addUint64(addr:Pointer<GoUInt64>, delta:GoUInt64):GoUInt64 {
	mutex.acquire();
	final value = addr.value += delta;
	mutex.release();
	return value;
}

function loadUint32(addr:Pointer<GoUInt32>):GoUInt32 {
	mutex.acquire();
	final value = addr.value;
	mutex.release();
	return value;
}

function loadUint64(addr:Pointer<GoUInt64>):GoUInt64 {
	mutex.acquire();
	final value = addr.value;
	mutex.release();
	return value;
}

function compareAndSwapUint32(addr:Pointer<GoUInt32>, old:GoUInt32, new_:GoUInt32):Bool {
	mutex.acquire();
	if (addr.value == old) {
		addr.value = new_;
		mutex.release();
		return true;
	}
	mutex.release();
	return false;
}

function swapUInt32(addr:Pointer<GoUInt32>, new_:GoUInt32):GoUInt32 {
	mutex.acquire();
	var old = addr.value;
	addr.value = new_;
	mutex.release();
	return old;
}

function storeUint32(addr:Pointer<GoUInt32>, val:GoUInt32) {
	mutex.acquire();
	addr.value = val;
	mutex.release();
}

function storeUint64(addr:Pointer<GoUInt64>, val:GoUInt64) {
	mutex.acquire();
	addr.value = val;
	mutex.release();
}

function storeInt32(addr:Pointer<GoInt32>, val:GoInt32) {
	mutex.acquire();
	addr.value = val;
	mutex.release();
}

function storeInt64(addr:Pointer<GoInt64>, val:GoInt64) {
	mutex.acquire();
	addr.value = val;
	mutex.release();
}

function storeUintptr(addr:Pointer<GoUIntptr>, val:GoUIntptr) {
	mutex.acquire();
	addr.value = val;
	mutex.release();
}
