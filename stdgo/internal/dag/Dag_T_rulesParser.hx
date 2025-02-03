package stdgo.internal.dag;
@:structInit @:using(stdgo.internal.dag.Dag.T_rulesParser_static_extension) abstract T_rulesParser(stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser) from stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser to stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser {
    public var _lineno(get, set) : StdTypes.Int;
    function get__lineno():StdTypes.Int return this._lineno;
    function set__lineno(v:StdTypes.Int):StdTypes.Int {
        this._lineno = (v : stdgo.GoInt);
        return v;
    }
    public var _lastWord(get, set) : String;
    function get__lastWord():String return this._lastWord;
    function set__lastWord(v:String):String {
        this._lastWord = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_lineno:StdTypes.Int, ?_lastWord:String, ?_text:String) this = new stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser((_lineno : stdgo.GoInt), (_lastWord : stdgo.GoString), (_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
