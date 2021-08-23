package stdgo.encoding.json;

import stdgo.GoString;
import stdgo.Slice;
import stdgo.StdGoTypes;

function marshal(v:AnyInterface):{v0:Slice<GoByte>, v1:Error} {
	return {v0: ((haxe.Json.stringify(v.value) : GoString) : Slice<GoByte>), v1: null};
}
