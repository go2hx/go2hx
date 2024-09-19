package stdgo._internal.slices;
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__indexTests._indexTests) {
            {
                var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_test._s, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, _1), _test._v)) : Bool);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    _t.errorf(("ContainsFunc(%v, equalToIndex(equal[int], %v)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("HI" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(("" : stdgo.GoString), key, value), ("HI" : stdgo.GoString))) : Bool);
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(equal[string], %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
        {
            var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(("" : stdgo.GoString), key, value), ("hI" : stdgo.GoString))) : Bool);
            if (_got != (false)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(false));
            };
        };
        {
            var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(stdgo._internal.strings.Strings_equalFold.equalFold, ("hI" : stdgo.GoString))) : Bool);
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
    }