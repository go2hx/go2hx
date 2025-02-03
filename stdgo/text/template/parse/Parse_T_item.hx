package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.T_item_static_extension) abstract T_item(stdgo._internal.text.template.parse.Parse_T_item.T_item) from stdgo._internal.text.template.parse.Parse_T_item.T_item to stdgo._internal.text.template.parse.Parse_T_item.T_item {
    public var _typ(get, set) : T_itemType;
    function get__typ():T_itemType return this._typ;
    function set__typ(v:T_itemType):T_itemType {
        this._typ = v;
        return v;
    }
    public var _pos(get, set) : Pos;
    function get__pos():Pos return this._pos;
    function set__pos(v:Pos):Pos {
        this._pos = v;
        return v;
    }
    public var _val(get, set) : String;
    function get__val():String return this._val;
    function set__val(v:String):String {
        this._val = (v : stdgo.GoString);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_typ:T_itemType, ?_pos:Pos, ?_val:String, ?_line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_T_item.T_item(_typ, _pos, (_val : stdgo.GoString), (_line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
