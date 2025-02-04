package stdgo._internal.slices;
function testSortFloat64SliceWithNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (stdgo._internal.slices.Slices__float64swithnans._float64sWithNaNs.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>);
        var _data2 = stdgo._internal.slices.Slices_clone.clone(_data);
        stdgo._internal.slices.Slices_sort.sort(_data);
        stdgo._internal.sort.Sort_float64s.float64s(_data2);
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            @:check2r _t.error(stdgo.Go.toInterface(("IsSorted indicates data isn\'t sorted" : stdgo.GoString)));
        };
        if (!stdgo._internal.slices.Slices_equalfunc.equalFunc(_data, _data2, function(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
            return stdgo._internal.cmp.Cmp_compare.compare(_a, _b) == ((0 : stdgo.GoInt));
        })) {
            @:check2r _t.errorf(("mismatch between Sort and sort.Float64: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
        };
    }
