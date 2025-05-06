package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_pointer__static_extension.Pointer__static_extension) class Pointer_ {
    public var _base : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_base:stdgo._internal.go.types.Types_type_.Type_) {
        if (_base != null) this._base = _base;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pointer_(_base);
    }
}
