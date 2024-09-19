package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
function newSource(_seed:stdgo.GoInt64):stdgo._internal.math.rand.Rand_Source.Source {
        return stdgo.Go.asInterface(stdgo._internal.math.rand.Rand__newSource._newSource(_seed));
    }
