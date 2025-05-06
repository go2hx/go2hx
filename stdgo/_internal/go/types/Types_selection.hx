package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_selection_static_extension.Selection_static_extension) class Selection {
    public var _kind : stdgo._internal.go.types.Types_selectionkind.SelectionKind = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_selectionkind.SelectionKind);
    public var _recv : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _obj : stdgo._internal.go.types.Types_object.Object = (null : stdgo._internal.go.types.Types_object.Object);
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _indirect : Bool = false;
    public function new(?_kind:stdgo._internal.go.types.Types_selectionkind.SelectionKind, ?_recv:stdgo._internal.go.types.Types_type_.Type_, ?_obj:stdgo._internal.go.types.Types_object.Object, ?_index:stdgo.Slice<stdgo.GoInt>, ?_indirect:Bool) {
        if (_kind != null) this._kind = _kind;
        if (_recv != null) this._recv = _recv;
        if (_obj != null) this._obj = _obj;
        if (_index != null) this._index = _index;
        if (_indirect != null) this._indirect = _indirect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Selection(_kind, _recv, _obj, _index, _indirect);
    }
}
