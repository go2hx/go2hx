package stdgo._internal.slices;
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = (1000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (_n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn((100 : stdgo.GoInt));
                _i++;
            };
        };
        if (stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            @:check2r _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        stdgo._internal.slices.Slices_sort.sort(_data);
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            @:check2r _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
