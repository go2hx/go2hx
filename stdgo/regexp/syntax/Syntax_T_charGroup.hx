package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_charGroup_static_extension) abstract T_charGroup(stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup) from stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup to stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup {
    public var _sign(get, set) : StdTypes.Int;
    function get__sign():StdTypes.Int return this._sign;
    function set__sign(v:StdTypes.Int):StdTypes.Int {
        this._sign = (v : stdgo.GoInt);
        return v;
    }
    public var _class(get, set) : Array<StdTypes.Int>;
    function get__class():Array<StdTypes.Int> return [for (i in this._class) i];
    function set__class(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._class = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?_sign:StdTypes.Int, ?_class:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((_sign : stdgo.GoInt), ([for (i in _class) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
