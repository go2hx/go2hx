package stdgo.encoding.json;

import stdgo.GoString;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef Unmarshaler = StructType & {}

function marshal(v:AnyInterface):{_0:Slice<GoByte>, _1:Error} {
	final str:GoString = haxe.Json.stringify(v.value);
	return {_0: str, _1: null};
}
