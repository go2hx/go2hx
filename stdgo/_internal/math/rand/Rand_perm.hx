package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        return stdgo._internal.math.rand.Rand__globalRand._globalRand().perm(_n);
    }
