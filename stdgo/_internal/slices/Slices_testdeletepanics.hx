package stdgo._internal.slices;
function testDeletePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L641"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_8.T__struct_8>(5, 5, ...[({ _name : ("with negative first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (-2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8), ({ _name : ("with negative second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (-1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8), ({ _name : ("with out-of-bounds first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8), ({ _name : ("with out-of-bounds second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8), ({ _name : ("with invalid i>j" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_t__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_8.T__struct_8>)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L652"
            if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L652"
                stdgo._internal.slices.Slices_delete.delete(_test._s, _test._i, _test._j);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L653"
                _t.errorf(("Delete %s: got no panic, want panic" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
