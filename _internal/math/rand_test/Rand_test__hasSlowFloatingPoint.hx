package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function _hasSlowFloatingPoint():Bool {
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString))) {
                return stdgo._internal.os.Os_getenv.getenv(("GOARM" : stdgo.GoString)) == (("5" : stdgo.GoString));
            } else if (__value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
