package stdgo._internal.go.types;
function _bindTParams(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L61"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L62"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L64"
        for (_i => _typ in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L65"
            if (((@:checkr _typ ?? throw "null pointer dereference")._index >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L66"
                throw stdgo.Go.toInterface(("type parameter bound more than once" : stdgo.GoString));
            };
            (@:checkr _typ ?? throw "null pointer dereference")._index = _i;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/typelists.go#L70"
        return (stdgo.Go.setRef(({ _tparams : _list } : stdgo._internal.go.types.Types_typeparamlist.TypeParamList)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    }
