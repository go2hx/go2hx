package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (_err != null) {
            @:check2r _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_property), stdgo.Go.toInterface(_err));
        };
    }
