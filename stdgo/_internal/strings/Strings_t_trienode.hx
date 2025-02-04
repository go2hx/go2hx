package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_t_trienode_static_extension.T_trieNode_static_extension) class T_trieNode {
    public var _value : stdgo.GoString = "";
    public var _priority : stdgo.GoInt = 0;
    public var _prefix : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
    public var _table : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
    public function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>) {
        if (_value != null) this._value = _value;
        if (_priority != null) this._priority = _priority;
        if (_prefix != null) this._prefix = _prefix;
        if (_next != null) this._next = _next;
        if (_table != null) this._table = _table;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_trieNode(_value, _priority, _prefix, _next, _table);
    }
}
