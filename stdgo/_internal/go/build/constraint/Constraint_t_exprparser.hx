package stdgo._internal.go.build.constraint;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension) class T_exprParser {
    public var _s : stdgo.GoString = "";
    public var _i : stdgo.GoInt = 0;
    public var _tok : stdgo.GoString = "";
    public var _isTag : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt, ?_tok:stdgo.GoString, ?_isTag:Bool, ?_pos:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_tok != null) this._tok = _tok;
        if (_isTag != null) this._isTag = _isTag;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exprParser(_s, _i, _tok, _isTag, _pos);
    }
}
