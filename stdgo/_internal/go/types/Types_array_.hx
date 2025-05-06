package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_array__static_extension.Array__static_extension) class Array_ {
    public var _len : stdgo.GoInt64 = 0;
    public var _elem : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_len:stdgo.GoInt64, ?_elem:stdgo._internal.go.types.Types_type_.Type_) {
        if (_len != null) this._len = _len;
        if (_elem != null) this._elem = _elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Array_(_len, _elem);
    }
}
