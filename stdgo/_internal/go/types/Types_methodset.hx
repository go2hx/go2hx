package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_methodset_static_extension.MethodSet_static_extension) class MethodSet {
    public var _list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
    public function new(?_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) {
        if (_list != null) this._list = _list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MethodSet(_list);
    }
}
