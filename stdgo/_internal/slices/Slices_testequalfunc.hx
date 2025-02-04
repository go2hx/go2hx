package stdgo._internal.slices;
function testEqualFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1)) : Bool);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("EqualFunc(%v, %v, equal[int]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1)) : Bool);
                if (_got != (_test._wantEqual)) {
                    @:check2r _t.errorf(("Equal(%v, %v, equal[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equalnan._equalNaN(_0, _1)) : Bool);
                if (_got != (_test._wantEqualNaN)) {
                    @:check2r _t.errorf(("Equal(%v, %v, equalNaN[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqualNaN));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s1, stdgo._internal.slices.Slices__offbyone._offByOne)) {
            @:check2r _t.errorf(("EqualFunc(%v, %v, offByOne) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s1));
        };
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s2, stdgo._internal.slices.Slices__offbyone._offByOne)) {
            @:check2r _t.errorf(("EqualFunc(%v, %v, offByOne) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2));
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s3, _s4, stdgo._internal.strings.Strings_equalfold.equalFold)) {
            @:check2r _t.errorf(("EqualFunc(%v, %v, strings.EqualFold) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4));
        };
        var _cmpIntString = (function(_v1:stdgo.GoInt, _v2:stdgo.GoString):Bool {
            return ((((_v1 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString) == (_v2);
        } : (stdgo.GoInt, stdgo.GoString) -> Bool);
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s3, _cmpIntString)) {
            @:check2r _t.errorf(("EqualFunc(%v, %v, cmpIntString) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3));
        };
    }
