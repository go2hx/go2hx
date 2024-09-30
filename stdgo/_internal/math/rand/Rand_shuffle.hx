package stdgo._internal.math.rand;
function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        stdgo._internal.math.rand.Rand__globalRand._globalRand().shuffle(_n, _swap);
    }
