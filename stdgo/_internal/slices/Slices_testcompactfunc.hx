package stdgo._internal.slices;
function testCompactFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__compacttests._compactTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            {
                var _got = stdgo._internal.slices.Slices_compactfunc.compactFunc(_copy, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1));
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    @:check2r _t.errorf(("CompactFunc(%v, equal[int]) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("a" : stdgo.GoString), ("a" : stdgo.GoString), ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _copy = stdgo._internal.slices.Slices_clone.clone(_s1);
        var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("B" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got = stdgo._internal.slices.Slices_compactfunc.compactFunc(_copy, stdgo._internal.strings.Strings_equalfold.equalFold);
            if (!stdgo._internal.slices.Slices_equal.equal(_got, _want)) {
                @:check2r _t.errorf(("CompactFunc(%v, strings.EqualFold) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
