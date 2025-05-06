package stdgo._internal.go.types;
function testInvalidTypeSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L15"
        if (!stdgo._internal.go.types.Types__invalidtypeset._invalidTypeSet.isEmpty()) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typeset_test.go#L16"
            _t.error(stdgo.Go.toInterface(("invalidTypeSet is not empty" : stdgo.GoString)));
        };
    }
