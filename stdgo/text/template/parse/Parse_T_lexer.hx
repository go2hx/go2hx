package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.T_lexer_static_extension) abstract T_lexer(stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer) from stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer to stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = (v : stdgo.GoString);
        return v;
    }
    public var _leftDelim(get, set) : String;
    function get__leftDelim():String return this._leftDelim;
    function set__leftDelim(v:String):String {
        this._leftDelim = (v : stdgo.GoString);
        return v;
    }
    public var _rightDelim(get, set) : String;
    function get__rightDelim():String return this._rightDelim;
    function set__rightDelim(v:String):String {
        this._rightDelim = (v : stdgo.GoString);
        return v;
    }
    public var _pos(get, set) : Pos;
    function get__pos():Pos return this._pos;
    function set__pos(v:Pos):Pos {
        this._pos = v;
        return v;
    }
    public var _start(get, set) : Pos;
    function get__start():Pos return this._start;
    function set__start(v:Pos):Pos {
        this._start = v;
        return v;
    }
    public var _atEOF(get, set) : Bool;
    function get__atEOF():Bool return this._atEOF;
    function set__atEOF(v:Bool):Bool {
        this._atEOF = v;
        return v;
    }
    public var _parenDepth(get, set) : StdTypes.Int;
    function get__parenDepth():StdTypes.Int return this._parenDepth;
    function set__parenDepth(v:StdTypes.Int):StdTypes.Int {
        this._parenDepth = (v : stdgo.GoInt);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _startLine(get, set) : StdTypes.Int;
    function get__startLine():StdTypes.Int return this._startLine;
    function set__startLine(v:StdTypes.Int):StdTypes.Int {
        this._startLine = (v : stdgo.GoInt);
        return v;
    }
    public var _item(get, set) : T_item;
    function get__item():T_item return this._item;
    function set__item(v:T_item):T_item {
        this._item = v;
        return v;
    }
    public var _insideAction(get, set) : Bool;
    function get__insideAction():Bool return this._insideAction;
    function set__insideAction(v:Bool):Bool {
        this._insideAction = v;
        return v;
    }
    public var _options(get, set) : T_lexOptions;
    function get__options():T_lexOptions return this._options;
    function set__options(v:T_lexOptions):T_lexOptions {
        this._options = v;
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_leftDelim:String, ?_rightDelim:String, ?_pos:Pos, ?_start:Pos, ?_atEOF:Bool, ?_parenDepth:StdTypes.Int, ?_line:StdTypes.Int, ?_startLine:StdTypes.Int, ?_item:T_item, ?_insideAction:Bool, ?_options:T_lexOptions) this = new stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer(
(_name : stdgo.GoString),
(_input : stdgo.GoString),
(_leftDelim : stdgo.GoString),
(_rightDelim : stdgo.GoString),
_pos,
_start,
_atEOF,
(_parenDepth : stdgo.GoInt),
(_line : stdgo.GoInt),
(_startLine : stdgo.GoInt),
_item,
_insideAction,
_options);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
