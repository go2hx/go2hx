package stdgo._internal.go.types;
function _hasName(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L62"
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L64"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L66"
        return false;
    }
