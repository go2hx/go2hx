package stdgo._internal.slices;
function _makeSortedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L29"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _ints[(_i : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L32"
        return _ints;
    }
