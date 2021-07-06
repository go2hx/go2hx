package stdgo.unsafe;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUIntptr;
import stdgo.Pointer as BasePointer;
//Pointer -> uintptr
//Pointer -> pointer
class PointerData {
	public var get:() -> Dynamic;
	public var set:Dynamic->Dynamic;
	public var address:Int;

	public function new(get, set, address) {
		this.get = get;
		this.set = set;
		this.address = address;
	}

	public inline function toString() {
		return "* " + Std.string(get());
	}
}
abstract Pointer(PointerData) from PointerData {
	public inline function new(obj:PointerData) {
		this = obj;
	}
	@:to
	static function toAddress(x:Pointer):GoUIntptr {
		return 0;
	}
}

function sizeof(x:AnyInterface):GoUIntptr {
	return x.type.size();
}

function offsetof(x:AnyInterface):GoUIntptr {
	return 0;
}

function alignof(x:AnyInterface):GoUIntptr {
	return 0;
}
