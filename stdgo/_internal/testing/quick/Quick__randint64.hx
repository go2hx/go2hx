package stdgo._internal.testing.quick;
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L49"
        return (_rand.uint64() : stdgo.GoInt64);
    }
