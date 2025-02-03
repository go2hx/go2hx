package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_fmtFlags_static_extension) abstract T_fmtFlags(stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags) from stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags to stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags {
    public var _widPresent(get, set) : Bool;
    function get__widPresent():Bool return this._widPresent;
    function set__widPresent(v:Bool):Bool {
        this._widPresent = v;
        return v;
    }
    public var _precPresent(get, set) : Bool;
    function get__precPresent():Bool return this._precPresent;
    function set__precPresent(v:Bool):Bool {
        this._precPresent = v;
        return v;
    }
    public var _minus(get, set) : Bool;
    function get__minus():Bool return this._minus;
    function set__minus(v:Bool):Bool {
        this._minus = v;
        return v;
    }
    public var _plus(get, set) : Bool;
    function get__plus():Bool return this._plus;
    function set__plus(v:Bool):Bool {
        this._plus = v;
        return v;
    }
    public var _sharp(get, set) : Bool;
    function get__sharp():Bool return this._sharp;
    function set__sharp(v:Bool):Bool {
        this._sharp = v;
        return v;
    }
    public var _space(get, set) : Bool;
    function get__space():Bool return this._space;
    function set__space(v:Bool):Bool {
        this._space = v;
        return v;
    }
    public var _zero(get, set) : Bool;
    function get__zero():Bool return this._zero;
    function set__zero(v:Bool):Bool {
        this._zero = v;
        return v;
    }
    public var _plusV(get, set) : Bool;
    function get__plusV():Bool return this._plusV;
    function set__plusV(v:Bool):Bool {
        this._plusV = v;
        return v;
    }
    public var _sharpV(get, set) : Bool;
    function get__sharpV():Bool return this._sharpV;
    function set__sharpV(v:Bool):Bool {
        this._sharpV = v;
        return v;
    }
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) this = new stdgo._internal.fmt.Fmt_T_fmtFlags.T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
