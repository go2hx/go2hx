package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_tpwalker_static_extension.T_tpWalker_static_extension) class T_tpWalker {
    public var _tparams : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public var _seen : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>);
    public function new(?_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) {
        if (_tparams != null) this._tparams = _tparams;
        if (_seen != null) this._seen = _seen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tpWalker(_tparams, _seen);
    }
}
