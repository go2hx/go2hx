package stdgo.errors;

import haxe.Exception;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes;

inline function new_(message:GoString):Error {
	return new ErrorData(message);
}

private class ErrorData {
	public function error():GoString {
		return message;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	var message:GoString;

	public function new(message:GoString) {
		this.message = message;
	}
}
