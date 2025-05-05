package stdgo._internal.testing.quick;
function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat64 {
        var _f = (_rand.float64() * (1.7976931348623157e+308 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L41"
        if ((_rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            _f = -_f;
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick.go#L44"
        return _f;
    }
