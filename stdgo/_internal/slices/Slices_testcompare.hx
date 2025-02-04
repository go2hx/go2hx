package stdgo._internal.slices;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intWant = (function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        } : Bool -> stdgo.GoString);
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqualNaN)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqualNaN)));
                };
            };
        };
        for (__2 => _test in stdgo._internal.slices.Slices__compareinttests._compareIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__3 => _test in stdgo._internal.slices.Slices__comparefloattests._compareFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_compare.compare(_test._s1, _test._s2) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
