package stdgo.runtime;

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
function gc() {
	//run garbage collector
}
function setFinalizer(obj:AnyInterface,finalizer:AnyInterface) {

}
function gosched() {
	//yields the current processor
}
function numGoroutine() {
	return 0;
}
function gomaxprocs(num:GoInt):GoInt {
	return num;
}
function keepAlive(x:AnyInterface) {}

interface Error extends stdgo.StdGoTypes.Error {
	public function runtimeError():Void;
	public function error():String;
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
