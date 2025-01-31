package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.testing.quick.Quick__reportError._reportError(("myStructProperty" : stdgo.GoString), stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__myStructProperty._myStructProperty), null), _t);
    }
