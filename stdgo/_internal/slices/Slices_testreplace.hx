package stdgo._internal.slices;
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_10.T__struct_10>(4, 4, ...[({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_10.T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_10.T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_10.T__struct_10), ({ _s : ({
            var a = function():stdgo.Slice<stdgo.GoInt> {
                var _s = (new stdgo.Slice<stdgo.GoInt>((3 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                _s[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _s[(1 : stdgo.GoInt)] = (1 : stdgo.GoInt);
                _s[(2 : stdgo.GoInt)] = (2 : stdgo.GoInt);
                return _s;
            };
            a();
        }), _v : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_10.T__struct_10)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_10.T__struct_10)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_10.T__struct_10>)) {
            var __0 = stdgo._internal.slices.Slices_clone.clone(_test._s), __1 = stdgo._internal.slices.Slices_clone.clone(_test._v);
var _vv = __1, _ss = __0;
            var _want = stdgo._internal.slices.Slices__naivereplace._naiveReplace(_ss, _test._i, _test._j, ...(_vv : Array<stdgo.GoInt>));
            var _got = stdgo._internal.slices.Slices_replace.replace(_test._s, _test._i, _test._j, ...(_test._v : Array<stdgo.GoInt>));
            if (!stdgo._internal.slices.Slices_equal.equal(_got, _want)) {
                @:check2r _t.errorf(("Replace(%v, %v, %v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
