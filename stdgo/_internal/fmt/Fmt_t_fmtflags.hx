package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_fmtflags_static_extension.T_fmtFlags_static_extension) class T_fmtFlags {
    public var _widPresent : Bool = false;
    public var _precPresent : Bool = false;
    public var _minus : Bool = false;
    public var _plus : Bool = false;
    public var _sharp : Bool = false;
    public var _space : Bool = false;
    public var _zero : Bool = false;
    public var _plusV : Bool = false;
    public var _sharpV : Bool = false;
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) {
        if (_widPresent != null) this._widPresent = _widPresent;
        if (_precPresent != null) this._precPresent = _precPresent;
        if (_minus != null) this._minus = _minus;
        if (_plus != null) this._plus = _plus;
        if (_sharp != null) this._sharp = _sharp;
        if (_space != null) this._space = _space;
        if (_zero != null) this._zero = _zero;
        if (_plusV != null) this._plusV = _plusV;
        if (_sharpV != null) this._sharpV = _sharpV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    }
}
