package stdgo._internal.math.rand;
function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        @:check2r stdgo._internal.math.rand.Rand__globalrand._globalRand().shuffle(_n, _swap);
    }
