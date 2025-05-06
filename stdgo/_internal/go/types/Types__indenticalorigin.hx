package stdgo._internal.go.types;
function _indenticalOrigin(_x:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _y:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L473"
        return _x.origin()._obj == (_y.origin()._obj);
    }
