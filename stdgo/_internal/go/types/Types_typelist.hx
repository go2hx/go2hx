package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_typelist_static_extension.TypeList_static_extension) class TypeList {
    public var _types : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public function new(?_types:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) {
        if (_types != null) this._types = _types;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeList(_types);
    }
}
