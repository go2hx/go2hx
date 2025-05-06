package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_comparer_static_extension.T_comparer_static_extension) class T_comparer {
    public var _ignoreTags : Bool = false;
    public var _ignoreInvalids : Bool = false;
    public function new(?_ignoreTags:Bool, ?_ignoreInvalids:Bool) {
        if (_ignoreTags != null) this._ignoreTags = _ignoreTags;
        if (_ignoreInvalids != null) this._ignoreInvalids = _ignoreInvalids;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_comparer(_ignoreTags, _ignoreInvalids);
    }
}
