package stdgo._internal.slices;
function testStringSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ss = stdgo._internal.slices.Slices__makerandomstrings._makeRandomStrings((200 : stdgo.GoInt));
        var _ss2 = stdgo._internal.slices.Slices_clone.clone(_ss);
        stdgo._internal.sort.Sort_strings.strings(_ss);
        stdgo._internal.slices.Slices_sort.sort(_ss2);
        for (_i => _ in _ss) {
            if (_ss[(_i : stdgo.GoInt)] != (_ss2[(_i : stdgo.GoInt)])) {
                @:check2r _t.fatalf(("ss2 mismatch at %d; %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ss[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ss2[(_i : stdgo.GoInt)]));
            };
        };
    }
