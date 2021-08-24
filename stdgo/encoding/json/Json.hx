package stdgo.encoding.json;

import stdgo.GoString;
import stdgo.Slice;
import stdgo.StdGoTypes;

function marshal(v:AnyInterface):{v0:Slice<GoByte>, v1:Error} {
	final str:GoString = haxe.Json.stringify(v.value);
	return {v0: str, v1: null};
}
