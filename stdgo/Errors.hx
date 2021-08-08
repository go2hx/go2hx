package stdgo;

import haxe.Exception;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes;

inline function new_(message:GoString):Error {
	return new ErrorData(message);
}

private class ErrorData implements Error {
	var message:GoString;

	public function __underlying__():AnyInterface
		return null;

	public function new(message:GoString) {
		this.message = message;
	}

	public function error():GoString {
		return message;
	}
}
