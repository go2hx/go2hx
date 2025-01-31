package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt> {
        if (_a == null) {
            return (null : stdgo.Pointer<stdgo.GoInt>);
        };
        var _b = (_a.value : stdgo.GoInt);
        var _b__pointer__ = stdgo.Go.pointer(_b);
        var _b__pointer__ = stdgo.Go.pointer(_b);
        return _b__pointer__;
    }
