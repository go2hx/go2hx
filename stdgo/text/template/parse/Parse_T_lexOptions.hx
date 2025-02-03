package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.T_lexOptions_static_extension) abstract T_lexOptions(stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions) from stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions to stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions {
    public var _emitComment(get, set) : Bool;
    function get__emitComment():Bool return this._emitComment;
    function set__emitComment(v:Bool):Bool {
        this._emitComment = v;
        return v;
    }
    public var _breakOK(get, set) : Bool;
    function get__breakOK():Bool return this._breakOK;
    function set__breakOK(v:Bool):Bool {
        this._breakOK = v;
        return v;
    }
    public var _continueOK(get, set) : Bool;
    function get__continueOK():Bool return this._continueOK;
    function set__continueOK(v:Bool):Bool {
        this._continueOK = v;
        return v;
    }
    public function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool) this = new stdgo._internal.text.template.parse.Parse_T_lexOptions.T_lexOptions(_emitComment, _breakOK, _continueOK);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
