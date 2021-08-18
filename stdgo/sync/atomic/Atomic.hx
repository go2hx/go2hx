package stdgo.sync;

import haxe.Int32;
import haxe.Int64;
import stdgo.StdGoTypes;

function addInt32(addr:Pointer<GoInt32>, delta:GoInt32):GoInt32 {
	return addr._value_ + delta;
}

function addInt64(addr:Pointer<GoInt64>, delta:GoInt64):GoInt64 {
	return addr._value_ + delta;
}

function addUInt32(addr:Pointer<GoUInt32>, delta:GoUInt32):GoUInt32 {
	return addr._value_ + delta;
}

function addUInt64(addr:Pointer<GoUInt64>, delta:GoUInt64):GoUInt64 {
	return addr._value_ + delta;
}

function compareAndSwapUInt32(addr:Pointer<GoUInt32>, old:GoUInt32, new_:GoUInt32):Bool {
	if (addr._value_ == old) {
		addr._value_ = new_;
		return true;
	}
	return false;
}

function swapUInt32(addr:Pointer<GoUInt32>, new_:GoUInt32):GoUInt32 {
	var old = addr._value_;
	addr._value_ = new_;
	return old;
}
