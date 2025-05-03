package stdgo._internal.slices;
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__ints._ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L34"
        stdgo._internal.slices.Slices_sortfunc.sortFunc(_data, function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L34"
            return (_a - _b : stdgo.GoInt);
        });
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L35"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L36"
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__ints._ints));
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L37"
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
