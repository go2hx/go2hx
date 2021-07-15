package stdgo.unsafe;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUIntptr;
import stdgo.Pointer as BasePointer;

abstract Pointer(BasePointer<Dynamic>) from BasePointer<Dynamic> to BasePointer<Dynamic> {
	@:from static function fromUIntptr(value:GoUIntptr):Pointer {
		return Go.pointer(value);
	}

	@:to inline function toUIntptr():GoUIntptr {
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
