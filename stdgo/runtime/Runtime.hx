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

var divideError:Error = new T_errorString("integer divide by zero");
var overflowError:Error = new T_errorString("integer overflow");
var floatError:Error = new T_errorString("floating point error");
var memoryError:Error = new T_errorString("invalid memory address or nil pointer dereference");
var shiftError:Error = new T_errorString("negative shift amount");

@:named class T_errorString {
	public function error():GoString {
		var _e = this.__copy__();
		return ((("runtime error: " : GoString))) + _e.__t__;
	}

	public function runtimeError():Void {
		var _e = this.__copy__();
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_errorString(__t__);
}

class T_errorString_extension_fields {
	public function runtimeError(__tmp__):Void
		__tmp__.runtimeError();

	public function error(__tmp__):GoString
		return __tmp__.error();
}

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

private class RuntimeErrorData {
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
@:eager typedef T_error = Error;

typedef Error = StructType &
	stdgo.Error & {
	public function runtimeError():Void;
}

class Frames {
	public function __underlying__():AnyInterface
		return null;

	public function new() {}

	public function next():{_0:Frame, _1:Bool} {
		return {_0: new Frame(), _1: false};
	}
}

class Frame {
	public var function_:GoString = "frame";
	public var line:GoInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new() {}
}

class MemStats {
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
