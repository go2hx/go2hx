package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_benchContext_static_extension) abstract T_benchContext(stdgo._internal.testing.Testing_T_benchContext.T_benchContext) from stdgo._internal.testing.Testing_T_benchContext.T_benchContext to stdgo._internal.testing.Testing_T_benchContext.T_benchContext {
    public var _match(get, set) : T_matcher;
    function get__match():T_matcher return this._match;
    function set__match(v:T_matcher):T_matcher {
        this._match = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>);
        return v;
    }
    public var _maxLen(get, set) : StdTypes.Int;
    function get__maxLen():StdTypes.Int return this._maxLen;
    function set__maxLen(v:StdTypes.Int):StdTypes.Int {
        this._maxLen = (v : stdgo.GoInt);
        return v;
    }
    public var _extLen(get, set) : StdTypes.Int;
    function get__extLen():StdTypes.Int return this._extLen;
    function set__extLen(v:StdTypes.Int):StdTypes.Int {
        this._extLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_match:T_matcher, ?_maxLen:StdTypes.Int, ?_extLen:StdTypes.Int) this = new stdgo._internal.testing.Testing_T_benchContext.T_benchContext((_match : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>), (_maxLen : stdgo.GoInt), (_extLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
