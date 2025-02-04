package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_ssave_static_extension.T_ssave_static_extension) class T_ssave {
    public var _validSave : Bool = false;
    public var _nlIsEnd : Bool = false;
    public var _nlIsSpace : Bool = false;
    public var _argLimit : stdgo.GoInt = 0;
    public var _limit : stdgo.GoInt = 0;
    public var _maxWid : stdgo.GoInt = 0;
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:stdgo.GoInt, ?_limit:stdgo.GoInt, ?_maxWid:stdgo.GoInt) {
        if (_validSave != null) this._validSave = _validSave;
        if (_nlIsEnd != null) this._nlIsEnd = _nlIsEnd;
        if (_nlIsSpace != null) this._nlIsSpace = _nlIsSpace;
        if (_argLimit != null) this._argLimit = _argLimit;
        if (_limit != null) this._limit = _limit;
        if (_maxWid != null) this._maxWid = _maxWid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    }
}
