package stdgo._internal.go.types;
function _substVar(_v:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        var _copy = ((_v : stdgo._internal.go.types.Types_var.Var)?.__copy__() : stdgo._internal.go.types.Types_var.Var);
        _copy._object._typ = _typ;
        _copy._origin = _v.origin();
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L298"
        return (stdgo.Go.setRef(_copy) : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
    }
