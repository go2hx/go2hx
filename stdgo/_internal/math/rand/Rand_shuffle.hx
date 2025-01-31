package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
function shuffle(_n:stdgo.GoInt, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void):Void {
        @:check2r stdgo._internal.math.rand.Rand__globalRand._globalRand().shuffle(_n, _swap);
    }
