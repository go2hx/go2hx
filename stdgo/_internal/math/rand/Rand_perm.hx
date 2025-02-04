package stdgo._internal.math.rand;
function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        return @:check2r stdgo._internal.math.rand.Rand__globalrand._globalRand().perm(_n);
    }
