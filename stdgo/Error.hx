package stdgo;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;


private var _divideError:Error = stdgo._internal.math.bits.Bits__divideerror._divideError;
private var _overflowError:Error = stdgo._internal.math.bits.Bits__overflowerror._overflowError;

typedef Error = StructType & {
	public dynamic function error():GoString;
};