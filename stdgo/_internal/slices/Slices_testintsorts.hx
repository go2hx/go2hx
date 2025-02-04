package stdgo._internal.slices;
function testIntSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ints = stdgo._internal.slices.Slices__makerandomints._makeRandomInts((200 : stdgo.GoInt));
        var _ints2 = stdgo._internal.slices.Slices_clone.clone(_ints);
        stdgo._internal.sort.Sort_ints.ints(_ints);
        stdgo._internal.slices.Slices_sort.sort(_ints2);
        for (_i => _ in _ints) {
            if (_ints[(_i : stdgo.GoInt)] != (_ints2[(_i : stdgo.GoInt)])) {
                @:check2r _t.fatalf(("ints2 mismatch at %d; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ints[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ints2[(_i : stdgo.GoInt)]));
            };
        };
    }
