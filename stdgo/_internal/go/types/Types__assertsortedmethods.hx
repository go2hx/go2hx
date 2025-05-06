package stdgo._internal.go.types;
function _assertSortedMethods(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L352"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L353"
            throw stdgo.Go.toInterface(("assertSortedMethods called outside debug mode" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L355"
        if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_list : stdgo._internal.go.types.Types_t_byuniquemethodname.T_byUniqueMethodName)))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset.go#L356"
            throw stdgo.Go.toInterface(("methods not sorted" : stdgo.GoString));
        };
    }
