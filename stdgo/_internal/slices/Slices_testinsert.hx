package stdgo._internal.slices;
function testInsert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L488"
        {
            var _got = stdgo._internal.slices.Slices_insert.insert(_s, (0 : stdgo.GoInt));
            if (!stdgo._internal.slices.Slices_equal.equal(_got, _s)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L489"
                _t.errorf(("Insert(%v, 0) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_s));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L491"
        for (__0 => _test in stdgo._internal.slices.Slices__inserttests._insertTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L493"
            {
                var _got = stdgo._internal.slices.Slices_insert.insert(_copy, _test._i, ...(_test._add : Array<stdgo.GoInt>));
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L494"
                    _t.errorf(("Insert(%v, %d, %v...) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._add), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L498"
        if ((!stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff() && true : Bool)) {
            {};
            var _n = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L503"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (50 : stdgo.GoInt) : Bool)) {
                        _s = stdgo._internal.slices.Slices_insert.insert(_s, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
                        _i++;
                    };
                };
            }) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L507"
            if ((_n > (25 : stdgo.GoFloat64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L508"
                _t.errorf(("too many allocations inserting %d elements: got %v, want less than %d" : stdgo.GoString), stdgo.Go.toInterface((50 : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((25 : stdgo.GoInt)));
            };
        };
    }
