package stdgo._internal.math.rand;
function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/rand/rand.go#L470"
        stdgo._internal.math.rand.Rand__globalrand._globalRand().shuffle(_n, _swap);
    }
