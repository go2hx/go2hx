package stdgo._internal.slices;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L62"
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L63"
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L64"
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L67"
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L68"
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._wantEqual)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L69"
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
        };
    }
