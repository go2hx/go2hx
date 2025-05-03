package stdgo._internal.slices;
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__strs._strs.__slice__(0) : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L69"
        stdgo._internal.slices.Slices_sort.sort(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L70"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L71"
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__strs._strs));
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L72"
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
