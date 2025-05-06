package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_struct_static_extension.Struct_static_extension) class Struct {
    public var _fields : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
    public var _tags : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, ?_tags:stdgo.Slice<stdgo.GoString>) {
        if (_fields != null) this._fields = _fields;
        if (_tags != null) this._tags = _tags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Struct(_fields, _tags);
    }
}
