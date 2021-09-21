package stdgo.unsafe;

import stdgo.Pointer;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUIntptr;

typedef Pointer_ = UnsafePointer;

abstract UnsafePointer(Pointer<Dynamic>) from Pointer<Dynamic> to Pointer<Dynamic> {
	@:from static function fromUIntptr(value:GoUIntptr):UnsafePointer {
		return Go.pointer(value);
	}

	@:to inline function toPointer<T>():Pointer<T> {
		return cast this;
	}

	@:to inline function toUIntptr():GoUIntptr {
		return this.value;
	}

	@:to inline function toDynamic():Dynamic {
		return this.value;
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
