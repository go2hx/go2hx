package stdgo._internal.slices;
function testClip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1 = ((new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _orig = stdgo._internal.slices.Slices_clone.clone(_s1);
        if ((_s1.length) != ((3 : stdgo.GoInt))) {
            @:check2r _t.errorf(("len(%v) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface((_s1.length)));
        };
        if ((_s1.capacity < (6 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("cap(%v[:3]) = %d, want >= 6" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s1.capacity));
        };
        var _s2 = stdgo._internal.slices.Slices_clip.clip(_s1);
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s2)) {
            @:check2r _t.errorf(("Clip(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if (_s2.capacity != ((3 : stdgo.GoInt))) {
            @:check2r _t.errorf(("cap(Clip(%v)) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s2.capacity));
        };
    }
