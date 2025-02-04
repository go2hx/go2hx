package stdgo._internal.math.rand;
function newSource(_seed:stdgo.GoInt64):stdgo._internal.math.rand.Rand_source.Source {
        return stdgo.Go.asInterface(stdgo._internal.math.rand.Rand__newsource._newSource(_seed));
    }
