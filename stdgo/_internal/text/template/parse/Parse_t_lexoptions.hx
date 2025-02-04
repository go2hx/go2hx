package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_t_lexoptions_static_extension.T_lexOptions_static_extension) class T_lexOptions {
    public var _emitComment : Bool = false;
    public var _breakOK : Bool = false;
    public var _continueOK : Bool = false;
    public function new(?_emitComment:Bool, ?_breakOK:Bool, ?_continueOK:Bool) {
        if (_emitComment != null) this._emitComment = _emitComment;
        if (_breakOK != null) this._breakOK = _breakOK;
        if (_continueOK != null) this._continueOK = _continueOK;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lexOptions(_emitComment, _breakOK, _continueOK);
    }
}
