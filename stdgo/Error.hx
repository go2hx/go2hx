package stdgo;

import stdgo.GoString;
import stdgo.StdGoTypes;

@:named typedef Error = StructType & {
	public function error():GoString;
}

/**
	// An errorString represents a runtime error described by a single string.
**/
@:named @:using(stdgo.Error.T_errorString_static_extension) private typedef T_errorString = GoString;

private var _overflowError:RuntimeError = new T_errorString_asInterface("integer overflow");
private var _divideError:RuntimeError = new T_errorString_asInterface("integer divide by zero");
private var _shiftError:RuntimeError = new T_errorString_asInterface("negative shift amount");
private var _floatError:RuntimeError = new T_errorString_asInterface("floating point error");
private var _memoryError:RuntimeError = new T_errorString_asInterface("invalid memory address or nil pointer dereference");

@:named typedef RuntimeError = StructType & {
	public function error():GoString;
	public function runtimeError():Void;
}

class T_errorString_asInterface {
	@:keep
	public function error():GoString
		return __self__.error();

	@:keep
	public function runtimeError():Void
		__self__.runtimeError();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_errorString;
}

@:keep private class T_errorString_static_extension {
	@:keep
	static public function error(_e:T_errorString):GoString {
		return Go.str("runtime error: ") + (_e : GoString);
	}

	@:keep
	static public function runtimeError(_e:T_errorString):Void {}
}
