package stdgo._internal.go.types;
function _makeSubstMap(_tpars:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo._internal.go.types.Types_t_substmap.T_substMap {
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L20"
        stdgo._internal.go.types.Types__assert._assert((_tpars.length) == ((_targs.length)));
        var _proj = (({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo._internal.go.types.Types_type_.Type_>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo._internal.go.types.Types_type_.Type_>) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L22"
        for (_i => _tpar in _tpars) {
            _proj[_tpar] = _targs[(_i : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L25"
        return _proj;
    }
