package stdgo._internal.slices;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equal.equal(_test._s1, _test._s2) : Bool);
                if (_got != (_test._wantEqual)) {
                    @:check2r _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
        };
    }
