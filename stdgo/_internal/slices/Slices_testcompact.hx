package stdgo._internal.slices;
function testCompact(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L715"
        for (__0 => _test in stdgo._internal.slices.Slices__compacttests._compactTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L717"
            {
                var _got = stdgo._internal.slices.Slices_compact.compact(_copy);
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L718"
                    _t.errorf(("Compact(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
