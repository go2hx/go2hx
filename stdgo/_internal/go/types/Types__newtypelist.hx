package stdgo._internal.go.types;
function _newTypeList(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L34"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L35"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L37"
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_typelist.TypeList(_list) : stdgo._internal.go.types.Types_typelist.TypeList)) : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
    }
