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

@:eagar
typedef ErrorString = T_errorString;

var divideError:ErrorString = "integer divide by zero";
var overflowError:ErrorString = "integer overflow";
var floatError:ErrorString = "floating point error";
var memoryError:ErrorString = "invalid memory address or nil pointer dereference";
var shiftError:ErrorString = "negative shift amount";
@:named @:using(Runtime.T_errorString_static_extension) typedef T_errorString = GoString;

@:build(stdgo.internal.Macro.wrapper(T_errorString)) class T_errorString_static_extension {
	public static function error(_e:T_errorString):GoString {
		_e;
		return ((("runtime error: " : GoString))) + ((_e : GoString));
	}

	public static function runtimeError(_e:T_errorString):Void {
		_e;
	}
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

@:eager
typedef T_error = Error;

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
