package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function(_a:stdgo._internal.testing.quick.Quick_A.A):Bool {
            return true;
        } : stdgo._internal.testing.quick.Quick_A.A -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null);
    }
