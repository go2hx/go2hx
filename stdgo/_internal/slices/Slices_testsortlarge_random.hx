package stdgo._internal.slices;
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (1000000 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L78"
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (_n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L82"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn((100 : stdgo.GoInt));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L85"
        if (stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L86"
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L88"
        stdgo._internal.slices.Slices_sort.sort(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L89"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L90"
            _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
