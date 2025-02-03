package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.Float__static_extension) abstract Float_(stdgo._internal.math.big.Big_Float_.Float_) from stdgo._internal.math.big.Big_Float_.Float_ to stdgo._internal.math.big.Big_Float_.Float_ {
    public var _prec(get, set) : std.UInt;
    function get__prec():std.UInt return this._prec;
    function set__prec(v:std.UInt):std.UInt {
        this._prec = (v : stdgo.GoUInt32);
        return v;
    }
    public var _mode(get, set) : RoundingMode;
    function get__mode():RoundingMode return this._mode;
    function set__mode(v:RoundingMode):RoundingMode {
        this._mode = v;
        return v;
    }
    public var _acc(get, set) : Accuracy;
    function get__acc():Accuracy return this._acc;
    function set__acc(v:Accuracy):Accuracy {
        this._acc = v;
        return v;
    }
    public var _form(get, set) : T_form;
    function get__form():T_form return this._form;
    function set__form(v:T_form):T_form {
        this._form = v;
        return v;
    }
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _mant(get, set) : T_nat;
    function get__mant():T_nat return this._mant;
    function set__mant(v:T_nat):T_nat {
        this._mant = v;
        return v;
    }
    public var _exp(get, set) : StdTypes.Int;
    function get__exp():StdTypes.Int return this._exp;
    function set__exp(v:StdTypes.Int):StdTypes.Int {
        this._exp = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_prec:std.UInt, ?_mode:RoundingMode, ?_acc:Accuracy, ?_form:T_form, ?_neg:Bool, ?_mant:T_nat, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big_Float_.Float_((_prec : stdgo.GoUInt32), _mode, _acc, _form, _neg, _mant, (_exp : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
