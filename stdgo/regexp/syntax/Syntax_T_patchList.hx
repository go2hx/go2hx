package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) abstract T_patchList(stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList) from stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList to stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList {
    public var _head(get, set) : std.UInt;
    function get__head():std.UInt return this._head;
    function set__head(v:std.UInt):std.UInt {
        this._head = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tail(get, set) : std.UInt;
    function get__tail():std.UInt return this._tail;
    function set__tail(v:std.UInt):std.UInt {
        this._tail = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_head:std.UInt, ?_tail:std.UInt) this = new stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList((_head : stdgo.GoUInt32), (_tail : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
