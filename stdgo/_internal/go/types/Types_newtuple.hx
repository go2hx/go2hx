package stdgo._internal.go.types;
function newTuple(_x:haxe.Rest<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        var _x = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>(_x.length, 0, ..._x);
        //"file:///home/runner/.go/go1.21.3/src/go/types/tuple.go#L18"
        if (((_x.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/tuple.go#L19"
            return (stdgo.Go.setRef(({ _vars : _x } : stdgo._internal.go.types.Types_tuple.Tuple)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/tuple.go#L21"
        return null;
    }
