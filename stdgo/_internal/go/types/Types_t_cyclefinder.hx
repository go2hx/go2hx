package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_cyclefinder_static_extension.T_cycleFinder_static_extension) class T_cycleFinder {
    public var _tparams : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public var _inferred : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public var _seen : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>);
    public function new(?_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_inferred:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, ?_seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) {
        if (_tparams != null) this._tparams = _tparams;
        if (_inferred != null) this._inferred = _inferred;
        if (_seen != null) this._seen = _seen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cycleFinder(_tparams, _inferred, _seen);
    }
}
