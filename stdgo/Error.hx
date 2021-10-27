package stdgo;

import stdgo.GoString;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.StructType;

interface Error extends StructType {
	public function error():GoString;
}
