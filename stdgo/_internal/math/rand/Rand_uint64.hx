package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
function uint64():stdgo.GoUInt64 {
        return stdgo._internal.math.rand.Rand__globalRand._globalRand().uint64();
    }
