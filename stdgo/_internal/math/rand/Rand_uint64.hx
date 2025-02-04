package stdgo._internal.math.rand;
function uint64():stdgo.GoUInt64 {
        return @:check2r stdgo._internal.math.rand.Rand__globalrand._globalRand().uint64();
    }
