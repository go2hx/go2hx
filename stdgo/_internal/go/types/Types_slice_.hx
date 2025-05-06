package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_slice__static_extension.Slice__static_extension) class Slice_ {
    public var _elem : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_elem:stdgo._internal.go.types.Types_type_.Type_) {
        if (_elem != null) this._elem = _elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Slice_(_elem);
    }
}
