package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_trieNode_static_extension) abstract T_trieNode(stdgo._internal.strings.Strings_T_trieNode.T_trieNode) from stdgo._internal.strings.Strings_T_trieNode.T_trieNode to stdgo._internal.strings.Strings_T_trieNode.T_trieNode {
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public var _priority(get, set) : StdTypes.Int;
    function get__priority():StdTypes.Int return this._priority;
    function set__priority(v:StdTypes.Int):StdTypes.Int {
        this._priority = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _next(get, set) : T_trieNode;
    function get__next():T_trieNode return this._next;
    function set__next(v:T_trieNode):T_trieNode {
        this._next = (v : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
        return v;
    }
    public var _table(get, set) : Array<T_trieNode>;
    function get__table():Array<T_trieNode> return [for (i in this._table) i];
    function set__table(v:Array<T_trieNode>):Array<T_trieNode> {
        this._table = ([for (i in v) (i : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>);
        return v;
    }
    public function new(?_value:String, ?_priority:StdTypes.Int, ?_prefix:String, ?_next:T_trieNode, ?_table:Array<T_trieNode>) this = new stdgo._internal.strings.Strings_T_trieNode.T_trieNode((_value : stdgo.GoString), (_priority : stdgo.GoInt), (_prefix : stdgo.GoString), (_next : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>), ([for (i in _table) (i : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
