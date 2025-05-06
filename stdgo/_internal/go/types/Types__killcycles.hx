package stdgo._internal.go.types;
function _killCycles(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _inferred:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Void {
        var _w = (new stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder(_tparams, _inferred, (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>)) : stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder);
        //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L661"
        for (__0 => _t in _tparams) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/infer.go#L662"
            _w._typ(stdgo.Go.asInterface(_t));
        };
    }
