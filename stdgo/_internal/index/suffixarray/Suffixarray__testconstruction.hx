package stdgo._internal.index.suffixarray;
function _testConstruction(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):Void {
        if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((({
            final e = _x;
            ({ _data : e._data, _sa : e._sa } : stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index);
        }))))) {
            @:check2r _t.errorf(("failed testConstruction %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name));
        };
    }
