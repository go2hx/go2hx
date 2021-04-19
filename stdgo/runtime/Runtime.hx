package stdgo.runtime;

import stdgo.Pointer.PointerWrapper;
import stdgo.StdGoTypes.GoUIntptr;
import stdgo.GoArray;
import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.StructType;
#if hl
import hl.Gc;
#elseif cpp
import cpp.vm.Gc;
#elseif eval
import eval.vm.Gc;
#elseif java
import java.vm.Gc;
#end
import stdgo.StdGoTypes.GoUInt64;

var memProfileRate:Int = 0;
var compiler:GoString = "gccgo";
var goarch:GoString = "";

function gc() {
	// run garbage collector
}

function memProfile(p:Slice<MemProfileRecord>, inUseZero:Bool):{n:GoInt, ok:Bool} {
	return {n: 0, ok: false};
}

function setFinalizer(obj:AnyInterface, finalizer:AnyInterface) {}

function gosched() {
	// yields the current processor
}

function numGoroutine() {
	return 0;
}

function gomaxprocs(num:GoInt):GoInt {
	return num;
}

function callersFrames(callers:Slice<GoUIntptr>):PointerWrapper<Frames> {
	var f = new Frames();
	return Go.pointer(f);
}

function newRuntime(message:String):Error {
	return new RuntimeErrorData(message);
}

private class RuntimeErrorData implements Error {
	var message:String;

	public function new(message:String) {
		this.message = message;
	}

	public function error():GoString {
		return message;
	}

	public function runtimeError():Void {}
}

function keepAlive(x:AnyInterface) {}

interface Error extends stdgo.StdGoTypes.Error {
	public function runtimeError():Void;
	public function error():String;
}

class Frames implements StructType {
	public var _is_pointer_:Bool = false;
	public var _address_:Int = 0;
	public final _typeName_ = "Frames";

	public function new() {
		_address_ = Go.addressIndex++;
	}

	public function next():{frame:Frame, more:Bool} {
		return {frame: new Frame(), more: false};
	}
}

class Frame implements StructType {
	public var _is_pointer_:Bool = false;
	public var _address_:Int = 0;
	public final _typeName_ = "Frame";
	public var function_:GoString = "frame";
	public var line:GoInt = 0;

	public function new() {
		_address_ = Go.addressIndex++;
	}
}

class MemStats implements StructType {
	public var alloc(get, null):GoUInt64;
	public var _is_pointer_:Bool = false;
	public var _address_:Int = 0;
	public final _typeName_:String = "MemStats";

	function get_alloc():GoUInt64 {
		return 0;
	}

	public var totalAlloc(get, null):GoUInt64;

	function get_totalAlloc():GoUInt64 {
		return 0;
	}

	public var sys(get, null):GoUInt64;

	function get_sys():GoUInt64 {
		return 0;
	}

	public var mallocs(get, null):GoUInt64;

	function get_mallocs():GoUInt64 {
		return 0;
	}

	public var frees(get, null):GoUInt64;

	function get_frees():GoUInt64 {
		return 0;
	}

	public var heapAlloc(get, null):GoUInt64;

	function get_heapAlloc():GoUInt64 {
		return 0;
	}

	public var heapSys(get, null):GoUInt64;

	function get_heapSys():GoUInt64 {
		return 0;
	}
}

class MemProfileRecord {
	public var allocBytes:GoInt64 = 0;
	public var allocObjects:GoInt64 = 0;
	public var freeBytes:GoInt64 = 0;
	public var freeObjects:GoInt64 = 0;
	public var stack0 = new GoArray<GoUIntptr>(...[for (i in 0...32) 0]);
}
