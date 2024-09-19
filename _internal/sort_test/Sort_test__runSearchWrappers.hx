package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _runSearchWrappers():Void {
        stdgo._internal.sort.Sort_searchInts.searchInts(_internal.sort_test.Sort_test__data._data, (11 : stdgo.GoInt));
        stdgo._internal.sort.Sort_searchFloat64s.searchFloat64s(_internal.sort_test.Sort_test__fdata._fdata, (2.1 : stdgo.GoFloat64));
        stdgo._internal.sort.Sort_searchStrings.searchStrings(_internal.sort_test.Sort_test__sdata._sdata, stdgo.Go.str()?.__copy__());
        (_internal.sort_test.Sort_test__data._data : stdgo._internal.sort.Sort_IntSlice.IntSlice).search((0 : stdgo.GoInt));
        (_internal.sort_test.Sort_test__fdata._fdata : stdgo._internal.sort.Sort_Float64Slice.Float64Slice).search((2 : stdgo.GoFloat64));
        (_internal.sort_test.Sort_test__sdata._sdata : stdgo._internal.sort.Sort_StringSlice.StringSlice).search(("x" : stdgo.GoString));
    }
