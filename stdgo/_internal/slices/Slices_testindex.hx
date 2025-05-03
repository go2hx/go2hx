package stdgo._internal.slices;
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L378"
        for (__0 => _test in stdgo._internal.slices.Slices__indextests._indexTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L379"
            {
                var _got = (stdgo._internal.slices.Slices_index.index(_test._s, _test._v) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L380"
                    _t.errorf(("Index(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
