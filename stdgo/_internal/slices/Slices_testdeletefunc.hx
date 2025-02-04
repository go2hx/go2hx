package stdgo._internal.slices;
function testDeleteFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.slices.Slices__deletefunctests._deleteFuncTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            {
                var _got = stdgo._internal.slices.Slices_deletefunc.deleteFunc(_copy, _test._fn);
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    @:check2r _t.errorf(("DeleteFunc case %d: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
