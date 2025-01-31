package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function uint64():stdgo.GoUInt64 {
        return @:check2r stdgo._internal.math.rand.Rand__globalRand._globalRand().uint64();
    }
