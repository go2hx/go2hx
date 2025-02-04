package stdgo._internal.container.list;
@:structInit @:using(stdgo._internal.container.list.List_list_static_extension.List_static_extension) class List {
    public var _root : stdgo._internal.container.list.List_element.Element = ({} : stdgo._internal.container.list.List_element.Element);
    public var _len : stdgo.GoInt = 0;
    public function new(?_root:stdgo._internal.container.list.List_element.Element, ?_len:stdgo.GoInt) {
        if (_root != null) this._root = _root;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new List(_root, _len);
    }
}
