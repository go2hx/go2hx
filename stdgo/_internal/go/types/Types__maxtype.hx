package stdgo._internal.go.types;
function _maxType(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L523"
        if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L524"
            return _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L526"
        if ((((stdgo._internal.go.types.Types__isuntyped._isUntyped(_x) && stdgo._internal.go.types.Types__isuntyped._isUntyped(_y) : Bool) && stdgo._internal.go.types.Types__isnumeric._isNumeric(_x) : Bool) && stdgo._internal.go.types.Types__isnumeric._isNumeric(_y) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L528"
            if (((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) ?? throw "null pointer dereference")._kind > (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) ?? throw "null pointer dereference")._kind : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L529"
                return _x;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L531"
            return _y;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L533"
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
