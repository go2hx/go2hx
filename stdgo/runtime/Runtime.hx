package stdgo.runtime;

import stdgo.GoArray;
import stdgo.StdGoTypes;
#if hl
import hl.Gc;
#elseif cpp
import cpp.vm.Gc;
#elseif eval
import eval.vm.Gc;
#elseif java
import java.vm.Gc;
#end

var memProfileRate:Int = 0;
var compiler:GoString = "gccgo";
final goarch:GoString = "wasm";
var goos:GoString = "";

function gc() {
	// run garbage collector
}

function breakpoint() {
	throw "break";
}

function memProfile(p:Slice<MemProfileRecord>, inUseZero:Bool):{_0:GoInt, _1:Bool} {
	return {_0: 0, _1: false};
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

function goexit() {}

function callersFrames(callers:Slice<GoUIntptr>):Pointer<Frames> {
	var f = new Frames();
	return Go.pointer(f);
}

function newRuntime(message:GoString):Error {
	return new RuntimeErrorData(message);
}

private class RuntimeErrorData implements Error implements StructType {
	public function __underlying__():AnyInterface
		return null;

	var message:GoString;

	public function new(message:GoString) {
		this.message = message;
	}

	public function error():GoString {
		return message;
	}

	public function toString():String {
		return message;
	}

	public function runtimeError():Void {}
}

function keepAlive(x:AnyInterface) {}

interface Error {
	public function __underlying__():AnyInterface;
	public function runtimeError():Void;
	public function error():GoString;
}

class Frames implements StructType {
	public function __underlying__():AnyInterface
		return null;

	public function new() {}

	public function next():{_0:Frame, _1:Bool} {
		return {_0: new Frame(), _1: false};
	}
}

class Frame implements StructType {
	public var function_:GoString = "frame";
	public var line:GoInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new() {}
}

class MemStats implements StructType {
	public var alloc(get, null):GoUInt64;

	public function __underlying__():AnyInterface
		return null;

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

function goroot():GoString
	return "";

function readMemStats(m:Pointer<MemStats>) {}

class MemProfileRecord {
	public var allocBytes:GoInt64 = 0;
	public var allocObjects:GoInt64 = 0;
	public var freeBytes:GoInt64 = 0;
	public var freeObjects:GoInt64 = 0;
	public var stack0 = new GoArray<GoUIntptr>(...[for (i in 0...32) 0]);
}
