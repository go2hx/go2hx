package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_replacefunctest_static_extension.ReplaceFuncTest_static_extension) class ReplaceFuncTest {
    public var _pattern : stdgo.GoString = "";
    public var _replacement : stdgo.GoString -> stdgo.GoString = null;
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString -> stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_replacement != null) this._replacement = _replacement;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplaceFuncTest(_pattern, _replacement, _input, _output);
    }
}
