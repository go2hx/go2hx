package stdgo._internal.slices;
function testSortFloat64SliceWithNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (stdgo._internal.slices.Slices__float64swithnans._float64sWithNaNs.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>);
        var _data2 = stdgo._internal.slices.Slices_clone.clone(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L54"
        stdgo._internal.slices.Slices_sort.sort(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L55"
        stdgo._internal.sort.Sort_float64s.float64s(_data2);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L57"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L58"
            _t.error(stdgo.Go.toInterface(("IsSorted indicates data isn\'t sorted" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L62"
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_data, _data2, function(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L62"
            return stdgo._internal.cmp.Cmp_compare.compare(_a, _b) == ((0 : stdgo.GoInt));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L63"
            _t.errorf(("mismatch between Sort and sort.Float64: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
        };
    }
