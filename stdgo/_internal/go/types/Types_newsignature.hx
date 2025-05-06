package stdgo._internal.go.types;
function newSignature(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _results:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/signature.go#L39"
        return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _params, _results, _variadic);
    }
