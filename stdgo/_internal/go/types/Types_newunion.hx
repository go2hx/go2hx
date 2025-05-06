package stdgo._internal.go.types;
function newUnion(_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>):stdgo.Ref<stdgo._internal.go.types.Types_union.Union> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L24"
        if ((_terms.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L25"
            throw stdgo.Go.toInterface(("empty union" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L27"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_union.Union(_terms) : stdgo._internal.go.types.Types_union.Union)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>);
    }
