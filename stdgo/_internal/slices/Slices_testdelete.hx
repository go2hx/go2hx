package stdgo._internal.slices;
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L576"
        for (__0 => _test in stdgo._internal.slices.Slices__deletetests._deleteTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L578"
            {
                var _got = stdgo._internal.slices.Slices_delete.delete(_copy, _test._i, _test._j);
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L579"
                    _t.errorf(("Delete(%v, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
