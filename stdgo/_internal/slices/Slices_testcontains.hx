package stdgo._internal.slices;
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L428"
        for (__0 => _test in stdgo._internal.slices.Slices__indextests._indexTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L429"
            {
                var _got = (stdgo._internal.slices.Slices_contains.contains(_test._s, _test._v) : Bool);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L430"
                    _t.errorf(("Contains(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
    }
