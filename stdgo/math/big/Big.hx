package stdgo.math.big;
final maxExp : haxe.UInt64 = stdgo._internal.math.big.Big.maxExp;
final minExp : haxe.UInt64 = stdgo._internal.math.big.Big.minExp;
final maxPrec : haxe.UInt64 = stdgo._internal.math.big.Big.maxPrec;
final toNearestEven : stdgo._internal.math.big.Big.RoundingMode = stdgo._internal.math.big.Big.toNearestEven;
final toNearestAway = stdgo._internal.math.big.Big.toNearestAway;
final toZero = stdgo._internal.math.big.Big.toZero;
final awayFromZero = stdgo._internal.math.big.Big.awayFromZero;
final toNegativeInf = stdgo._internal.math.big.Big.toNegativeInf;
final toPositiveInf = stdgo._internal.math.big.Big.toPositiveInf;
final below : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.below;
final exact : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.exact;
final above : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.above;
final maxBase : StdTypes.Int = stdgo._internal.math.big.Big.maxBase;
@:structInit @:private abstract T_argVV(stdgo._internal.math.big.Big.T_argVV) from stdgo._internal.math.big.Big.T_argVV to stdgo._internal.math.big.Big.T_argVV {
    public var _z(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__z():stdgo._internal.math.big.Big.T_nat return this._z;
    function set__z(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__x():stdgo._internal.math.big.Big.T_nat return this._x;
    function set__x(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__y():stdgo._internal.math.big.Big.T_nat return this._y;
    function set__y(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._y = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.math.big.Big.Word;
    function get__c():stdgo._internal.math.big.Big.Word return this._c;
    function set__c(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._c = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.T_nat, ?_x:stdgo._internal.math.big.Big.T_nat, ?_y:stdgo._internal.math.big.Big.T_nat, ?_c:stdgo._internal.math.big.Big.Word) this = new stdgo._internal.math.big.Big.T_argVV(_z, _x, _y, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argVW(stdgo._internal.math.big.Big.T_argVW) from stdgo._internal.math.big.Big.T_argVW to stdgo._internal.math.big.Big.T_argVW {
    public var _z(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__z():stdgo._internal.math.big.Big.T_nat return this._z;
    function set__z(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__x():stdgo._internal.math.big.Big.T_nat return this._x;
    function set__x(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.Word;
    function get__y():stdgo._internal.math.big.Big.Word return this._y;
    function set__y(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._y = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.math.big.Big.Word;
    function get__c():stdgo._internal.math.big.Big.Word return this._c;
    function set__c(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._c = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.T_nat, ?_x:stdgo._internal.math.big.Big.T_nat, ?_y:stdgo._internal.math.big.Big.Word, ?_c:stdgo._internal.math.big.Big.Word) this = new stdgo._internal.math.big.Big.T_argVW(_z, _x, _y, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argVU(stdgo._internal.math.big.Big.T_argVU) from stdgo._internal.math.big.Big.T_argVU to stdgo._internal.math.big.Big.T_argVU {
    public var _d(get, set) : Array<stdgo._internal.math.big.Big.Word>;
    function get__d():Array<stdgo._internal.math.big.Big.Word> return [for (i in this._d) i];
    function set__d(v:Array<stdgo._internal.math.big.Big.Word>):Array<stdgo._internal.math.big.Big.Word> {
        this._d = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big.Word>);
        return v;
    }
    public var _l(get, set) : std.UInt;
    function get__l():std.UInt return this._l;
    function set__l(v:std.UInt):std.UInt {
        this._l = v;
        return v;
    }
    public var _xp(get, set) : std.UInt;
    function get__xp():std.UInt return this._xp;
    function set__xp(v:std.UInt):std.UInt {
        this._xp = v;
        return v;
    }
    public var _zp(get, set) : std.UInt;
    function get__zp():std.UInt return this._zp;
    function set__zp(v:std.UInt):std.UInt {
        this._zp = v;
        return v;
    }
    public var _s(get, set) : std.UInt;
    function get__s():std.UInt return this._s;
    function set__s(v:std.UInt):std.UInt {
        this._s = v;
        return v;
    }
    public var _r(get, set) : Array<stdgo._internal.math.big.Big.Word>;
    function get__r():Array<stdgo._internal.math.big.Big.Word> return [for (i in this._r) i];
    function set__r(v:Array<stdgo._internal.math.big.Big.Word>):Array<stdgo._internal.math.big.Big.Word> {
        this._r = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big.Word>);
        return v;
    }
    public var _c(get, set) : stdgo._internal.math.big.Big.Word;
    function get__c():stdgo._internal.math.big.Big.Word return this._c;
    function set__c(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._c = v;
        return v;
    }
    public var _m(get, set) : String;
    function get__m():String return this._m;
    function set__m(v:String):String {
        this._m = v;
        return v;
    }
    public function new(?_d:Array<stdgo._internal.math.big.Big.Word>, ?_l:std.UInt, ?_xp:std.UInt, ?_zp:std.UInt, ?_s:std.UInt, ?_r:Array<stdgo._internal.math.big.Big.Word>, ?_c:stdgo._internal.math.big.Big.Word, ?_m:String) this = new stdgo._internal.math.big.Big.T_argVU(([for (i in _d) i] : stdgo.Slice<stdgo._internal.math.big.Big.Word>), _l, _xp, _zp, _s, ([for (i in _r) i] : stdgo.Slice<stdgo._internal.math.big.Big.Word>), _c, _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argVWW(stdgo._internal.math.big.Big.T_argVWW) from stdgo._internal.math.big.Big.T_argVWW to stdgo._internal.math.big.Big.T_argVWW {
    public var _z(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__z():stdgo._internal.math.big.Big.T_nat return this._z;
    function set__z(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__x():stdgo._internal.math.big.Big.T_nat return this._x;
    function set__x(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.Word;
    function get__y():stdgo._internal.math.big.Big.Word return this._y;
    function set__y(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._y = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.math.big.Big.Word;
    function get__r():stdgo._internal.math.big.Big.Word return this._r;
    function set__r(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._r = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.math.big.Big.Word;
    function get__c():stdgo._internal.math.big.Big.Word return this._c;
    function set__c(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._c = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.T_nat, ?_x:stdgo._internal.math.big.Big.T_nat, ?_y:stdgo._internal.math.big.Big.Word, ?_r:stdgo._internal.math.big.Big.Word, ?_c:stdgo._internal.math.big.Big.Word) this = new stdgo._internal.math.big.Big.T_argVWW(_z, _x, _y, _r, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argWVW(stdgo._internal.math.big.Big.T_argWVW) from stdgo._internal.math.big.Big.T_argWVW to stdgo._internal.math.big.Big.T_argWVW {
    public var _z(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__z():stdgo._internal.math.big.Big.T_nat return this._z;
    function set__z(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._z = v;
        return v;
    }
    public var _xn(get, set) : stdgo._internal.math.big.Big.Word;
    function get__xn():stdgo._internal.math.big.Big.Word return this._xn;
    function set__xn(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._xn = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__x():stdgo._internal.math.big.Big.T_nat return this._x;
    function set__x(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.Word;
    function get__y():stdgo._internal.math.big.Big.Word return this._y;
    function set__y(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._y = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.math.big.Big.Word;
    function get__r():stdgo._internal.math.big.Big.Word return this._r;
    function set__r(v:stdgo._internal.math.big.Big.Word):stdgo._internal.math.big.Big.Word {
        this._r = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.T_nat, ?_xn:stdgo._internal.math.big.Big.Word, ?_x:stdgo._internal.math.big.Big.T_nat, ?_y:stdgo._internal.math.big.Big.Word, ?_r:stdgo._internal.math.big.Big.Word) this = new stdgo._internal.math.big.Big.T_argWVW(_z, _xn, _x, _y, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.big.Big.T_decimal_static_extension) abstract T_decimal(stdgo._internal.math.big.Big.T_decimal) from stdgo._internal.math.big.Big.T_decimal to stdgo._internal.math.big.Big.T_decimal {
    public var _mant(get, set) : Array<std.UInt>;
    function get__mant():Array<std.UInt> return [for (i in this._mant) i];
    function set__mant(v:Array<std.UInt>):Array<std.UInt> {
        this._mant = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _exp(get, set) : StdTypes.Int;
    function get__exp():StdTypes.Int return this._exp;
    function set__exp(v:StdTypes.Int):StdTypes.Int {
        this._exp = v;
        return v;
    }
    public function new(?_mant:Array<std.UInt>, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big.T_decimal(([for (i in _mant) i] : stdgo.Slice<stdgo.GoUInt8>), _exp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Float__static_extension) abstract Float_(stdgo._internal.math.big.Big.Float_) from stdgo._internal.math.big.Big.Float_ to stdgo._internal.math.big.Big.Float_ {
    public var _prec(get, set) : std.UInt;
    function get__prec():std.UInt return this._prec;
    function set__prec(v:std.UInt):std.UInt {
        this._prec = v;
        return v;
    }
    public var _mode(get, set) : stdgo._internal.math.big.Big.RoundingMode;
    function get__mode():stdgo._internal.math.big.Big.RoundingMode return this._mode;
    function set__mode(v:stdgo._internal.math.big.Big.RoundingMode):stdgo._internal.math.big.Big.RoundingMode {
        this._mode = v;
        return v;
    }
    public var _acc(get, set) : stdgo._internal.math.big.Big.Accuracy;
    function get__acc():stdgo._internal.math.big.Big.Accuracy return this._acc;
    function set__acc(v:stdgo._internal.math.big.Big.Accuracy):stdgo._internal.math.big.Big.Accuracy {
        this._acc = v;
        return v;
    }
    public var _form(get, set) : stdgo._internal.math.big.Big.T_form;
    function get__form():stdgo._internal.math.big.Big.T_form return this._form;
    function set__form(v:stdgo._internal.math.big.Big.T_form):stdgo._internal.math.big.Big.T_form {
        this._form = v;
        return v;
    }
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _mant(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__mant():stdgo._internal.math.big.Big.T_nat return this._mant;
    function set__mant(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._mant = v;
        return v;
    }
    public var _exp(get, set) : StdTypes.Int;
    function get__exp():StdTypes.Int return this._exp;
    function set__exp(v:StdTypes.Int):StdTypes.Int {
        this._exp = v;
        return v;
    }
    public function new(?_prec:std.UInt, ?_mode:stdgo._internal.math.big.Big.RoundingMode, ?_acc:stdgo._internal.math.big.Big.Accuracy, ?_form:stdgo._internal.math.big.Big.T_form, ?_neg:Bool, ?_mant:stdgo._internal.math.big.Big.T_nat, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big.Float_(_prec, _mode, _acc, _form, _neg, _mant, _exp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.ErrNaN_static_extension) abstract ErrNaN(stdgo._internal.math.big.Big.ErrNaN) from stdgo._internal.math.big.Big.ErrNaN to stdgo._internal.math.big.Big.ErrNaN {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public function new(?_msg:String) this = new stdgo._internal.math.big.Big.ErrNaN(_msg);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.big.Big.T_matrix_static_extension) abstract T_matrix(stdgo._internal.math.big.Big.T_matrix) from stdgo._internal.math.big.Big.T_matrix to stdgo._internal.math.big.Big.T_matrix {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _m(get, set) : StdTypes.Int;
    function get__m():StdTypes.Int return this._m;
    function set__m(v:StdTypes.Int):StdTypes.Int {
        this._m = v;
        return v;
    }
    public var _a(get, set) : Array<stdgo._internal.math.big.Big.Rat>;
    function get__a():Array<stdgo._internal.math.big.Big.Rat> return [for (i in this._a) i];
    function set__a(v:Array<stdgo._internal.math.big.Big.Rat>):Array<stdgo._internal.math.big.Big.Rat> {
        this._a = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big.Rat>>);
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_m:StdTypes.Int, ?_a:Array<stdgo._internal.math.big.Big.Rat>) this = new stdgo._internal.math.big.Big.T_matrix(_n, _m, ([for (i in _a) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big.Rat>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Int__static_extension) abstract Int_(stdgo._internal.math.big.Big.Int_) from stdgo._internal.math.big.Big.Int_ to stdgo._internal.math.big.Big.Int_ {
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _abs(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__abs():stdgo._internal.math.big.Big.T_nat return this._abs;
    function set__abs(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._abs = v;
        return v;
    }
    public function new(?_neg:Bool, ?_abs:stdgo._internal.math.big.Big.T_nat) this = new stdgo._internal.math.big.Big.Int_(_neg, _abs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argZZ(stdgo._internal.math.big.Big.T_argZZ) from stdgo._internal.math.big.Big.T_argZZ to stdgo._internal.math.big.Big.T_argZZ {
    public var _z(get, set) : stdgo._internal.math.big.Big.Int_;
    function get__z():stdgo._internal.math.big.Big.Int_ return this._z;
    function set__z(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this._z = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.Int_;
    function get__x():stdgo._internal.math.big.Big.Int_ return this._x;
    function set__x(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.Int_;
    function get__y():stdgo._internal.math.big.Big.Int_ return this._y;
    function set__y(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this._y = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.Int_, ?_x:stdgo._internal.math.big.Big.Int_, ?_y:stdgo._internal.math.big.Big.Int_) this = new stdgo._internal.math.big.Big.T_argZZ(_z, _x, _y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_intShiftTest(stdgo._internal.math.big.Big.T_intShiftTest) from stdgo._internal.math.big.Big.T_intShiftTest to stdgo._internal.math.big.Big.T_intShiftTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = v;
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = v;
        return v;
    }
    public function new(?_in:String, ?_shift:std.UInt, ?_out:String) this = new stdgo._internal.math.big.Big.T_intShiftTest(_in, _shift, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.math.big.Big.T_byteReader_static_extension) abstract T_byteReader(stdgo._internal.math.big.Big.T_byteReader) from stdgo._internal.math.big.Big.T_byteReader to stdgo._internal.math.big.Big.T_byteReader {
    public var scanState(get, set) : stdgo._internal.fmt.Fmt.ScanState;
    function get_scanState():stdgo._internal.fmt.Fmt.ScanState return this.scanState;
    function set_scanState(v:stdgo._internal.fmt.Fmt.ScanState):stdgo._internal.fmt.Fmt.ScanState {
        this.scanState = v;
        return v;
    }
    public function new(?scanState:stdgo._internal.fmt.Fmt.ScanState) this = new stdgo._internal.math.big.Big.T_byteReader(scanState);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_argNN(stdgo._internal.math.big.Big.T_argNN) from stdgo._internal.math.big.Big.T_argNN to stdgo._internal.math.big.Big.T_argNN {
    public var _z(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__z():stdgo._internal.math.big.Big.T_nat return this._z;
    function set__z(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__x():stdgo._internal.math.big.Big.T_nat return this._x;
    function set__x(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__y():stdgo._internal.math.big.Big.T_nat return this._y;
    function set__y(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._y = v;
        return v;
    }
    public function new(?_z:stdgo._internal.math.big.Big.T_nat, ?_x:stdgo._internal.math.big.Big.T_nat, ?_y:stdgo._internal.math.big.Big.T_nat) this = new stdgo._internal.math.big.Big.T_argNN(_z, _x, _y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_shiftTest(stdgo._internal.math.big.Big.T_shiftTest) from stdgo._internal.math.big.Big.T_shiftTest to stdgo._internal.math.big.Big.T_shiftTest {
    public var _in(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__in():stdgo._internal.math.big.Big.T_nat return this._in;
    function set__in(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._in = v;
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__out():stdgo._internal.math.big.Big.T_nat return this._out;
    function set__out(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._out = v;
        return v;
    }
    public function new(?_in:stdgo._internal.math.big.Big.T_nat, ?_shift:std.UInt, ?_out:stdgo._internal.math.big.Big.T_nat) this = new stdgo._internal.math.big.Big.T_shiftTest(_in, _shift, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_modWTest(stdgo._internal.math.big.Big.T_modWTest) from stdgo._internal.math.big.Big.T_modWTest to stdgo._internal.math.big.Big.T_modWTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _dividend(get, set) : String;
    function get__dividend():String return this._dividend;
    function set__dividend(v:String):String {
        this._dividend = v;
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = v;
        return v;
    }
    public function new(?_in:String, ?_dividend:String, ?_out:String) this = new stdgo._internal.math.big.Big.T_modWTest(_in, _dividend, _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_divisor(stdgo._internal.math.big.Big.T_divisor) from stdgo._internal.math.big.Big.T_divisor to stdgo._internal.math.big.Big.T_divisor {
    public var _bbb(get, set) : stdgo._internal.math.big.Big.T_nat;
    function get__bbb():stdgo._internal.math.big.Big.T_nat return this._bbb;
    function set__bbb(v:stdgo._internal.math.big.Big.T_nat):stdgo._internal.math.big.Big.T_nat {
        this._bbb = v;
        return v;
    }
    public var _nbits(get, set) : StdTypes.Int;
    function get__nbits():StdTypes.Int return this._nbits;
    function set__nbits(v:StdTypes.Int):StdTypes.Int {
        this._nbits = v;
        return v;
    }
    public var _ndigits(get, set) : StdTypes.Int;
    function get__ndigits():StdTypes.Int return this._ndigits;
    function set__ndigits(v:StdTypes.Int):StdTypes.Int {
        this._ndigits = v;
        return v;
    }
    public function new(?_bbb:stdgo._internal.math.big.Big.T_nat, ?_nbits:StdTypes.Int, ?_ndigits:StdTypes.Int) this = new stdgo._internal.math.big.Big.T_divisor(_bbb, _nbits, _ndigits);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Rat_static_extension) abstract Rat(stdgo._internal.math.big.Big.Rat) from stdgo._internal.math.big.Big.Rat to stdgo._internal.math.big.Big.Rat {
    public var _a(get, set) : stdgo._internal.math.big.Big.Int_;
    function get__a():stdgo._internal.math.big.Big.Int_ return this._a;
    function set__a(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this._a = v;
        return v;
    }
    public var _b(get, set) : stdgo._internal.math.big.Big.Int_;
    function get__b():stdgo._internal.math.big.Big.Int_ return this._b;
    function set__b(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this._b = v;
        return v;
    }
    public function new(?_a:stdgo._internal.math.big.Big.Int_, ?_b:stdgo._internal.math.big.Big.Int_) this = new stdgo._internal.math.big.Big.Rat(_a, _b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_ratBinArg(stdgo._internal.math.big.Big.T_ratBinArg) from stdgo._internal.math.big.Big.T_ratBinArg to stdgo._internal.math.big.Big.T_ratBinArg {
    public var _x(get, set) : String;
    function get__x():String return this._x;
    function set__x(v:String):String {
        this._x = v;
        return v;
    }
    public var _y(get, set) : String;
    function get__y():String return this._y;
    function set__y(v:String):String {
        this._y = v;
        return v;
    }
    public var _z(get, set) : String;
    function get__z():String return this._z;
    function set__z(v:String):String {
        this._z = v;
        return v;
    }
    public function new(?_x:String, ?_y:String, ?_z:String) this = new stdgo._internal.math.big.Big.T_ratBinArg(_x, _y, _z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract StringTest(stdgo._internal.math.big.Big.StringTest) from stdgo._internal.math.big.Big.StringTest to stdgo._internal.math.big.Big.StringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_in:String, ?_out:String, ?_ok:Bool) this = new stdgo._internal.math.big.Big.StringTest(_in, _out, _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.math.big.Big.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.math.big.Big.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.math.big.Big.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.math.big.Big.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.math.big.Big.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.math.big.Big.T__struct_5;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.math.big.Big.T__struct_6;
class T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.math.big.Big.T__struct_7;
class T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.math.big.Big.T__struct_8;
class T__struct_9_static_extension {

}
typedef T__struct_9 = stdgo._internal.math.big.Big.T__struct_9;
class T__struct_10_static_extension {

}
typedef T__struct_10 = stdgo._internal.math.big.Big.T__struct_10;
class T__struct_11_static_extension {

}
typedef T__struct_11 = stdgo._internal.math.big.Big.T__struct_11;
class T__struct_12_static_extension {

}
typedef T__struct_12 = stdgo._internal.math.big.Big.T__struct_12;
class T__struct_13_static_extension {

}
typedef T__struct_13 = stdgo._internal.math.big.Big.T__struct_13;
class T__struct_14_static_extension {

}
typedef T__struct_14 = stdgo._internal.math.big.Big.T__struct_14;
class T__struct_15_static_extension {

}
typedef T__struct_15 = stdgo._internal.math.big.Big.T__struct_15;
class T__struct_16_static_extension {

}
typedef T__struct_16 = stdgo._internal.math.big.Big.T__struct_16;
class T__struct_17_static_extension {

}
typedef T__struct_17 = stdgo._internal.math.big.Big.T__struct_17;
class T__struct_18_static_extension {

}
typedef T__struct_18 = stdgo._internal.math.big.Big.T__struct_18;
class T__struct_19_static_extension {

}
typedef T__struct_19 = stdgo._internal.math.big.Big.T__struct_19;
class T__struct_20_static_extension {

}
typedef T__struct_20 = stdgo._internal.math.big.Big.T__struct_20;
class T__struct_21_static_extension {

}
typedef T__struct_21 = stdgo._internal.math.big.Big.T__struct_21;
class T__struct_22_static_extension {

}
typedef T__struct_22 = stdgo._internal.math.big.Big.T__struct_22;
class T__struct_23_static_extension {

}
typedef T__struct_23 = stdgo._internal.math.big.Big.T__struct_23;
class T__struct_24_static_extension {

}
typedef T__struct_24 = stdgo._internal.math.big.Big.T__struct_24;
class T__struct_25_static_extension {

}
typedef T__struct_25 = stdgo._internal.math.big.Big.T__struct_25;
class T__struct_26_static_extension {

}
typedef T__struct_26 = stdgo._internal.math.big.Big.T__struct_26;
class T__struct_27_static_extension {

}
typedef T__struct_27 = stdgo._internal.math.big.Big.T__struct_27;
class T__struct_28_static_extension {

}
typedef T__struct_28 = stdgo._internal.math.big.Big.T__struct_28;
class T__struct_29_static_extension {

}
typedef T__struct_29 = stdgo._internal.math.big.Big.T__struct_29;
class T__struct_30_static_extension {

}
typedef T__struct_30 = stdgo._internal.math.big.Big.T__struct_30;
class T__struct_31_static_extension {

}
typedef T__struct_31 = stdgo._internal.math.big.Big.T__struct_31;
class T__struct_32_static_extension {

}
typedef T__struct_32 = stdgo._internal.math.big.Big.T__struct_32;
class T__struct_33_static_extension {

}
typedef T__struct_33 = stdgo._internal.math.big.Big.T__struct_33;
class T__struct_34_static_extension {

}
typedef T__struct_34 = stdgo._internal.math.big.Big.T__struct_34;
class T__struct_35_static_extension {

}
typedef T__struct_35 = stdgo._internal.math.big.Big.T__struct_35;
class T__struct_36_static_extension {

}
typedef T__struct_36 = stdgo._internal.math.big.Big.T__struct_36;
class T__struct_37_static_extension {

}
typedef T__struct_37 = stdgo._internal.math.big.Big.T__struct_37;
class T__struct_38_static_extension {

}
typedef T__struct_38 = stdgo._internal.math.big.Big.T__struct_38;
class T__struct_39_static_extension {

}
typedef T__struct_39 = stdgo._internal.math.big.Big.T__struct_39;
class T__struct_40_static_extension {

}
typedef T__struct_40 = stdgo._internal.math.big.Big.T__struct_40;
class T__struct_41_static_extension {

}
typedef T__struct_41 = stdgo._internal.math.big.Big.T__struct_41;
class T__struct_42_static_extension {

}
typedef T__struct_42 = stdgo._internal.math.big.Big.T__struct_42;
class T__struct_43_static_extension {

}
typedef T__struct_43 = stdgo._internal.math.big.Big.T__struct_43;
class T__struct_44_static_extension {

}
typedef T__struct_44 = stdgo._internal.math.big.Big.T__struct_44;
class T__struct_45_static_extension {

}
typedef T__struct_45 = stdgo._internal.math.big.Big.T__struct_45;
class T__struct_46_static_extension {

}
typedef T__struct_46 = stdgo._internal.math.big.Big.T__struct_46;
class T__struct_47_static_extension {

}
typedef T__struct_47 = stdgo._internal.math.big.Big.T__struct_47;
class T__struct_48_static_extension {

}
typedef T__struct_48 = stdgo._internal.math.big.Big.T__struct_48;
class T__struct_49_static_extension {

}
typedef T__struct_49 = stdgo._internal.math.big.Big.T__struct_49;
class T__struct_50_static_extension {

}
typedef T__struct_50 = stdgo._internal.math.big.Big.T__struct_50;
class T__struct_51_static_extension {

}
typedef T__struct_51 = stdgo._internal.math.big.Big.T__struct_51;
class T__struct_52_static_extension {

}
typedef T__struct_52 = stdgo._internal.math.big.Big.T__struct_52;
class T__struct_53_static_extension {

}
typedef T__struct_53 = stdgo._internal.math.big.Big.T__struct_53;
class T__struct_54_static_extension {

}
typedef T__struct_54 = stdgo._internal.math.big.Big.T__struct_54;
class T__struct_55_static_extension {

}
typedef T__struct_55 = stdgo._internal.math.big.Big.T__struct_55;
class T__struct_56_static_extension {

}
typedef T__struct_56 = stdgo._internal.math.big.Big.T__struct_56;
class T__struct_57_static_extension {
    public static function _unlockSlow(__self__:T__struct_57, __0:StdTypes.Int) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension._unlockSlow(__self__, __0);
    }
    public static function _lockSlow(__self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:T__struct_57):Bool {
        return stdgo._internal.math.big.Big.T__struct_57_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension.lock(__self__);
    }
}
typedef T__struct_57 = stdgo._internal.math.big.Big.T__struct_57;
class T__struct_58_static_extension {

}
typedef T__struct_58 = stdgo._internal.math.big.Big.T__struct_58;
class T__struct_59_static_extension {

}
typedef T__struct_59 = stdgo._internal.math.big.Big.T__struct_59;
class T__struct_60_static_extension {

}
typedef T__struct_60 = stdgo._internal.math.big.Big.T__struct_60;
class T__struct_61_static_extension {

}
typedef T__struct_61 = stdgo._internal.math.big.Big.T__struct_61;
class T__struct_62_static_extension {

}
typedef T__struct_62 = stdgo._internal.math.big.Big.T__struct_62;
class T__struct_63_static_extension {

}
typedef T__struct_63 = stdgo._internal.math.big.Big.T__struct_63;
class T__struct_64_static_extension {

}
typedef T__struct_64 = stdgo._internal.math.big.Big.T__struct_64;
class T__struct_65_static_extension {

}
typedef T__struct_65 = stdgo._internal.math.big.Big.T__struct_65;
class T__struct_66_static_extension {

}
typedef T__struct_66 = stdgo._internal.math.big.Big.T__struct_66;
class T__struct_67_static_extension {
    public static function _doSlow(__self__:T__struct_67, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.math.big.Big.T__struct_67_static_extension._doSlow(__self__, _f);
    }
    public static function do_(__self__:T__struct_67, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.math.big.Big.T__struct_67_static_extension.do_(__self__, _f);
    }
}
typedef T__struct_67 = stdgo._internal.math.big.Big.T__struct_67;
class T__struct_68_static_extension {

}
typedef T__struct_68 = stdgo._internal.math.big.Big.T__struct_68;
class T__struct_69_static_extension {

}
typedef T__struct_69 = stdgo._internal.math.big.Big.T__struct_69;
typedef Word = stdgo._internal.math.big.Big.Word;
typedef T_funVV = stdgo._internal.math.big.Big.T_funVV;
typedef T_funVW = stdgo._internal.math.big.Big.T_funVW;
typedef T_funVWW = stdgo._internal.math.big.Big.T_funVWW;
typedef T_funWVW = stdgo._internal.math.big.Big.T_funWVW;
typedef Bits = stdgo._internal.math.big.Big.Bits;
typedef T_form = stdgo._internal.math.big.Big.T_form;
typedef RoundingMode = stdgo._internal.math.big.Big.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big.Accuracy;
typedef T_funZZ = stdgo._internal.math.big.Big.T_funZZ;
typedef T_bitFun = stdgo._internal.math.big.Big.T_bitFun;
typedef T_nat = stdgo._internal.math.big.Big.T_nat;
typedef T_funNN = stdgo._internal.math.big.Big.T_funNN;
typedef T_ratBinFun = stdgo._internal.math.big.Big.T_ratBinFun;
class T_decimal_static_extension {
    static public function _roundDown(_x:T_decimal, _n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._roundDown(_x, _n);
    }
    static public function _roundUp(_x:T_decimal, _n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._roundUp(_x, _n);
    }
    static public function _round(_x:T_decimal, _n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._round(_x, _n);
    }
    static public function string(_x:T_decimal):String {
        return stdgo._internal.math.big.Big.T_decimal_static_extension.string(_x);
    }
    static public function _init(_x:T_decimal, _m:T_nat, _shift:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._init(_x, _m, _shift);
    }
    static public function _at(_d:T_decimal, _i:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_decimal_static_extension._at(_d, _i);
    }
}
class Float__static_extension {
    static public function _sqrtInverse(_z:Float_, _x:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._sqrtInverse(_z, _x);
    }
    static public function sqrt(_z:Float_, _x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.sqrt(_z, _x);
    }
    static public function format(_x:Float_, _s:stdgo._internal.fmt.Fmt.State, _format:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.Float__static_extension.format(_x, _s, _format);
    }
    static public function _fmtP(_x:Float_, _buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtP(_x, _buf)) i];
    }
    static public function _fmtX(_x:Float_, _buf:Array<StdTypes.Int>, _prec:StdTypes.Int):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtX(_x, _buf, _prec)) i];
    }
    static public function _fmtB(_x:Float_, _buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtB(_x, _buf)) i];
    }
    static public function append(_x:Float_, _buf:Array<StdTypes.Int>, _fmt:StdTypes.Int, _prec:StdTypes.Int):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension.append(_x, _buf, _fmt, _prec)) i];
    }
    static public function string(_x:Float_):String {
        return stdgo._internal.math.big.Big.Float__static_extension.string(_x);
    }
    static public function text(_x:Float_, _format:StdTypes.Int, _prec:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Float__static_extension.text(_x, _format, _prec);
    }
    static public function unmarshalText(_z:Float_, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Float__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Float_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Float_, _buf:Array<StdTypes.Int>):stdgo.Error {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Float__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Float_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Float_, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Float__static_extension.scan(_z, _s, _ch);
    }
    static public function parse(_z:Float_, _s:String, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.parse(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pow5(_z:Float_, _n:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension._pow5(_z, _n);
    }
    static public function _scan(_z:Float_, _r:stdgo._internal.io.Io.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function setString(_z:Float_, _s:String):stdgo.Tuple<Float_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _int64(_x:Float_):haxe.Int64 {
        return stdgo._internal.math.big.Big.Float__static_extension._int64(_x);
    }
    static public function _uint64(_x:Float_):haxe.UInt64 {
        return stdgo._internal.math.big.Big.Float__static_extension._uint64(_x);
    }
    static public function _ord(_x:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension._ord(_x);
    }
    static public function cmp(_x:Float_, _y:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.cmp(_x, _y);
    }
    static public function quo(_z:Float_, _x:Float_, _y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Float_, _x:Float_, _y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Float_, _x:Float_, _y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Float_, _x:Float_, _y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.add(_z, _x, _y);
    }
    static public function _ucmp(_x:Float_, _y:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension._ucmp(_x, _y);
    }
    static public function _uquo(_z:Float_, _x:Float_, _y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._uquo(_z, _x, _y);
    }
    static public function _umul(_z:Float_, _x:Float_, _y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._umul(_z, _x, _y);
    }
    static public function _usub(_z:Float_, _x:Float_, _y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._usub(_z, _x, _y);
    }
    static public function _uadd(_z:Float_, _x:Float_, _y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._uadd(_z, _x, _y);
    }
    static public function neg(_z:Float_, _x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Float_, _x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.abs(_z, _x);
    }
    static public function rat(_x:Float_, _z:Rat):stdgo.Tuple<Rat, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.rat(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int_(_x:Float_, _z:Int_):stdgo.Tuple<Int_, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.int_(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int64(_x:Float_):stdgo.Tuple<haxe.Int64, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.int64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_x:Float_):stdgo.Tuple<haxe.UInt64, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.uint64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function copy(_z:Float_, _x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.copy(_z, _x);
    }
    static public function set(_z:Float_, _x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.set(_z, _x);
    }
    static public function setInf(_z:Float_, _signbit:Bool):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInf(_z, _signbit);
    }
    static public function setRat(_z:Float_, _x:Rat):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setRat(_z, _x);
    }
    static public function setInt(_z:Float_, _x:Int_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInt(_z, _x);
    }
    static public function setFloat64(_z:Float_, _x:StdTypes.Float):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setFloat64(_z, _x);
    }
    static public function setInt64(_z:Float_, _x:haxe.Int64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInt64(_z, _x);
    }
    static public function setUint64(_z:Float_, _x:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setUint64(_z, _x);
    }
    static public function _setBits64(_z:Float_, _neg:Bool, _x:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension._setBits64(_z, _neg, _x);
    }
    static public function _round(_z:Float_, _sbit:std.UInt):Void {
        stdgo._internal.math.big.Big.Float__static_extension._round(_z, _sbit);
    }
    static public function _validate0(_x:Float_):String {
        return stdgo._internal.math.big.Big.Float__static_extension._validate0(_x);
    }
    static public function _validate(_x:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._validate(_x);
    }
    static public function isInt(_x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.isInt(_x);
    }
    static public function isInf(_x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.isInf(_x);
    }
    static public function signbit(_x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.signbit(_x);
    }
    static public function setMantExp(_z:Float_, _mant:Float_, _exp:StdTypes.Int):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setMantExp(_z, _mant, _exp);
    }
    static public function _setExpAndRound(_z:Float_, _exp:haxe.Int64, _sbit:std.UInt):Void {
        stdgo._internal.math.big.Big.Float__static_extension._setExpAndRound(_z, _exp, _sbit);
    }
    static public function mantExp(_x:Float_, _mant:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.mantExp(_x, _mant);
    }
    static public function sign(_x:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.sign(_x);
    }
    static public function acc(_x:Float_):Accuracy {
        return stdgo._internal.math.big.Big.Float__static_extension.acc(_x);
    }
    static public function mode(_x:Float_):RoundingMode {
        return stdgo._internal.math.big.Big.Float__static_extension.mode(_x);
    }
    static public function minPrec(_x:Float_):std.UInt {
        return stdgo._internal.math.big.Big.Float__static_extension.minPrec(_x);
    }
    static public function prec(_x:Float_):std.UInt {
        return stdgo._internal.math.big.Big.Float__static_extension.prec(_x);
    }
    static public function setMode(_z:Float_, _mode:RoundingMode):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setMode(_z, _mode);
    }
    static public function setPrec(_z:Float_, _prec:std.UInt):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setPrec(_z, _prec);
    }
}
class ErrNaN_static_extension {
    static public function error(_err:ErrNaN):String {
        return stdgo._internal.math.big.Big.ErrNaN_static_extension.error(_err);
    }
}
class T_matrix_static_extension {
    static public function string(_a:T_matrix):String {
        return stdgo._internal.math.big.Big.T_matrix_static_extension.string(_a);
    }
    static public function _eql(_a:T_matrix, _b:T_matrix):Bool {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._eql(_a, _b);
    }
    static public function _mul(_a:T_matrix, _b:T_matrix):T_matrix {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._mul(_a, _b);
    }
    static public function _set(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int, _x:Rat):Void {
        stdgo._internal.math.big.Big.T_matrix_static_extension._set(_a, _i, _j, _x);
    }
    static public function _at(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int):Rat {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._at(_a, _i, _j);
    }
}
class Int__static_extension {
    static public function _scaleDenom(_z:Int_, _x:Int_, _f:T_nat):Void {
        stdgo._internal.math.big.Big.Int__static_extension._scaleDenom(_z, _x, _f);
    }
    static public function probablyPrime(_x:Int_, _n:StdTypes.Int):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.probablyPrime(_x, _n);
    }
    static public function unmarshalJSON(_z:Int_, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.unmarshalJSON(_z, _text);
    }
    static public function marshalJSON(_x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.marshalJSON(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_z:Int_, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Int_, _buf:Array<StdTypes.Int>):stdgo.Error {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Int_, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Int__static_extension.scan(_z, _s, _ch);
    }
    static public function _scan(_z:Int_, _r:stdgo._internal.io.Io.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Int_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function format(_x:Int_, _s:stdgo._internal.fmt.Fmt.State, _ch:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.Int__static_extension.format(_x, _s, _ch);
    }
    static public function string(_x:Int_):String {
        return stdgo._internal.math.big.Big.Int__static_extension.string(_x);
    }
    static public function append(_x:Int_, _buf:Array<StdTypes.Int>, _base:StdTypes.Int):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.append(_x, _buf, _base)) i];
    }
    static public function text(_x:Int_, _base:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Int__static_extension.text(_x, _base);
    }
    static public function sqrt(_z:Int_, _x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.sqrt(_z, _x);
    }
    static public function not(_z:Int_, _x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.not(_z, _x);
    }
    static public function xor(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.xor(_z, _x, _y);
    }
    static public function or(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.or(_z, _x, _y);
    }
    static public function andNot(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.andNot(_z, _x, _y);
    }
    static public function and(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.and(_z, _x, _y);
    }
    static public function setBit(_z:Int_, _x:Int_, _i:StdTypes.Int, _b:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setBit(_z, _x, _i, _b);
    }
    static public function bit(_x:Int_, _i:StdTypes.Int):std.UInt {
        return stdgo._internal.math.big.Big.Int__static_extension.bit(_x, _i);
    }
    static public function rsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rsh(_z, _x, _n);
    }
    static public function lsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.lsh(_z, _x, _n);
    }
    static public function modSqrt(_z:Int_, _x:Int_, _p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.modSqrt(_z, _x, _p);
    }
    static public function _modSqrtTonelliShanks(_z:Int_, _x:Int_, _p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrtTonelliShanks(_z, _x, _p);
    }
    static public function _modSqrt5Mod8Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrt5Mod8Prime(_z, _x, _p);
    }
    static public function _modSqrt3Mod4Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrt3Mod4Prime(_z, _x, _p);
    }
    static public function modInverse(_z:Int_, _g:Int_, _n:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.modInverse(_z, _g, _n);
    }
    static public function rand(_z:Int_, _rnd:stdgo._internal.math.rand.Rand.Rand, _n:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rand(_z, _rnd, _n);
    }
    static public function _lehmerGCD(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._lehmerGCD(_z, _x, _y, _a, _b);
    }
    static public function gcd(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.gcd(_z, _x, _y, _a, _b);
    }
    static public function _exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_, _slow:Bool):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._exp(_z, _x, _y, _m, _slow);
    }
    static public function _expSlow(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._expSlow(_z, _x, _y, _m);
    }
    static public function exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.exp(_z, _x, _y, _m);
    }
    static public function trailingZeroBits(_x:Int_):std.UInt {
        return stdgo._internal.math.big.Big.Int__static_extension.trailingZeroBits(_x);
    }
    static public function bitLen(_x:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.bitLen(_x);
    }
    static public function fillBytes(_x:Int_, _buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.fillBytes(_x, _buf)) i];
    }
    static public function bytes(_x:Int_):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.bytes(_x)) i];
    }
    static public function setBytes(_z:Int_, _buf:Array<StdTypes.Int>):Int_ {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.setBytes(_z, _buf);
    }
    static public function _setFromScanner(_z:Int_, _r:stdgo._internal.io.Io.ByteScanner, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension._setFromScanner(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setString(_z:Int_, _s:String, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.setString(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Int_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isUint64(_x:Int_):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.isUint64(_x);
    }
    static public function isInt64(_x:Int_):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.isInt64(_x);
    }
    static public function uint64(_x:Int_):haxe.UInt64 {
        return stdgo._internal.math.big.Big.Int__static_extension.uint64(_x);
    }
    static public function int64(_x:Int_):haxe.Int64 {
        return stdgo._internal.math.big.Big.Int__static_extension.int64(_x);
    }
    static public function cmpAbs(_x:Int_, _y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.cmpAbs(_x, _y);
    }
    static public function cmp(_x:Int_, _y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.cmp(_x, _y);
    }
    static public function divMod(_z:Int_, _x:Int_, _y:Int_, _m:Int_):stdgo.Tuple<Int_, Int_> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.divMod(_z, _x, _y, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mod(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mod(_z, _x, _y);
    }
    static public function div(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.div(_z, _x, _y);
    }
    static public function quoRem(_z:Int_, _x:Int_, _y:Int_, _r:Int_):stdgo.Tuple<Int_, Int_> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.quoRem(_z, _x, _y, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rem(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rem(_z, _x, _y);
    }
    static public function quo(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.quo(_z, _x, _y);
    }
    static public function binomial(_z:Int_, _n:haxe.Int64, _k:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.binomial(_z, _n, _k);
    }
    static public function mulRange(_z:Int_, _a:haxe.Int64, _b:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mulRange(_z, _a, _b);
    }
    static public function mul(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Int_, _x:Int_, _y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.add(_z, _x, _y);
    }
    static public function neg(_z:Int_, _x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Int_, _x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.abs(_z, _x);
    }
    static public function setBits(_z:Int_, _abs:Array<Word>):Int_ {
        final _abs = ([for (i in _abs) i] : stdgo.Slice<Word>);
        return stdgo._internal.math.big.Big.Int__static_extension.setBits(_z, _abs);
    }
    static public function bits(_x:Int_):Array<Word> {
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.bits(_x)) i];
    }
    static public function set(_z:Int_, _x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Int_, _x:haxe.UInt64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Int_, _x:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setInt64(_z, _x);
    }
    static public function sign(_x:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.sign(_x);
    }
}
class T_byteReader_static_extension {
    static public function unreadByte(_r:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big.T_byteReader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:T_byteReader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function width(__self__:T_byteReader):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.width(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big.T_byteReader_static_extension.unreadRune(__self__);
    }
    public static function token(__self__:T_byteReader, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = _f;
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.token(__self__, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function skipSpace(__self__:T_byteReader) {
        stdgo._internal.math.big.Big.T_byteReader_static_extension.skipSpace(__self__);
    }
    public static function readRune(__self__:T_byteReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function read(__self__:T_byteReader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.read(__self__, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Rat_static_extension {
    static public function unmarshalText(_z:Rat, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Rat_static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Rat):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Rat, _buf:Array<StdTypes.Int>):stdgo.Error {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Rat_static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Rat):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function floatString(_x:Rat, _prec:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.floatString(_x, _prec);
    }
    static public function ratString(_x:Rat):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.ratString(_x);
    }
    static public function _marshal(_x:Rat):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.Rat_static_extension._marshal(_x)) i];
    }
    static public function string(_x:Rat):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.string(_x);
    }
    static public function setString(_z:Rat, _s:String):stdgo.Tuple<Rat, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_z:Rat, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Rat_static_extension.scan(_z, _s, _ch);
    }
    static public function quo(_z:Rat, _x:Rat, _y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Rat, _x:Rat, _y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Rat, _x:Rat, _y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Rat, _x:Rat, _y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.add(_z, _x, _y);
    }
    static public function cmp(_x:Rat, _y:Rat):StdTypes.Int {
        return stdgo._internal.math.big.Big.Rat_static_extension.cmp(_x, _y);
    }
    static public function _norm(_z:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension._norm(_z);
    }
    static public function denom(_x:Rat):Int_ {
        return stdgo._internal.math.big.Big.Rat_static_extension.denom(_x);
    }
    static public function num(_x:Rat):Int_ {
        return stdgo._internal.math.big.Big.Rat_static_extension.num(_x);
    }
    static public function isInt(_x:Rat):Bool {
        return stdgo._internal.math.big.Big.Rat_static_extension.isInt(_x);
    }
    static public function sign(_x:Rat):StdTypes.Int {
        return stdgo._internal.math.big.Big.Rat_static_extension.sign(_x);
    }
    static public function inv(_z:Rat, _x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.inv(_z, _x);
    }
    static public function neg(_z:Rat, _x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.neg(_z, _x);
    }
    static public function abs(_z:Rat, _x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.abs(_z, _x);
    }
    static public function set(_z:Rat, _x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Rat, _x:haxe.UInt64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Rat, _x:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setInt64(_z, _x);
    }
    static public function setInt(_z:Rat, _x:Int_):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setInt(_z, _x);
    }
    static public function setFrac64(_z:Rat, _a:haxe.Int64, _b:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFrac64(_z, _a, _b);
    }
    static public function setFrac(_z:Rat, _a:Int_, _b:Int_):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFrac(_z, _a, _b);
    }
    static public function float64(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setFloat64(_z:Rat, _f:StdTypes.Float):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFloat64(_z, _f);
    }
}
class Bits_static_extension {
    static public function float_(_bits:Bits):Float_ {
        return stdgo._internal.math.big.Big.Bits_static_extension.float_(_bits);
    }
    static public function _round(_x:Bits, _prec:std.UInt, _mode:RoundingMode):Float_ {
        return stdgo._internal.math.big.Big.Bits_static_extension._round(_x, _prec, _mode);
    }
    static public function _norm(_x:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._norm(_x);
    }
    static public function _mul(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._mul(_x, _y);
    }
    static public function _add(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._add(_x, _y);
    }
}
class RoundingMode_static_extension {
    static public function string(_i:RoundingMode):String {
        return stdgo._internal.math.big.Big.RoundingMode_static_extension.string(_i);
    }
}
class Accuracy_static_extension {
    static public function string(_i:Accuracy):String {
        return stdgo._internal.math.big.Big.Accuracy_static_extension.string(_i);
    }
}
class T_nat_static_extension {
    static public function _probablyPrimeLucas(_n:T_nat):Bool {
        return stdgo._internal.math.big.Big.T_nat_static_extension._probablyPrimeLucas(_n);
    }
    static public function _probablyPrimeMillerRabin(_n:T_nat, _reps:StdTypes.Int, _force2:Bool):Bool {
        return stdgo._internal.math.big.Big.T_nat_static_extension._probablyPrimeMillerRabin(_n, _reps, _force2);
    }
    static public function _divRecursiveStep(_z:T_nat, _u:T_nat, _v:T_nat, _depth:StdTypes.Int, _tmp:T_nat, _temps:Array<T_nat>):Void {
        final _temps = ([for (i in _temps) i] : stdgo.Slice<stdgo.Ref<T_nat>>);
        stdgo._internal.math.big.Big.T_nat_static_extension._divRecursiveStep(_z, _u, _v, _depth, _tmp, _temps);
    }
    static public function _divRecursive(_z:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._divRecursive(_z, _u, _v);
    }
    static public function _divBasic(_q:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._divBasic(_q, _u, _v);
    }
    static public function _divLarge(_z:T_nat, _u:T_nat, _uIn:T_nat, _vIn:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._divLarge(_z, _u, _uIn, _vIn);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _modW(_x:T_nat, _d:Word):Word {
        return stdgo._internal.math.big.Big.T_nat_static_extension._modW(_x, _d);
    }
    static public function _divW(_z:T_nat, _x:T_nat, _y:Word):stdgo.Tuple<T_nat, Word> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._divW(_z, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _div(_z:T_nat, _z2:T_nat, _u:T_nat, _v:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._div(_z, _z2, _u, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _rem(_z:T_nat, _u:T_nat, _v:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._rem(_z, _u, _v);
    }
    static public function _expWW(_z:T_nat, _x:Word, _y:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expWW(_z, _x, _y);
    }
    static public function _convertWords(_q:T_nat, _s:Array<StdTypes.Int>, _b:Word, _ndigits:StdTypes.Int, _bb:Word, _table:Array<T_divisor>):Void {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoByte>);
        final _table = ([for (i in _table) i] : stdgo.Slice<T_divisor>);
        stdgo._internal.math.big.Big.T_nat_static_extension._convertWords(_q, _s, _b, _ndigits, _bb, _table);
    }
    static public function _itoa(_x:T_nat, _neg:Bool, _base:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.T_nat_static_extension._itoa(_x, _neg, _base)) i];
    }
    static public function _utoa(_x:T_nat, _base:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.T_nat_static_extension._utoa(_x, _base)) i];
    }
    static public function _scan(_z:T_nat, _r:stdgo._internal.io.Io.ByteScanner, _base:StdTypes.Int, _fracOk:Bool):stdgo.Tuple.Tuple4<T_nat, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._scan(_z, _r, _base, _fracOk);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _subMod2N(_z:T_nat, _x:T_nat, _y:T_nat, _n:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._subMod2N(_z, _x, _y, _n);
    }
    static public function _sqrt(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sqrt(_z, _x);
    }
    static public function _setBytes(_z:T_nat, _buf:Array<StdTypes.Int>):T_nat {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.T_nat_static_extension._setBytes(_z, _buf);
    }
    static public function _bytes(_z:T_nat, _buf:Array<StdTypes.Int>):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.T_nat_static_extension._bytes(_z, _buf);
    }
    static public function _expNNMontgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNMontgomery(_z, _x, _y, _m);
    }
    static public function _expNNWindowed(_z:T_nat, _x:T_nat, _y:T_nat, _logM:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNWindowed(_z, _x, _y, _logM);
    }
    static public function _expNNMontgomeryEven(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNMontgomeryEven(_z, _x, _y, _m);
    }
    static public function _expNN(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _slow:Bool):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNN(_z, _x, _y, _m, _slow);
    }
    static public function _random(_z:T_nat, _rand:stdgo._internal.math.rand.Rand.Rand, _limit:T_nat, _n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._random(_z, _rand, _limit, _n);
    }
    static public function _xor(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._xor(_z, _x, _y);
    }
    static public function _or(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._or(_z, _x, _y);
    }
    static public function _andNot(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._andNot(_z, _x, _y);
    }
    static public function _trunc(_z:T_nat, _x:T_nat, _n:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._trunc(_z, _x, _n);
    }
    static public function _and(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._and(_z, _x, _y);
    }
    static public function _sticky(_x:T_nat, _i:std.UInt):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sticky(_x, _i);
    }
    static public function _bit(_x:T_nat, _i:std.UInt):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._bit(_x, _i);
    }
    static public function _setBit(_z:T_nat, _x:T_nat, _i:std.UInt, _b:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setBit(_z, _x, _i, _b);
    }
    static public function _shr(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._shr(_z, _x, _s);
    }
    static public function _shl(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._shl(_z, _x, _s);
    }
    static public function _isPow2(_x:T_nat):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._isPow2(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _trailingZeroBits(_x:T_nat):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._trailingZeroBits(_x);
    }
    static public function _bitLen(_x:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_nat_static_extension._bitLen(_x);
    }
    static public function _mulRange(_z:T_nat, _a:haxe.UInt64, _b:haxe.UInt64):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mulRange(_z, _a, _b);
    }
    static public function _sqr(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sqr(_z, _x);
    }
    static public function _mul(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mul(_z, _x, _y);
    }
    static public function _montgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._montgomery(_z, _x, _y, _m, _k, _n);
    }
    static public function _mulAddWW(_z:T_nat, _x:T_nat, _y:Word, _r:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mulAddWW(_z, _x, _y, _r);
    }
    static public function _cmp(_x:T_nat, _y:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_nat_static_extension._cmp(_x, _y);
    }
    static public function _sub(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sub(_z, _x, _y);
    }
    static public function _add(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._add(_z, _x, _y);
    }
    static public function _set(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._set(_z, _x);
    }
    static public function _setUint64(_z:T_nat, _x:haxe.UInt64):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setUint64(_z, _x);
    }
    static public function _setWord(_z:T_nat, _x:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setWord(_z, _x);
    }
    static public function _make(_z:T_nat, _n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._make(_z, _n);
    }
    static public function _norm(_z:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._norm(_z);
    }
    static public function _clear(_z:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._clear(_z);
    }
    static public function string(_z:T_nat):String {
        return stdgo._internal.math.big.Big.T_nat_static_extension.string(_z);
    }
    static public function _modInverse(_z:T_nat, _g:T_nat, _n:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._modInverse(_z, _g, _n);
    }
}
/**
    /|*
    Package big implements arbitrary-precision arithmetic (big numbers).
    The following numeric types are supported:
    
    	Int    signed integers
    	Rat    rational numbers
    	Float  floating-point numbers
    
    The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    values can be declared in the usual ways and denote 0 without further
    initialization:
    
    	var x Int        // &x is an *Int of value 0
    	var r = &Rat{}   // r is a *Rat of value 0
    	y := new(Float)  // y is a *Float of value 0
    
    Alternatively, new values can be allocated and initialized with factory
    functions of the form:
    
    	func NewT(v V) *T
    
    For instance, NewInt(x) returns an *Int set to the value of the int64
    argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    a and b are int64 values, and NewFloat(f) returns a *Float initialized
    to the float64 argument f. More flexibility is provided with explicit
    setters, for instance:
    
    	var z1 Int
    	z1.SetUint64(123)                 // z1 := 123
    	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    
    Setters, numeric operations and predicates are represented as methods of
    the form:
    
    	func (z *T) SetV(v V) *T          // z = v
    	func (z *T) Unary(x *T) *T        // z = unary x
    	func (z *T) Binary(x, y *T) *T    // z = x binary y
    	func (x *T) Pred() P              // p = pred(x)
    
    with T one of Int, Rat, or Float. For unary and binary operations, the
    result is the receiver (usually named z in that case; see below); if it
    is one of the operands x or y it may be safely overwritten (and its memory
    reused).
    
    Arithmetic expressions are typically written as a sequence of individual
    method calls, with each call corresponding to an operation. The receiver
    denotes the result and the method arguments are the operation's operands.
    For instance, given three *Int values a, b and c, the invocation
    
    	c.Add(a, b)
    
    computes the sum a + b and stores the result in c, overwriting whatever
    value was held in c before. Unless specified otherwise, operations permit
    aliasing of parameters, so it is perfectly ok to write
    
    	sum.Add(sum, x)
    
    to accumulate values x in a sum.
    
    (By always passing in a result value via the receiver, memory use can be
    much better controlled. Instead of having to allocate new memory for each
    result, an operation can reuse the space allocated for the result value,
    and overwrite that value with the new result in the process.)
    
    Notational convention: Incoming method parameters (including the receiver)
    are named consistently in the API to clarify their use. Incoming operands
    are usually named x, y, a, b, and so on, but never z. A parameter specifying
    the result is named z (typically the receiver).
    
    For instance, the arguments for (*Int).Add are named x and y, and because
    the receiver specifies the result destination, it is called z:
    
    	func (z *Int) Add(x, y *Int) *Int
    
    Methods of this form typically return the incoming receiver as well, to
    enable simple call chaining.
    
    Methods which don't require a result value to be passed in (for instance,
    Int.Sign), simply return the result. In this case, the receiver is typically
    the first operand, named x:
    
    	func (x *Int) Sign() int
    
    Various methods support conversions between strings and corresponding
    numeric values, and vice versa: *Int, *Rat, and *Float values implement
    the Stringer interface for a (default) string representation of the value,
    but also provide SetString methods to initialize a value from a string in
    a variety of supported formats (see the respective SetString documentation).
    
    Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    and (except for *Rat) the Formatter interface for formatted printing.
    *|/
**/
class Big {
    static public function testFunVV(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVV(_t);
    }
    static public function benchmarkAddVV(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVV(_b);
    }
    static public function benchmarkSubVV(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVV(_b);
    }
    static public function testFunVW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVW(_t);
    }
    /**
        Extended testing to addVW and subVW using various kinds of input data.
        We utilize the results of addVW_g and subVW_g as golden reference to check
        correctness.
    **/
    static public function testFunVWExt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWExt(_t);
    }
    static public function testShiftOverlap(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftOverlap(_t);
    }
    static public function testIssue31084(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31084(_t);
    }
    static public function testIssue42838(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42838(_t);
    }
    static public function benchmarkAddVW(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVW(_b);
    }
    /**
        Benchmarking addVW using vector of maximum uint to force carry flag set
    **/
    static public function benchmarkAddVWext(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVWext(_b);
    }
    static public function benchmarkSubVW(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVW(_b);
    }
    /**
        Benchmarking subVW using vector of zero to force carry flag set
    **/
    static public function benchmarkSubVWext(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVWext(_b);
    }
    static public function testFunVWW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWW(_t);
    }
    static public function testMulWW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulWW(_t);
    }
    static public function testMulAddWWW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulAddWWW(_t);
    }
    static public function testDivWW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivWW(_t);
    }
    static public function benchmarkMulAddVWW(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMulAddVWW(_b);
    }
    static public function benchmarkAddMulVVW(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddMulVVW(_b);
    }
    static public function benchmarkDivWVW(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDivWVW(_b);
    }
    static public function benchmarkNonZeroShifts(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNonZeroShifts(_b);
    }
    static public function testMulBits(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulBits(_t);
    }
    static public function testNormBits(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNormBits(_t);
    }
    static public function testFromBits(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFromBits(_t);
    }
    static public function testCalibrate(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCalibrate(_t);
    }
    static public function testDecimalString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalString(_t);
    }
    static public function testDecimalInit(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalInit(_t);
    }
    static public function testDecimalRounding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalRounding(_t);
    }
    static public function benchmarkDecimalConversion(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDecimalConversion(_b);
    }
    static public function benchmarkFloatString(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatString(_b);
    }
    /**
        NewFloat allocates and returns a new Float set to x,
        with precision 53 and rounding mode ToNearestEven.
        NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public function newFloat(_x:StdTypes.Float):Float_ {
        return stdgo._internal.math.big.Big.newFloat(_x);
    }
    static public function testFloatZeroValue(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatZeroValue(_t);
    }
    static public function testFloatSetPrec(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetPrec(_t);
    }
    static public function testFloatMinPrec(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMinPrec(_t);
    }
    static public function testFloatSign(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSign(_t);
    }
    static public function testFloatMantExp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExp(_t);
    }
    static public function testFloatMantExpAliasing(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExpAliasing(_t);
    }
    static public function testFloatSetMantExp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetMantExp(_t);
    }
    static public function testFloatPredicates(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatPredicates(_t);
    }
    static public function testFloatIsInt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatIsInt(_t);
    }
    /**
        TestFloatRound tests basic rounding.
    **/
    static public function testFloatRound(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound(_t);
    }
    /**
        TestFloatRound24 tests that rounding a float64 to 24 bits
        matches IEEE-754 rounding to nearest when converting a
        float64 to a float32 (excluding denormal numbers).
    **/
    static public function testFloatRound24(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound24(_t);
    }
    static public function testFloatSetUint64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetUint64(_t);
    }
    static public function testFloatSetInt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt64(_t);
    }
    static public function testFloatSetFloat64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64(_t);
    }
    static public function testFloatSetInt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt(_t);
    }
    static public function testFloatSetRat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetRat(_t);
    }
    static public function testFloatSetInf(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInf(_t);
    }
    static public function testFloatUint64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatUint64(_t);
    }
    static public function testFloatInt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt64(_t);
    }
    static public function testFloatFloat32(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat32(_t);
    }
    static public function testFloatFloat64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat64(_t);
    }
    static public function testFloatInt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt(_t);
    }
    static public function testFloatRat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRat(_t);
    }
    static public function testFloatAbs(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAbs(_t);
    }
    static public function testFloatNeg(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatNeg(_t);
    }
    static public function testFloatInc(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInc(_t);
    }
    /**
        TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
        addition/subtraction of arguments represented by Bits values with the
        respective Float addition/subtraction for a variety of precisions
        and rounding modes.
    **/
    static public function testFloatAdd(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd(_t);
    }
    /**
        TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
        x + (-x) or x - x for non-zero x should be +0 in all cases except when
        the rounding mode is ToNegativeInf in which case it should be -0.
    **/
    static public function testFloatAddRoundZero(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAddRoundZero(_t);
    }
    /**
        TestFloatAdd32 tests that Float.Add/Sub of numbers with
        24bit mantissa behaves like float32 addition/subtraction
        (excluding denormal numbers).
    **/
    static public function testFloatAdd32(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd32(_t);
    }
    /**
        TestFloatAdd64 tests that Float.Add/Sub of numbers with
        53bit mantissa behaves like float64 addition/subtraction.
    **/
    static public function testFloatAdd64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd64(_t);
    }
    static public function testIssue20490(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue20490(_t);
    }
    /**
        TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
        multiplication/division of arguments represented by Bits values with the
        respective Float multiplication/division for a variety of precisions
        and rounding modes.
    **/
    static public function testFloatMul(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul(_t);
    }
    /**
        TestFloatMul64 tests that Float.Mul/Quo of numbers with
        53bit mantissa behaves like float64 multiplication/division.
    **/
    static public function testFloatMul64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul64(_t);
    }
    static public function testIssue6866(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue6866(_t);
    }
    static public function testFloatQuo(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuo(_t);
    }
    /**
        TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
        it serves as a smoke test for basic correctness of division.
    **/
    static public function testFloatQuoSmoke(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuoSmoke(_t);
    }
    /**
        TestFloatArithmeticSpecialValues tests that Float operations produce the
        correct results for combinations of zero (±0), finite (±1 and ±2.71828),
        and infinite (±Inf) operands.
    **/
    static public function testFloatArithmeticSpecialValues(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticSpecialValues(_t);
    }
    static public function testFloatArithmeticOverflow(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticOverflow(_t);
    }
    /**
        For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
        by the sign of the value to be rounded. Test that rounding happens after
        the sign of a result has been set.
        This test uses specific values that are known to fail if rounding is
        "factored" out before setting the result sign.
    **/
    static public function testFloatArithmeticRounding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticRounding(_t);
    }
    /**
        TestFloatCmpSpecialValues tests that Cmp produces the correct results for
        combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
        operands.
    **/
    static public function testFloatCmpSpecialValues(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCmpSpecialValues(_t);
    }
    static public function benchmarkFloatAdd(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatAdd(_b);
    }
    static public function benchmarkFloatSub(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSub(_b);
    }
    /**
        ParseFloat is like f.Parse(s, base) with f set to the given precision
        and rounding mode.
    **/
    static public function parseFloat(_s:String, _base:StdTypes.Int, _prec:std.UInt, _mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.parseFloat(_s, _base, _prec, _mode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function testFloatSetFloat64String(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64String(_t);
    }
    static public function testFloat64Text(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Text(_t);
    }
    static public function testFloatText(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatText(_t);
    }
    static public function testFloatFormat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFormat(_t);
    }
    static public function benchmarkParseFloatSmallExp(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatSmallExp(_b);
    }
    static public function benchmarkParseFloatLargeExp(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatLargeExp(_b);
    }
    static public function testFloatScan(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatScan(_t);
    }
    static public function testFloatGobEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobEncoding(_t);
    }
    static public function testFloatCorruptGob(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCorruptGob(_t);
    }
    static public function testFloatJSONEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatJSONEncoding(_t);
    }
    static public function testFloatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeShortBuffer(_t);
    }
    static public function testFloatGobDecodeInvalid(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeInvalid(_t);
    }
    static public function benchmarkGCD10x10(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10(_b);
    }
    static public function benchmarkGCD10x100(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100(_b);
    }
    static public function benchmarkGCD10x1000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x1000(_b);
    }
    static public function benchmarkGCD10x10000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10000(_b);
    }
    static public function benchmarkGCD10x100000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100000(_b);
    }
    static public function benchmarkGCD100x100(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100(_b);
    }
    static public function benchmarkGCD100x1000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x1000(_b);
    }
    static public function benchmarkGCD100x10000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x10000(_b);
    }
    static public function benchmarkGCD100x100000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100000(_b);
    }
    static public function benchmarkGCD1000x1000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x1000(_b);
    }
    static public function benchmarkGCD1000x10000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x10000(_b);
    }
    static public function benchmarkGCD1000x100000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x100000(_b);
    }
    static public function benchmarkGCD10000x10000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x10000(_b);
    }
    static public function benchmarkGCD10000x100000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x100000(_b);
    }
    static public function benchmarkGCD100000x100000(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100000x100000(_b);
    }
    static public function testHilbert(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testHilbert(_t);
    }
    static public function benchmarkHilbert(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkHilbert(_b);
    }
    /**
        NewInt allocates and returns a new Int set to x.
    **/
    static public function newInt(_x:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.newInt(_x);
    }
    /**
        Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        The y argument must be an odd integer.
    **/
    static public function jacobi(_x:Int_, _y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.jacobi(_x, _y);
    }
    static public function testSignZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSignZ(_t);
    }
    static public function testSetZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetZ(_t);
    }
    static public function testAbsZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAbsZ(_t);
    }
    static public function testSumZZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSumZZ(_t);
    }
    static public function testProdZZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProdZZ(_t);
    }
    static public function testMul(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMul(_t);
    }
    static public function testMulRangeZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeZ(_t);
    }
    static public function testBinomial(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBinomial(_t);
    }
    static public function benchmarkBinomial(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBinomial(_b);
    }
    static public function testDivisionSigns(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivisionSigns(_t);
    }
    static public function testBits(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBits(_t);
    }
    static public function testSetBytes(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetBytes(_t);
    }
    static public function testBytes(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBytes(_t);
    }
    static public function testQuo(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuo(_t);
    }
    static public function testQuoStepD6(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuoStepD6(_t);
    }
    static public function benchmarkQuoRem(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkQuoRem(_b);
    }
    static public function testBitLen(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitLen(_t);
    }
    static public function testExp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExp(_t);
    }
    static public function benchmarkExp(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp(_b);
    }
    static public function benchmarkExpMont(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExpMont(_b);
    }
    static public function benchmarkExp2(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp2(_b);
    }
    static public function testGcd(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGcd(_t);
    }
    static public function testRsh(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRsh(_t);
    }
    static public function testRshSelf(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRshSelf(_t);
    }
    static public function testLsh(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLsh(_t);
    }
    static public function testLshSelf(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshSelf(_t);
    }
    static public function testLshRsh(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshRsh(_t);
    }
    static public function testCmpAbs(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmpAbs(_t);
    }
    static public function testIntCmpSelf(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntCmpSelf(_t);
    }
    static public function testInt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testInt64(_t);
    }
    static public function testUint64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testUint64(_t);
    }
    static public function testBitSet(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitSet(_t);
    }
    static public function testTrailingZeroBits(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testTrailingZeroBits(_t);
    }
    static public function benchmarkBitset(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitset(_b);
    }
    static public function benchmarkBitsetNeg(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNeg(_b);
    }
    static public function benchmarkBitsetOrig(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetOrig(_b);
    }
    static public function benchmarkBitsetNegOrig(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNegOrig(_b);
    }
    static public function benchmarkModSqrt225_Tonelli(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_Tonelli(_b);
    }
    static public function benchmarkModSqrt225_3Mod4(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_3Mod4(_b);
    }
    static public function benchmarkModSqrt231_Tonelli(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_Tonelli(_b);
    }
    static public function benchmarkModSqrt231_5Mod8(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_5Mod8(_b);
    }
    static public function testBitwise(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitwise(_t);
    }
    static public function testNot(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNot(_t);
    }
    static public function testModInverse(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModInverse(_t);
    }
    static public function benchmarkModInverse(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModInverse(_b);
    }
    static public function testModSqrt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModSqrt(_t);
    }
    static public function testJacobi(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobi(_t);
    }
    static public function testJacobiPanic(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobiPanic(_t);
    }
    static public function testIssue2607(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2607(_t);
    }
    static public function testSqrt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqrt(_t);
    }
    /**
        We can't test this together with the other Exp tests above because
        it requires a different receiver setup.
    **/
    static public function testIssue22830(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue22830(_t);
    }
    static public function benchmarkSqrt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSqrt(_b);
    }
    static public function benchmarkIntSqr(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkIntSqr(_b);
    }
    static public function benchmarkDiv(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDiv(_b);
    }
    static public function testFillBytes(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFillBytes(_t);
    }
    static public function testNewIntMinInt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntMinInt64(_t);
    }
    static public function testNewIntAllocs(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntAllocs(_t);
    }
    static public function testFloat64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64(_t);
    }
    static public function testIntText(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntText(_t);
    }
    static public function testAppendText(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAppendText(_t);
    }
    static public function testGetString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGetString(_t);
    }
    static public function testSetString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetString(_t);
    }
    static public function testFormat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFormat(_t);
    }
    static public function testScan(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScan(_t);
    }
    static public function testIntGobEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntGobEncoding(_t);
    }
    /**
        Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public function testGobEncodingNilIntInSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilIntInSlice(_t);
    }
    static public function testIntJSONEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncoding(_t);
    }
    static public function testIntJSONEncodingNil(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncodingNil(_t);
    }
    static public function testIntXMLEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntXMLEncoding(_t);
    }
    /**
        Tests that the linker is able to remove references to Float, Rat,
        and Int if unused (notably, not used by init).
    **/
    static public function testLinkerGC(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLinkerGC(_t);
    }
    static public function testCmp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmp(_t);
    }
    static public function testSet(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSet(_t);
    }
    static public function testFunNN(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunNN(_t);
    }
    static public function testMulRangeN(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeN(_t);
    }
    /**
        TestMulUnbalanced tests that multiplying numbers of different lengths
        does not cause deep recursion and in turn allocate too much memory.
        Test case for issue 3807.
    **/
    static public function testMulUnbalanced(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulUnbalanced(_t);
    }
    static public function benchmarkMul(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMul(_b);
    }
    static public function benchmarkNatMul(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatMul(_b);
    }
    static public function testNLZ(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNLZ(_t);
    }
    static public function testShiftLeft(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftLeft(_t);
    }
    static public function testShiftRight(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftRight(_t);
    }
    static public function benchmarkZeroShifts(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkZeroShifts(_b);
    }
    static public function testModW(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModW(_t);
    }
    static public function testMontgomery(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMontgomery(_t);
    }
    static public function testExpNN(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExpNN(_t);
    }
    static public function fuzzExpMont(_f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.math.big.Big.fuzzExpMont(_f);
    }
    static public function benchmarkExp3Power(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp3Power(_b);
    }
    static public function testFibo(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFibo(_t);
    }
    static public function benchmarkFibo(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFibo(_b);
    }
    static public function testBit(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBit(_t);
    }
    static public function testSticky(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSticky(_t);
    }
    static public function testSqr(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqr(_t);
    }
    static public function benchmarkNatSqr(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSqr(_b);
    }
    static public function testNatSubMod2N(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatSubMod2N(_t);
    }
    static public function benchmarkNatSetBytes(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSetBytes(_b);
    }
    static public function testNatDiv(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatDiv(_t);
    }
    /**
        TestIssue37499 triggers the edge case of divBasic where
        the inaccurate estimate of the first word's quotient
        happens at the very beginning of the loop.
    **/
    static public function testIssue37499(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue37499(_t);
    }
    /**
        TestIssue42552 triggers an edge case of recursive division
        where the first division loop is never entered, and correcting
        the remainder takes exactly two iterations in the final loop.
    **/
    static public function testIssue42552(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42552(_t);
    }
    static public function testMaxBase(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMaxBase(_t);
    }
    static public function testString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testString(_t);
    }
    static public function testScanBase(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanBase(_t);
    }
    /**
        Test case for BenchmarkScanPi.
    **/
    static public function testScanPi(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPi(_t);
    }
    static public function testScanPiParallel(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPiParallel(_t);
    }
    static public function benchmarkScanPi(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScanPi(_b);
    }
    static public function benchmarkStringPiParallel(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkStringPiParallel(_b);
    }
    static public function benchmarkScan(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScan(_b);
    }
    static public function benchmarkString(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkString(_b);
    }
    static public function benchmarkLeafSize(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkLeafSize(_b);
    }
    static public function leafSizeHelper(_b:stdgo._internal.testing.Testing.B, _base:StdTypes.Int, _size:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.leafSizeHelper(_b, _base, _size);
    }
    static public function testStringPowers(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testStringPowers(_t);
    }
    static public function testProbablyPrime(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProbablyPrime(_t);
    }
    static public function benchmarkProbablyPrime(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkProbablyPrime(_b);
    }
    static public function testMillerRabinPseudoprimes(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMillerRabinPseudoprimes(_t);
    }
    static public function testLucasPseudoprimes(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLucasPseudoprimes(_t);
    }
    /**
        NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public function newRat(_a:haxe.Int64, _b:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.newRat(_a, _b);
    }
    static public function testZeroRat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testZeroRat(_t);
    }
    static public function testRatSign(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSign(_t);
    }
    static public function testRatCmp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatCmp(_t);
    }
    static public function testIsInt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsInt(_t);
    }
    static public function testRatAbs(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatAbs(_t);
    }
    static public function testRatNeg(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatNeg(_t);
    }
    static public function testRatInv(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatInv(_t);
    }
    static public function testRatBin(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatBin(_t);
    }
    static public function testIssue820(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue820(_t);
    }
    static public function testRatSetFrac64Rat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetFrac64Rat(_t);
    }
    static public function testIssue2379(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2379(_t);
    }
    static public function testIssue3521(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue3521(_t);
    }
    static public function testFloat32Distribution(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32Distribution(_t);
    }
    static public function testFloat64Distribution(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Distribution(_t);
    }
    /**
        TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
        returns nil.
    **/
    static public function testSetFloat64NonFinite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetFloat64NonFinite(_t);
    }
    static public function testIsFinite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsFinite(_t);
    }
    static public function testRatSetInt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetInt64(_t);
    }
    static public function testRatSetUint64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetUint64(_t);
    }
    static public function benchmarkRatCmp(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkRatCmp(_b);
    }
    /**
        TestIssue34919 verifies that a Rat's denominator is not modified
        when simply accessing the Rat value.
    **/
    static public function testIssue34919(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue34919(_t);
    }
    static public function testDenomRace(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDenomRace(_t);
    }
    static public function testScanExponent(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanExponent(_t);
    }
    static public function testRatSetString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetString(_t);
    }
    static public function testRatSetStringZero(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetStringZero(_t);
    }
    static public function testRatScan(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatScan(_t);
    }
    static public function testFloatString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatString(_t);
    }
    static public function testFloat32SpecialCases(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32SpecialCases(_t);
    }
    static public function testFloat64SpecialCases(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64SpecialCases(_t);
    }
    static public function testIssue31184(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31184(_t);
    }
    static public function testIssue45910(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue45910(_t);
    }
    static public function testRatGobEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobEncoding(_t);
    }
    /**
        Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public function testGobEncodingNilRatInSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilRatInSlice(_t);
    }
    static public function testRatJSONEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatJSONEncoding(_t);
    }
    static public function testRatXMLEncoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatXMLEncoding(_t);
    }
    static public function testRatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobDecodeShortBuffer(_t);
    }
    /**
        TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
        behaves like float math.Sqrt.
    **/
    static public function testFloatSqrt64(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt64(_t);
    }
    static public function testFloatSqrt(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt(_t);
    }
    static public function testFloatSqrtSpecial(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrtSpecial(_t);
    }
    static public function benchmarkFloatSqrt(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSqrt(_b);
    }
}
