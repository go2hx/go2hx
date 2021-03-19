package stdgo.errors;

import haxe.Exception;

typedef Error = Dynamic;

inline function new_(message:String):Error {
	return new ErrorData(message);
}

class ErrorData {
	var message:String;

	public function new(message:String) {
		this.message = message;
	}
}
