package stdgo._internal.testing.quick;
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.GoInt64 {
        return (_rand.uint64() : stdgo.GoInt64);
    }
