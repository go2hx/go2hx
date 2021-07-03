package stdgo.unsafe;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUIntptr;
import stdgo.Pointer as BasePointer;

abstract Pointer(BasePointer<Dynamic>) to BasePointer<Dynamic> from BasePointer<Dynamic> {
	public function new(obj) {
		this = new Pointer(obj);
	}
}


typedef ArbitraryType = AnyInterface;

function sizeof(x:ArbitraryType):GoUIntptr {
	return 0;
}

function offsetof(x:ArbitraryType):GoUIntptr {
	return 0;
}

function alignof(x:ArbitraryType):GoUIntptr {
	return 0;
}
