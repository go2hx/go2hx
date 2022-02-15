package stdgo.sync.atomic;

import haxe.Int32;
import haxe.Int64;
import stdgo.StdGoTypes;

function addInt32(addr:Pointer<GoInt32>, delta:GoInt32):GoInt32 {
	return addr.value + delta;
}

function addInt64(addr:Pointer<GoInt64>, delta:GoInt64):GoInt64 {
	return addr.value + delta;
}

function addUint32(addr:Pointer<GoUInt32>, delta:GoUInt32):GoUInt32 {
	return addr.value + delta;
}

function addUint64(addr:Pointer<GoUInt64>, delta:GoUInt64):GoUInt64 {
	return addr.value + delta;
}

function loadUint32(addr:Pointer<GoUInt32>):GoUInt32
	return addr.value;

function loadUint64(addr:Pointer<GoUInt64>):GoUInt64
	return addr.value;

function compareAndSwapUint32(addr:Pointer<GoUInt32>, old:GoUInt32, new_:GoUInt32):Bool {
	if (addr.value == old) {
		addr.value = new_;
		return true;
	}
	return false;
}

function swapUInt32(addr:Pointer<GoUInt32>, new_:GoUInt32):GoUInt32 {
	var old = addr.value;
	addr.value = new_;
	return old;
}
