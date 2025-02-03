package stdgo.container.list;
@:structInit @:using(stdgo.container.list.List.List_static_extension) abstract List_(stdgo._internal.container.list.List_List.List) from stdgo._internal.container.list.List_List.List to stdgo._internal.container.list.List_List.List {
    public var _root(get, set) : Element;
    function get__root():Element return this._root;
    function set__root(v:Element):Element {
        this._root = v;
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_root:Element, ?_len:StdTypes.Int) this = new stdgo._internal.container.list.List_List.List(_root, (_len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
