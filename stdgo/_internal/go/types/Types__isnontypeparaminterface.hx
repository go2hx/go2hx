package stdgo._internal.go.types;
function _isNonTypeParamInterface(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/predicates.go#L103"
        return (!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_t) && stdgo._internal.go.types.Types_isinterface.isInterface(_t) : Bool);
    }
