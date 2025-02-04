package stdgo._internal.testing.quick;
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt64 {
        return (@:check2r _rand.uint64() : stdgo.GoInt64);
    }
