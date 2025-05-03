package stdgo._internal.slices;
function testStringSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ss = stdgo._internal.slices.Slices__makerandomstrings._makeRandomStrings((200 : stdgo.GoInt));
        var _ss2 = stdgo._internal.slices.Slices_clone.clone(_ss);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L147"
        stdgo._internal.sort.Sort_strings.strings(_ss);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L148"
        stdgo._internal.slices.Slices_sort.sort(_ss2);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L150"
        for (_i => _ in _ss) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L151"
            if (_ss[(_i : stdgo.GoInt)] != (_ss2[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L152"
                _t.fatalf(("ss2 mismatch at %d; %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ss[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ss2[(_i : stdgo.GoInt)]));
            };
        };
    }
