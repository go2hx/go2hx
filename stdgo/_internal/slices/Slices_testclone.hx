package stdgo._internal.slices;
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = stdgo._internal.slices.Slices_clone.clone(_s1);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L661"
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s2)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L662"
            _t.errorf(("Clone(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        _s1[(0 : stdgo.GoInt)] = (4 : stdgo.GoInt);
        var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L666"
        if (!stdgo._internal.slices.Slices_equal.equal(_s2, _want)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L667"
            _t.errorf(("Clone(%v) changed unexpectedly to %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s2));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L669"
        {
            var _got = stdgo._internal.slices.Slices_clone.clone((null : stdgo.Slice<stdgo.GoInt>));
            if (_got != null) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L670"
                _t.errorf(("Clone(nil) = %#v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L672"
        {
            var _got = stdgo._internal.slices.Slices_clone.clone((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if (((_got == null) || (_got.length != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L673"
                _t.errorf(("Clone(%v) = %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
            };
        };
    }
