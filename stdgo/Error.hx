package stdgo;

import stdgo.GoString;
import stdgo.StdGoTypes.AnyInterface;

interface Error {
	public function __underlying__():AnyInterface;
	public function error():GoString;
}
