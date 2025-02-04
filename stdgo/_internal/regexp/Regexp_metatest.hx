package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_metatest_static_extension.MetaTest_static_extension) class MetaTest {
    public var _pattern : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _literal : stdgo.GoString = "";
    public var _isLiteral : Bool = false;
    public function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool) {
        if (_pattern != null) this._pattern = _pattern;
        if (_output != null) this._output = _output;
        if (_literal != null) this._literal = _literal;
        if (_isLiteral != null) this._isLiteral = _isLiteral;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaTest(_pattern, _output, _literal, _isLiteral);
    }
}
