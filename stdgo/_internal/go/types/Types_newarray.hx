package stdgo._internal.go.types;
function newArray(_elem:stdgo._internal.go.types.Types_type_.Type_, _len:stdgo.GoInt64):stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/array.go#L17"
        return (stdgo.Go.setRef(({ _len : _len, _elem : _elem } : stdgo._internal.go.types.Types_array_.Array_)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
    }
