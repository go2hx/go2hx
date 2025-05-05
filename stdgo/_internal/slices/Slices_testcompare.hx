package stdgo._internal.slices;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intWant = (function(_want:Bool):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L252"
            if (_want) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L253"
                return ("0" : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L255"
            return ("!= 0" : stdgo.GoString);
        } : Bool -> stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L257"
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L258"
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L259"
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L262"
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L263"
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqualNaN)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L264"
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqualNaN)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L268"
        for (__2 => _test in stdgo._internal.slices.Slices__compareinttests._compareIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L269"
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L270"
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L273"
        for (__3 => _test in stdgo._internal.slices.Slices__comparefloattests._compareFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L274"
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L275"
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
