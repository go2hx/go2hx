package stdgo.errors;

import haxe.Exception;
import stdgo.StdGoTypes;
import stdgo.StdGoTypes.AnyInterface;

inline function new_(message:String):Error {
	return new ErrorData(message);
}

private class ErrorData implements Error {
	var message:String;

	public function __underlying__():AnyInterface
		return null;

	public function new(message:String) {
		this.message = message;
	}

	public function error():GoString {
		return message;
	}
}
