package stdgo._internal.slices;
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L436"
        for (__0 => _test in stdgo._internal.slices.Slices__indextests._indexTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L437"
            {
                var _got = (stdgo._internal.slices.Slices_containsfunc.containsFunc(_test._s, stdgo._internal.slices.Slices__equaltoindex._equalToIndex(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1), _test._v)) : Bool);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L438"
                    _t.errorf(("ContainsFunc(%v, equalToIndex(equal[int], %v)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("HI" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L443"
        {
            var _got = (stdgo._internal.slices.Slices_containsfunc.containsFunc(_s1, stdgo._internal.slices.Slices__equaltoindex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(key, value), ("HI" : stdgo.GoString))) : Bool);
            if (_got != (true)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L444"
                _t.errorf(("ContainsFunc(%v, equalToContains(equal[string], %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L446"
        {
            var _got = (stdgo._internal.slices.Slices_containsfunc.containsFunc(_s1, stdgo._internal.slices.Slices__equaltoindex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(key, value), ("hI" : stdgo.GoString))) : Bool);
            if (_got != (false)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L447"
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(false));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L449"
        {
            var _got = (stdgo._internal.slices.Slices_containsfunc.containsFunc(_s1, stdgo._internal.slices.Slices__equaltoindex._equalToIndex(stdgo._internal.strings.Strings_equalfold.equalFold, ("hI" : stdgo.GoString))) : Bool);
            if (_got != (true)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L450"
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
    }
