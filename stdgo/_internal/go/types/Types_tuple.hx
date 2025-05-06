package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_tuple_static_extension.Tuple_static_extension) class Tuple {
    public var _vars : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
    public function new(?_vars:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>) {
        if (_vars != null) this._vars = _vars;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tuple(_vars);
    }
}
