package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.ReplaceFuncTest_static_extension) abstract ReplaceFuncTest(stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest) from stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest to stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _replacement(get, set) : stdgo.GoString -> stdgo.GoString;
    function get__replacement():stdgo.GoString -> stdgo.GoString return _0 -> this._replacement(_0);
    function set__replacement(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        this._replacement = v;
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
    public function new(?_pattern:String, ?_replacement:stdgo.GoString -> stdgo.GoString, ?_input:String, ?_output:String) this = new stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest((_pattern : stdgo.GoString), _replacement, (_input : stdgo.GoString), (_output : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
