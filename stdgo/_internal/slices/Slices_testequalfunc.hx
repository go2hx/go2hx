package stdgo._internal.slices;
function testEqualFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L91"
        for (__0 => _test in stdgo._internal.slices.Slices__equalinttests._equalIntTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L92"
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1)) : Bool);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L93"
                    _t.errorf(("EqualFunc(%v, %v, equal[int]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L96"
        for (__1 => _test in stdgo._internal.slices.Slices__equalfloattests._equalFloatTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L97"
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1)) : Bool);
                if (_got != (_test._wantEqual)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L98"
                    _t.errorf(("Equal(%v, %v, equal[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L100"
            {
                var _got = (stdgo._internal.slices.Slices_equalfunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equalnan._equalNaN(_0, _1)) : Bool);
                if (_got != (_test._wantEqualNaN)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L101"
                    _t.errorf(("Equal(%v, %v, equalNaN[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqualNaN));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L107"
        if (stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s1, stdgo._internal.slices.Slices__offbyone._offByOne)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L108"
            _t.errorf(("EqualFunc(%v, %v, offByOne) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s1));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L110"
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s2, stdgo._internal.slices.Slices__offbyone._offByOne)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L111"
            _t.errorf(("EqualFunc(%v, %v, offByOne) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2));
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L116"
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s3, _s4, stdgo._internal.strings.Strings_equalfold.equalFold)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L117"
            _t.errorf(("EqualFunc(%v, %v, strings.EqualFold) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4));
        };
        var _cmpIntString = (function(_v1:stdgo.GoInt, _v2:stdgo.GoString):Bool {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L121"
            return ((((_v1 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString) == (_v2);
        } : (stdgo.GoInt, stdgo.GoString) -> Bool);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L123"
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_s1, _s3, _cmpIntString)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L124"
            _t.errorf(("EqualFunc(%v, %v, cmpIntString) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3));
        };
    }
