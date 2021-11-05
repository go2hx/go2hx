package stdgo;

import stdgo.GoString;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.StructType;

typedef Error = StructType & {
	public function error():GoString;
}
