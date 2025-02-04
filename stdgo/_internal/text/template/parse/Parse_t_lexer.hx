package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_t_lexer_static_extension.T_lexer_static_extension) class T_lexer {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _leftDelim : stdgo.GoString = "";
    public var _rightDelim : stdgo.GoString = "";
    public var _pos : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var _start : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var _atEOF : Bool = false;
    public var _parenDepth : stdgo.GoInt = 0;
    public var _line : stdgo.GoInt = 0;
    public var _startLine : stdgo.GoInt = 0;
    public var _item : stdgo._internal.text.template.parse.Parse_t_item.T_item = ({} : stdgo._internal.text.template.parse.Parse_t_item.T_item);
    public var _insideAction : Bool = false;
    public var _options : stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions = ({} : stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions);
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_leftDelim:stdgo.GoString, ?_rightDelim:stdgo.GoString, ?_pos:stdgo._internal.text.template.parse.Parse_pos.Pos, ?_start:stdgo._internal.text.template.parse.Parse_pos.Pos, ?_atEOF:Bool, ?_parenDepth:stdgo.GoInt, ?_line:stdgo.GoInt, ?_startLine:stdgo.GoInt, ?_item:stdgo._internal.text.template.parse.Parse_t_item.T_item, ?_insideAction:Bool, ?_options:stdgo._internal.text.template.parse.Parse_t_lexoptions.T_lexOptions) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_leftDelim != null) this._leftDelim = _leftDelim;
        if (_rightDelim != null) this._rightDelim = _rightDelim;
        if (_pos != null) this._pos = _pos;
        if (_start != null) this._start = _start;
        if (_atEOF != null) this._atEOF = _atEOF;
        if (_parenDepth != null) this._parenDepth = _parenDepth;
        if (_line != null) this._line = _line;
        if (_startLine != null) this._startLine = _startLine;
        if (_item != null) this._item = _item;
        if (_insideAction != null) this._insideAction = _insideAction;
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lexer(
_name,
_input,
_leftDelim,
_rightDelim,
_pos,
_start,
_atEOF,
_parenDepth,
_line,
_startLine,
_item,
_insideAction,
_options);
    }
}
