package stdgo._internal.slices;
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__deletetests._deleteTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            {
                var _got = stdgo._internal.slices.Slices_delete.delete(_copy, _test._i, _test._j);
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    @:check2r _t.errorf(("Delete(%v, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
