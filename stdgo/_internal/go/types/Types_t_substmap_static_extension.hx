package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_substMap_asInterface) class T_substMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo._internal.go.types.Types_t_substmap.T_substMap, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _m:stdgo._internal.go.types.Types_t_substmap.T_substMap = _m;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L44"
        {
            var _t = (_m[_tpar] ?? (null : stdgo._internal.go.types.Types_type_.Type_) : stdgo._internal.go.types.Types_type_.Type_);
            if (_t != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L45"
                return _t;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L47"
        return stdgo.Go.asInterface(_tpar);
    }
    @:keep
    @:tdfield
    static public function _empty( _m:stdgo._internal.go.types.Types_t_substmap.T_substMap):Bool {
        @:recv var _m:stdgo._internal.go.types.Types_t_substmap.T_substMap = _m;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L40"
        return (_m.length) == ((0 : stdgo.GoInt));
    }
}
