package stdgo._internal.go.types;
function _isParameterized(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var _w = ({ _tparams : _tparams, _seen : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) } : stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker);
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L521"
        return _w._isParameterized(_typ);
    }
