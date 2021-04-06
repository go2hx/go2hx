package stdgo.errors;

import haxe.Exception;
import stdgo.StdGoTypes;

inline function new_(message:String):Error {
	return new ErrorData(message);
}

private class ErrorData implements Error {
	var message:String;

	public function new(message:String) {
		this.message = message;
	}

	public function error():GoString {
		return message;
	}
}
