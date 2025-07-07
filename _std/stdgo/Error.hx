package stdgo;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;


private var _divideError:Error = new T_errorString_asInterface("integer divide by zero");
private var _overflowError:Error = new T_errorString_asInterface("integer overflow");

typedef Error = StructType & {
	public dynamic function error():GoString;
};

class T_errorString_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return "runtime error: " + errorString;
    @:keep
    @:tdfield
    public dynamic function runtimeError():Void  {}
    public function new(errorString:stdgo.GoString) {
		this.errorString = errorString;
    }
    var errorString:stdgo.GoString = "";
    public function __underlying__()  {
      // TODO set type
      return new AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(null));
    }
}
