package stdgo.unsafe;

import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoUIntptr;

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
