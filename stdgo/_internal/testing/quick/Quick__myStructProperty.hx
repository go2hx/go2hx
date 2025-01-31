package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _myStructProperty(_in:stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct):Bool {
        return _in._x == ((42 : stdgo.GoInt));
    }
