package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) abstract T_ranges(stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges) from stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges to stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges {
    public var _p(get, set) : Array<StdTypes.Int>;
    function get__p():Array<StdTypes.Int> return this._p;
    function set__p(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._p = (v : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
        return v;
    }
    public function new(?_p:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges((_p : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
