package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.MetaTest_static_extension) abstract MetaTest(stdgo._internal.regexp.Regexp_MetaTest.MetaTest) from stdgo._internal.regexp.Regexp_MetaTest.MetaTest to stdgo._internal.regexp.Regexp_MetaTest.MetaTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public var _literal(get, set) : String;
    function get__literal():String return this._literal;
    function set__literal(v:String):String {
        this._literal = (v : stdgo.GoString);
        return v;
    }
    public var _isLiteral(get, set) : Bool;
    function get__isLiteral():Bool return this._isLiteral;
    function set__isLiteral(v:Bool):Bool {
        this._isLiteral = v;
        return v;
    }
    public function new(?_pattern:String, ?_output:String, ?_literal:String, ?_isLiteral:Bool) this = new stdgo._internal.regexp.Regexp_MetaTest.MetaTest((_pattern : stdgo.GoString), (_output : stdgo.GoString), (_literal : stdgo.GoString), _isLiteral);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
