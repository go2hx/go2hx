package stdgo._internal.go.types;
function _isTypeLit(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L73"
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L75"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L77"
        return true;
    }
