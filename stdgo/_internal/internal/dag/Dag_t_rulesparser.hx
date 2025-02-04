package stdgo._internal.internal.dag;
@:structInit @:using(stdgo._internal.internal.dag.Dag_t_rulesparser_static_extension.T_rulesParser_static_extension) class T_rulesParser {
    public var _lineno : stdgo.GoInt = 0;
    public var _lastWord : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public function new(?_lineno:stdgo.GoInt, ?_lastWord:stdgo.GoString, ?_text:stdgo.GoString) {
        if (_lineno != null) this._lineno = _lineno;
        if (_lastWord != null) this._lastWord = _lastWord;
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rulesParser(_lineno, _lastWord, _text);
    }
}
