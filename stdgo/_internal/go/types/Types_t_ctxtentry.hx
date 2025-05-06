package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_ctxtentry_static_extension.T_ctxtEntry_static_extension) class T_ctxtEntry {
    public var _orig : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _targs : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public var _instance : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_orig:stdgo._internal.go.types.Types_type_.Type_, ?_targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, ?_instance:stdgo._internal.go.types.Types_type_.Type_) {
        if (_orig != null) this._orig = _orig;
        if (_targs != null) this._targs = _targs;
        if (_instance != null) this._instance = _instance;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctxtEntry(_orig, _targs, _instance);
    }
}
