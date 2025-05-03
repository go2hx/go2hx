package stdgo._internal.slices;
function _makeRandomInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L19"
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L21"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _ints[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn(_n);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L24"
        return _ints;
    }
