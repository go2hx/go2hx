package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.T_stack_static_extension) abstract T_stack(stdgo._internal.encoding.xml.Xml_T_stack.T_stack) from stdgo._internal.encoding.xml.Xml_T_stack.T_stack to stdgo._internal.encoding.xml.Xml_T_stack.T_stack {
    public var _next(get, set) : T_stack;
    function get__next():T_stack return this._next;
    function set__next(v:T_stack):T_stack {
        this._next = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        return v;
    }
    public var _kind(get, set) : StdTypes.Int;
    function get__kind():StdTypes.Int return this._kind;
    function set__kind(v:StdTypes.Int):StdTypes.Int {
        this._kind = (v : stdgo.GoInt);
        return v;
    }
    public var _name(get, set) : Name;
    function get__name():Name return this._name;
    function set__name(v:Name):Name {
        this._name = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_next:T_stack, ?_kind:StdTypes.Int, ?_name:Name, ?_ok:Bool) this = new stdgo._internal.encoding.xml.Xml_T_stack.T_stack((_next : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>), (_kind : stdgo.GoInt), _name, _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
