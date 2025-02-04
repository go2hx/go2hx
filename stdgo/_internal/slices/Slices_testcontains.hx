package stdgo._internal.slices;
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__indextests._indexTests) {
            {
                var _got = (stdgo._internal.slices.Slices_contains.contains(_test._s, _test._v) : Bool);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    @:check2r _t.errorf(("Contains(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
    }
