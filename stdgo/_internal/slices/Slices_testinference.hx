package stdgo._internal.slices;
function testInference(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.slices.Slices__apply._apply(_s1, stdgo._internal.slices.Slices_reverse.reverse);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!stdgo._internal.slices.Slices_equal.equal(_s1, _want)) {
                @:check2r _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {};
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices_t_testinference___localname___s_22782.T_testInference___localname___S_22782);
        stdgo._internal.slices.Slices__apply._apply(_s2, stdgo._internal.slices.Slices_reverse.reverse);
        {
            var _want = ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices_t_testinference___localname___s_22782.T_testInference___localname___S_22782) : stdgo._internal.slices.Slices_t_testinference___localname___s_22782.T_testInference___localname___S_22782);
            if (!stdgo._internal.slices.Slices_equal.equal(_s2, _want)) {
                @:check2r _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices_t_testinference___localname___s_22782.T_testInference___localname___S_22782)), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
    }
