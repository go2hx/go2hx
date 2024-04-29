package stdgo;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;


private var _shiftError:Error = Go.asInterface((Go.str("negative shift amount") : T_errorString));
private var _divideError:Error = Go.asInterface((Go.str("integer divide by zero") : T_errorString));
private var _overflowError:Error = Go.asInterface((Go.str("integer overflow") : T_errorString));
private var _floatError:Error = Go.asInterface((Go.str("floating point error") : T_errorString));
private var _memoryError:Error = Go.asInterface((Go.str("invalid memory address or nil pointer dereference") : T_errorString));

typedef Error = StructType & {
	public dynamic function error():GoString;
};

/**
	// An errorString represents a runtime error described by a single string.
**/
@:named @:using(Error.T_errorString_static_extension) private typedef T_errorString = GoString;

class T_errorString_asInterface {
	@:keep
	public dynamic function error():GoString
		return __self__.value.error();

	@:keep
	public dynamic  function runtimeError():Void
		__self__.value.runtimeError();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo._internal.reflect.Reflect.ptr
			&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_errorString>;
	var __type__:stdgo._internal.internal.reflect.Reflect._Type;
}

@:keep @:allow(Error.T_errorString_asInterface) class T_errorString_static_extension {
	@:keep
	static public function error(_e:T_errorString):GoString {
		return ("runtime error: " : String) + (_e : String);
	}

	@:keep
	static public function runtimeError(_e:T_errorString):Void {}
}
