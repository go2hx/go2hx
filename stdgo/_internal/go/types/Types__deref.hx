package stdgo._internal.go.types;
function _deref(_typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L532"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, _p = __tmp__._0, __0 = __tmp__._1;
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L534"
                if ((@:checkr _p ?? throw "null pointer dereference")._base == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L535"
                    if (false) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L536"
                        throw stdgo.Go.toInterface(("pointer with nil base type (possibly due to an invalid cyclic declaration)" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L538"
                    return { _0 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _1 : true };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L540"
                return { _0 : (@:checkr _p ?? throw "null pointer dereference")._base, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L542"
        return { _0 : _typ, _1 : false };
    }
