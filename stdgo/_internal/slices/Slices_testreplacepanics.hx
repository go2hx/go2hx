package stdgo._internal.slices;
function testReplacePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_11.T__struct_11>(3, 3, ...[({ _name : ("indexes out of order" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_11.T__struct_11), ({ _name : ("large index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (10 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_11.T__struct_11), ({ _name : ("negative index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (-1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_11.T__struct_11)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_11.T__struct_11)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_11.T__struct_11>)) {
            var __0 = stdgo._internal.slices.Slices_clone.clone(_test._s), __1 = stdgo._internal.slices.Slices_clone.clone(_test._v);
var _vv = __1, _ss = __0;
            if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
                stdgo._internal.slices.Slices_replace.replace(_ss, _test._i, _test._j, ...(_vv : Array<stdgo.GoInt>));
            })) {
                @:check2r _t.errorf(("Replace %s: should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
