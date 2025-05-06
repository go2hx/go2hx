package stdgo._internal.go.types;
function testTermlistAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L26"
        if (!stdgo._internal.go.types.Types__alltermlist._allTermlist._isAll()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L27"
            _t.errorf(("allTermlist is not the set of all types" : stdgo.GoString));
        };
    }
