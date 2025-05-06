package stdgo._internal.go.types;
function _substFunc(_f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        var _copy = ((_f : stdgo._internal.go.types.Types_func.Func)?.__copy__() : stdgo._internal.go.types.Types_func.Func);
        _copy._object._typ = _typ;
        _copy._origin = _f.origin();
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L341"
        return (stdgo.Go.setRef(_copy) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
    }
