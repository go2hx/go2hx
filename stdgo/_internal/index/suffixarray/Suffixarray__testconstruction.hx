package stdgo._internal.index.suffixarray;
function _testConstruction(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L229"
        if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((({
            final e = _x;
            ({ _data : e._data, _sa : e._sa } : stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index);
        }))))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L230"
            _t.errorf(("failed testConstruction %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name));
        };
    }
