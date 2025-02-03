package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.ReplaceTest_static_extension) abstract ReplaceTest(stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest) from stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest to stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _replacement(get, set) : String;
    function get__replacement():String return this._replacement;
    function set__replacement(v:String):String {
        this._replacement = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = (v : stdgo.GoString);
        return v;
    }
    public function new(?_pattern:String, ?_replacement:String, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest((_pattern : stdgo.GoString), (_replacement : stdgo.GoString), (_input : stdgo.GoString), (_output : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
