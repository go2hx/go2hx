package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_map__static_extension.Map__static_extension) class Map_ {
    public var _key : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _elem : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_key:stdgo._internal.go.types.Types_type_.Type_, ?_elem:stdgo._internal.go.types.Types_type_.Type_) {
        if (_key != null) this._key = _key;
        if (_elem != null) this._elem = _elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Map_(_key, _elem);
    }
}
