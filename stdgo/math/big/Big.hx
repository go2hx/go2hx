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
    public static function _unlockSlow(_self__:T__struct_57, _0:StdTypes.Int) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension._unlockSlow(_self__, _0);
    }
    public static function _lockSlow(_self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension._lockSlow(_self__);
    }
    public static function unlock(_self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension.unlock(_self__);
    }
    public static function tryLock(_self__:T__struct_57):Bool {
        return stdgo._internal.math.big.Big.T__struct_57_static_extension.tryLock(_self__);
    }
    public static function lock(_self__:T__struct_57) {
        stdgo._internal.math.big.Big.T__struct_57_static_extension.lock(_self__);
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
    public static function _doSlow(_self__:T__struct_67, f:() -> Void) {
        final f = f;
        stdgo._internal.math.big.Big.T__struct_67_static_extension._doSlow(_self__, f);
    }
    public static function do_(_self__:T__struct_67, f:() -> Void) {
        final f = f;
        stdgo._internal.math.big.Big.T__struct_67_static_extension.do_(_self__, f);
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
    static public function _roundDown(x:T_decimal, n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._roundDown(x, n);
    }
    static public function _roundUp(x:T_decimal, n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._roundUp(x, n);
    }
    static public function _round(x:T_decimal, n:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._round(x, n);
    }
    static public function string(x:T_decimal):String {
        return stdgo._internal.math.big.Big.T_decimal_static_extension.string(x);
    }
    static public function _init(x:T_decimal, m:T_nat, shift:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.T_decimal_static_extension._init(x, m, shift);
    }
    static public function _at(d:T_decimal, i:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_decimal_static_extension._at(d, i);
    }
}
class Float__static_extension {
    static public function _sqrtInverse(z:Float_, x:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._sqrtInverse(z, x);
    }
    static public function sqrt(z:Float_, x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.sqrt(z, x);
    }
    static public function format(x:Float_, s:stdgo._internal.fmt.Fmt.State, format:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.Float__static_extension.format(x, s, format);
    }
    static public function _fmtP(x:Float_, buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtP(x, buf)) i];
    }
    static public function _fmtX(x:Float_, buf:Array<StdTypes.Int>, prec:StdTypes.Int):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtX(x, buf, prec)) i];
    }
    static public function _fmtB(x:Float_, buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension._fmtB(x, buf)) i];
    }
    static public function append(x:Float_, buf:Array<StdTypes.Int>, fmt:StdTypes.Int, prec:StdTypes.Int):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Float__static_extension.append(x, buf, fmt, prec)) i];
    }
    static public function string(x:Float_):String {
        return stdgo._internal.math.big.Big.Float__static_extension.string(x);
    }
    static public function text(x:Float_, format:StdTypes.Int, prec:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Float__static_extension.text(x, format, prec);
    }
    static public function unmarshalText(z:Float_, text:Array<StdTypes.Int>):stdgo.Error {
        final text = ([for (i in text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Float__static_extension.unmarshalText(z, text);
    }
    static public function marshalText(x:Float_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.marshalText(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(z:Float_, buf:Array<StdTypes.Int>):stdgo.Error {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Float__static_extension.gobDecode(z, buf);
    }
    static public function gobEncode(x:Float_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.gobEncode(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(z:Float_, s:stdgo._internal.fmt.Fmt.ScanState, ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Float__static_extension.scan(z, s, ch);
    }
    static public function parse(z:Float_, s:String, base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.parse(z, s, base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pow5(z:Float_, n:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension._pow5(z, n);
    }
    static public function _scan(z:Float_, r:stdgo._internal.io.Io.ByteScanner, base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension._scan(z, r, base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function setString(z:Float_, s:String):stdgo.Tuple<Float_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.setString(z, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _int64(x:Float_):haxe.Int64 {
        return stdgo._internal.math.big.Big.Float__static_extension._int64(x);
    }
    static public function _uint64(x:Float_):haxe.UInt64 {
        return stdgo._internal.math.big.Big.Float__static_extension._uint64(x);
    }
    static public function _ord(x:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension._ord(x);
    }
    static public function cmp(x:Float_, y:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.cmp(x, y);
    }
    static public function quo(z:Float_, x:Float_, y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.quo(z, x, y);
    }
    static public function mul(z:Float_, x:Float_, y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.mul(z, x, y);
    }
    static public function sub(z:Float_, x:Float_, y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.sub(z, x, y);
    }
    static public function add(z:Float_, x:Float_, y:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.add(z, x, y);
    }
    static public function _ucmp(x:Float_, y:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension._ucmp(x, y);
    }
    static public function _uquo(z:Float_, x:Float_, y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._uquo(z, x, y);
    }
    static public function _umul(z:Float_, x:Float_, y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._umul(z, x, y);
    }
    static public function _usub(z:Float_, x:Float_, y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._usub(z, x, y);
    }
    static public function _uadd(z:Float_, x:Float_, y:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._uadd(z, x, y);
    }
    static public function neg(z:Float_, x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.neg(z, x);
    }
    static public function abs(z:Float_, x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.abs(z, x);
    }
    static public function rat(x:Float_, z:Rat):stdgo.Tuple<Rat, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.rat(x, z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int_(x:Float_, z:Int_):stdgo.Tuple<Int_, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.int_(x, z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.float64(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.float32(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int64(x:Float_):stdgo.Tuple<haxe.Int64, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.int64(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(x:Float_):stdgo.Tuple<haxe.UInt64, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Float__static_extension.uint64(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function copy(z:Float_, x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.copy(z, x);
    }
    static public function set(z:Float_, x:Float_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.set(z, x);
    }
    static public function setInf(z:Float_, signbit:Bool):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInf(z, signbit);
    }
    static public function setRat(z:Float_, x:Rat):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setRat(z, x);
    }
    static public function setInt(z:Float_, x:Int_):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInt(z, x);
    }
    static public function setFloat64(z:Float_, x:StdTypes.Float):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setFloat64(z, x);
    }
    static public function setInt64(z:Float_, x:haxe.Int64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setInt64(z, x);
    }
    static public function setUint64(z:Float_, x:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setUint64(z, x);
    }
    static public function _setBits64(z:Float_, neg:Bool, x:haxe.UInt64):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension._setBits64(z, neg, x);
    }
    static public function _round(z:Float_, sbit:std.UInt):Void {
        stdgo._internal.math.big.Big.Float__static_extension._round(z, sbit);
    }
    static public function _validate0(x:Float_):String {
        return stdgo._internal.math.big.Big.Float__static_extension._validate0(x);
    }
    static public function _validate(x:Float_):Void {
        stdgo._internal.math.big.Big.Float__static_extension._validate(x);
    }
    static public function isInt(x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.isInt(x);
    }
    static public function isInf(x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.isInf(x);
    }
    static public function signbit(x:Float_):Bool {
        return stdgo._internal.math.big.Big.Float__static_extension.signbit(x);
    }
    static public function setMantExp(z:Float_, mant:Float_, exp:StdTypes.Int):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setMantExp(z, mant, exp);
    }
    static public function _setExpAndRound(z:Float_, exp:haxe.Int64, sbit:std.UInt):Void {
        stdgo._internal.math.big.Big.Float__static_extension._setExpAndRound(z, exp, sbit);
    }
    static public function mantExp(x:Float_, mant:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.mantExp(x, mant);
    }
    static public function sign(x:Float_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Float__static_extension.sign(x);
    }
    static public function acc(x:Float_):Accuracy {
        return stdgo._internal.math.big.Big.Float__static_extension.acc(x);
    }
    static public function mode(x:Float_):RoundingMode {
        return stdgo._internal.math.big.Big.Float__static_extension.mode(x);
    }
    static public function minPrec(x:Float_):std.UInt {
        return stdgo._internal.math.big.Big.Float__static_extension.minPrec(x);
    }
    static public function prec(x:Float_):std.UInt {
        return stdgo._internal.math.big.Big.Float__static_extension.prec(x);
    }
    static public function setMode(z:Float_, mode:RoundingMode):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setMode(z, mode);
    }
    static public function setPrec(z:Float_, prec:std.UInt):Float_ {
        return stdgo._internal.math.big.Big.Float__static_extension.setPrec(z, prec);
    }
}
class ErrNaN_static_extension {
    static public function error(err:ErrNaN):String {
        return stdgo._internal.math.big.Big.ErrNaN_static_extension.error(err);
    }
}
class T_matrix_static_extension {
    static public function string(a:T_matrix):String {
        return stdgo._internal.math.big.Big.T_matrix_static_extension.string(a);
    }
    static public function _eql(a:T_matrix, b:T_matrix):Bool {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._eql(a, b);
    }
    static public function _mul(a:T_matrix, b:T_matrix):T_matrix {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._mul(a, b);
    }
    static public function _set(a:T_matrix, i:StdTypes.Int, j:StdTypes.Int, x:Rat):Void {
        stdgo._internal.math.big.Big.T_matrix_static_extension._set(a, i, j, x);
    }
    static public function _at(a:T_matrix, i:StdTypes.Int, j:StdTypes.Int):Rat {
        return stdgo._internal.math.big.Big.T_matrix_static_extension._at(a, i, j);
    }
}
class Int__static_extension {
    static public function _scaleDenom(z:Int_, x:Int_, f:T_nat):Void {
        stdgo._internal.math.big.Big.Int__static_extension._scaleDenom(z, x, f);
    }
    static public function probablyPrime(x:Int_, n:StdTypes.Int):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.probablyPrime(x, n);
    }
    static public function unmarshalJSON(z:Int_, text:Array<StdTypes.Int>):stdgo.Error {
        final text = ([for (i in text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.unmarshalJSON(z, text);
    }
    static public function marshalJSON(x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.marshalJSON(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(z:Int_, text:Array<StdTypes.Int>):stdgo.Error {
        final text = ([for (i in text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.unmarshalText(z, text);
    }
    static public function marshalText(x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.marshalText(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(z:Int_, buf:Array<StdTypes.Int>):stdgo.Error {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.gobDecode(z, buf);
    }
    static public function gobEncode(x:Int_):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.gobEncode(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(z:Int_, s:stdgo._internal.fmt.Fmt.ScanState, ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Int__static_extension.scan(z, s, ch);
    }
    static public function _scan(z:Int_, r:stdgo._internal.io.Io.ByteScanner, base:StdTypes.Int):stdgo.Tuple.Tuple3<Int_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension._scan(z, r, base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function format(x:Int_, s:stdgo._internal.fmt.Fmt.State, ch:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.Int__static_extension.format(x, s, ch);
    }
    static public function string(x:Int_):String {
        return stdgo._internal.math.big.Big.Int__static_extension.string(x);
    }
    static public function append(x:Int_, buf:Array<StdTypes.Int>, base:StdTypes.Int):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.append(x, buf, base)) i];
    }
    static public function text(x:Int_, base:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Int__static_extension.text(x, base);
    }
    static public function sqrt(z:Int_, x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.sqrt(z, x);
    }
    static public function not(z:Int_, x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.not(z, x);
    }
    static public function xor(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.xor(z, x, y);
    }
    static public function or(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.or(z, x, y);
    }
    static public function andNot(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.andNot(z, x, y);
    }
    static public function and(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.and(z, x, y);
    }
    static public function setBit(z:Int_, x:Int_, i:StdTypes.Int, b:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setBit(z, x, i, b);
    }
    static public function bit(x:Int_, i:StdTypes.Int):std.UInt {
        return stdgo._internal.math.big.Big.Int__static_extension.bit(x, i);
    }
    static public function rsh(z:Int_, x:Int_, n:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rsh(z, x, n);
    }
    static public function lsh(z:Int_, x:Int_, n:std.UInt):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.lsh(z, x, n);
    }
    static public function modSqrt(z:Int_, x:Int_, p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.modSqrt(z, x, p);
    }
    static public function _modSqrtTonelliShanks(z:Int_, x:Int_, p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrtTonelliShanks(z, x, p);
    }
    static public function _modSqrt5Mod8Prime(z:Int_, x:Int_, p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrt5Mod8Prime(z, x, p);
    }
    static public function _modSqrt3Mod4Prime(z:Int_, x:Int_, p:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._modSqrt3Mod4Prime(z, x, p);
    }
    static public function modInverse(z:Int_, g:Int_, n:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.modInverse(z, g, n);
    }
    static public function rand(z:Int_, rnd:stdgo._internal.math.rand.Rand.Rand, n:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rand(z, rnd, n);
    }
    static public function _lehmerGCD(z:Int_, x:Int_, y:Int_, a:Int_, b:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._lehmerGCD(z, x, y, a, b);
    }
    static public function gcd(z:Int_, x:Int_, y:Int_, a:Int_, b:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.gcd(z, x, y, a, b);
    }
    static public function _exp(z:Int_, x:Int_, y:Int_, m:Int_, slow:Bool):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._exp(z, x, y, m, slow);
    }
    static public function _expSlow(z:Int_, x:Int_, y:Int_, m:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension._expSlow(z, x, y, m);
    }
    static public function exp(z:Int_, x:Int_, y:Int_, m:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.exp(z, x, y, m);
    }
    static public function trailingZeroBits(x:Int_):std.UInt {
        return stdgo._internal.math.big.Big.Int__static_extension.trailingZeroBits(x);
    }
    static public function bitLen(x:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.bitLen(x);
    }
    static public function fillBytes(x:Int_, buf:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.fillBytes(x, buf)) i];
    }
    static public function bytes(x:Int_):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.bytes(x)) i];
    }
    static public function setBytes(z:Int_, buf:Array<StdTypes.Int>):Int_ {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Int__static_extension.setBytes(z, buf);
    }
    static public function _setFromScanner(z:Int_, r:stdgo._internal.io.Io.ByteScanner, base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension._setFromScanner(z, r, base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setString(z:Int_, s:String, base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.setString(z, s, base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(x:Int_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.float64(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isUint64(x:Int_):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.isUint64(x);
    }
    static public function isInt64(x:Int_):Bool {
        return stdgo._internal.math.big.Big.Int__static_extension.isInt64(x);
    }
    static public function uint64(x:Int_):haxe.UInt64 {
        return stdgo._internal.math.big.Big.Int__static_extension.uint64(x);
    }
    static public function int64(x:Int_):haxe.Int64 {
        return stdgo._internal.math.big.Big.Int__static_extension.int64(x);
    }
    static public function cmpAbs(x:Int_, y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.cmpAbs(x, y);
    }
    static public function cmp(x:Int_, y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.cmp(x, y);
    }
    static public function divMod(z:Int_, x:Int_, y:Int_, m:Int_):stdgo.Tuple<Int_, Int_> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.divMod(z, x, y, m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mod(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mod(z, x, y);
    }
    static public function div(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.div(z, x, y);
    }
    static public function quoRem(z:Int_, x:Int_, y:Int_, r:Int_):stdgo.Tuple<Int_, Int_> {
        return {
            final obj = stdgo._internal.math.big.Big.Int__static_extension.quoRem(z, x, y, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rem(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.rem(z, x, y);
    }
    static public function quo(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.quo(z, x, y);
    }
    static public function binomial(z:Int_, n:haxe.Int64, k:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.binomial(z, n, k);
    }
    static public function mulRange(z:Int_, a:haxe.Int64, b:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mulRange(z, a, b);
    }
    static public function mul(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.mul(z, x, y);
    }
    static public function sub(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.sub(z, x, y);
    }
    static public function add(z:Int_, x:Int_, y:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.add(z, x, y);
    }
    static public function neg(z:Int_, x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.neg(z, x);
    }
    static public function abs(z:Int_, x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.abs(z, x);
    }
    static public function setBits(z:Int_, abs:Array<Word>):Int_ {
        final abs = ([for (i in abs) i] : stdgo.Slice<Word>);
        return stdgo._internal.math.big.Big.Int__static_extension.setBits(z, abs);
    }
    static public function bits(x:Int_):Array<Word> {
        return [for (i in stdgo._internal.math.big.Big.Int__static_extension.bits(x)) i];
    }
    static public function set(z:Int_, x:Int_):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.set(z, x);
    }
    static public function setUint64(z:Int_, x:haxe.UInt64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setUint64(z, x);
    }
    static public function setInt64(z:Int_, x:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.Int__static_extension.setInt64(z, x);
    }
    static public function sign(x:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.Int__static_extension.sign(x);
    }
}
class T_byteReader_static_extension {
    static public function unreadByte(r:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big.T_byteReader_static_extension.unreadByte(r);
    }
    static public function readByte(r:T_byteReader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.readByte(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function width(_self__:T_byteReader):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.width(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(_self__:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big.T_byteReader_static_extension.unreadRune(_self__);
    }
    public static function token(_self__:T_byteReader, skipSpace:Bool, f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final f = f;
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.token(_self__, skipSpace, f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function skipSpace(_self__:T_byteReader) {
        stdgo._internal.math.big.Big.T_byteReader_static_extension.skipSpace(_self__);
    }
    public static function readRune(_self__:T_byteReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.readRune(_self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function read(_self__:T_byteReader, buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.big.Big.T_byteReader_static_extension.read(_self__, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Rat_static_extension {
    static public function unmarshalText(z:Rat, text:Array<StdTypes.Int>):stdgo.Error {
        final text = ([for (i in text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Rat_static_extension.unmarshalText(z, text);
    }
    static public function marshalText(x:Rat):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.marshalText(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(z:Rat, buf:Array<StdTypes.Int>):stdgo.Error {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.Rat_static_extension.gobDecode(z, buf);
    }
    static public function gobEncode(x:Rat):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.gobEncode(x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function floatString(x:Rat, prec:StdTypes.Int):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.floatString(x, prec);
    }
    static public function ratString(x:Rat):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.ratString(x);
    }
    static public function _marshal(x:Rat):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.Rat_static_extension._marshal(x)) i];
    }
    static public function string(x:Rat):String {
        return stdgo._internal.math.big.Big.Rat_static_extension.string(x);
    }
    static public function setString(z:Rat, s:String):stdgo.Tuple<Rat, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.setString(z, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(z:Rat, s:stdgo._internal.fmt.Fmt.ScanState, ch:StdTypes.Int):stdgo.Error {
        return stdgo._internal.math.big.Big.Rat_static_extension.scan(z, s, ch);
    }
    static public function quo(z:Rat, x:Rat, y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.quo(z, x, y);
    }
    static public function mul(z:Rat, x:Rat, y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.mul(z, x, y);
    }
    static public function sub(z:Rat, x:Rat, y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.sub(z, x, y);
    }
    static public function add(z:Rat, x:Rat, y:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.add(z, x, y);
    }
    static public function cmp(x:Rat, y:Rat):StdTypes.Int {
        return stdgo._internal.math.big.Big.Rat_static_extension.cmp(x, y);
    }
    static public function _norm(z:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension._norm(z);
    }
    static public function denom(x:Rat):Int_ {
        return stdgo._internal.math.big.Big.Rat_static_extension.denom(x);
    }
    static public function num(x:Rat):Int_ {
        return stdgo._internal.math.big.Big.Rat_static_extension.num(x);
    }
    static public function isInt(x:Rat):Bool {
        return stdgo._internal.math.big.Big.Rat_static_extension.isInt(x);
    }
    static public function sign(x:Rat):StdTypes.Int {
        return stdgo._internal.math.big.Big.Rat_static_extension.sign(x);
    }
    static public function inv(z:Rat, x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.inv(z, x);
    }
    static public function neg(z:Rat, x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.neg(z, x);
    }
    static public function abs(z:Rat, x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.abs(z, x);
    }
    static public function set(z:Rat, x:Rat):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.set(z, x);
    }
    static public function setUint64(z:Rat, x:haxe.UInt64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setUint64(z, x);
    }
    static public function setInt64(z:Rat, x:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setInt64(z, x);
    }
    static public function setInt(z:Rat, x:Int_):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setInt(z, x);
    }
    static public function setFrac64(z:Rat, a:haxe.Int64, b:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFrac64(z, a, b);
    }
    static public function setFrac(z:Rat, a:Int_, b:Int_):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFrac(z, a, b);
    }
    static public function float64(x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.float64(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.Rat_static_extension.float32(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setFloat64(z:Rat, f:StdTypes.Float):Rat {
        return stdgo._internal.math.big.Big.Rat_static_extension.setFloat64(z, f);
    }
}
class Bits_static_extension {
    static public function float_(bits:Bits):Float_ {
        return stdgo._internal.math.big.Big.Bits_static_extension.float_(bits);
    }
    static public function _round(x:Bits, prec:std.UInt, mode:RoundingMode):Float_ {
        return stdgo._internal.math.big.Big.Bits_static_extension._round(x, prec, mode);
    }
    static public function _norm(x:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._norm(x);
    }
    static public function _mul(x:Bits, y:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._mul(x, y);
    }
    static public function _add(x:Bits, y:Bits):Bits {
        return stdgo._internal.math.big.Big.Bits_static_extension._add(x, y);
    }
}
class RoundingMode_static_extension {
    static public function string(i:RoundingMode):String {
        return stdgo._internal.math.big.Big.RoundingMode_static_extension.string(i);
    }
}
class Accuracy_static_extension {
    static public function string(i:Accuracy):String {
        return stdgo._internal.math.big.Big.Accuracy_static_extension.string(i);
    }
}
class T_nat_static_extension {
    static public function _probablyPrimeLucas(n:T_nat):Bool {
        return stdgo._internal.math.big.Big.T_nat_static_extension._probablyPrimeLucas(n);
    }
    static public function _probablyPrimeMillerRabin(n:T_nat, reps:StdTypes.Int, force2:Bool):Bool {
        return stdgo._internal.math.big.Big.T_nat_static_extension._probablyPrimeMillerRabin(n, reps, force2);
    }
    static public function _divRecursiveStep(z:T_nat, u:T_nat, v:T_nat, depth:StdTypes.Int, tmp:T_nat, temps:Array<T_nat>):Void {
        final temps = ([for (i in temps) i] : stdgo.Slice<stdgo.Ref<T_nat>>);
        stdgo._internal.math.big.Big.T_nat_static_extension._divRecursiveStep(z, u, v, depth, tmp, temps);
    }
    static public function _divRecursive(z:T_nat, u:T_nat, v:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._divRecursive(z, u, v);
    }
    static public function _divBasic(q:T_nat, u:T_nat, v:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._divBasic(q, u, v);
    }
    static public function _divLarge(z:T_nat, u:T_nat, uIn:T_nat, vIn:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._divLarge(z, u, uIn, vIn);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _modW(x:T_nat, d:Word):Word {
        return stdgo._internal.math.big.Big.T_nat_static_extension._modW(x, d);
    }
    static public function _divW(z:T_nat, x:T_nat, y:Word):stdgo.Tuple<T_nat, Word> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._divW(z, x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _div(z:T_nat, z2:T_nat, u:T_nat, v:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._div(z, z2, u, v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _rem(z:T_nat, u:T_nat, v:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._rem(z, u, v);
    }
    static public function _expWW(z:T_nat, x:Word, y:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expWW(z, x, y);
    }
    static public function _convertWords(q:T_nat, s:Array<StdTypes.Int>, b:Word, ndigits:StdTypes.Int, bb:Word, table:Array<T_divisor>):Void {
        final s = ([for (i in s) i] : stdgo.Slice<stdgo.GoByte>);
        final table = ([for (i in table) i] : stdgo.Slice<T_divisor>);
        stdgo._internal.math.big.Big.T_nat_static_extension._convertWords(q, s, b, ndigits, bb, table);
    }
    static public function _itoa(x:T_nat, neg:Bool, base:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.T_nat_static_extension._itoa(x, neg, base)) i];
    }
    static public function _utoa(x:T_nat, base:StdTypes.Int):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.math.big.Big.T_nat_static_extension._utoa(x, base)) i];
    }
    static public function _scan(z:T_nat, r:stdgo._internal.io.Io.ByteScanner, base:StdTypes.Int, fracOk:Bool):stdgo.Tuple.Tuple4<T_nat, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._scan(z, r, base, fracOk);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _subMod2N(z:T_nat, x:T_nat, y:T_nat, n:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._subMod2N(z, x, y, n);
    }
    static public function _sqrt(z:T_nat, x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sqrt(z, x);
    }
    static public function _setBytes(z:T_nat, buf:Array<StdTypes.Int>):T_nat {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.T_nat_static_extension._setBytes(z, buf);
    }
    static public function _bytes(z:T_nat, buf:Array<StdTypes.Int>):StdTypes.Int {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.math.big.Big.T_nat_static_extension._bytes(z, buf);
    }
    static public function _expNNMontgomery(z:T_nat, x:T_nat, y:T_nat, m:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNMontgomery(z, x, y, m);
    }
    static public function _expNNWindowed(z:T_nat, x:T_nat, y:T_nat, logM:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNWindowed(z, x, y, logM);
    }
    static public function _expNNMontgomeryEven(z:T_nat, x:T_nat, y:T_nat, m:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNNMontgomeryEven(z, x, y, m);
    }
    static public function _expNN(z:T_nat, x:T_nat, y:T_nat, m:T_nat, slow:Bool):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._expNN(z, x, y, m, slow);
    }
    static public function _random(z:T_nat, rand:stdgo._internal.math.rand.Rand.Rand, limit:T_nat, n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._random(z, rand, limit, n);
    }
    static public function _xor(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._xor(z, x, y);
    }
    static public function _or(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._or(z, x, y);
    }
    static public function _andNot(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._andNot(z, x, y);
    }
    static public function _trunc(z:T_nat, x:T_nat, n:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._trunc(z, x, n);
    }
    static public function _and(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._and(z, x, y);
    }
    static public function _sticky(x:T_nat, i:std.UInt):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sticky(x, i);
    }
    static public function _bit(x:T_nat, i:std.UInt):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._bit(x, i);
    }
    static public function _setBit(z:T_nat, x:T_nat, i:std.UInt, b:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setBit(z, x, i, b);
    }
    static public function _shr(z:T_nat, x:T_nat, s:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._shr(z, x, s);
    }
    static public function _shl(z:T_nat, x:T_nat, s:std.UInt):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._shl(z, x, s);
    }
    static public function _isPow2(x:T_nat):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big.T_nat_static_extension._isPow2(x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _trailingZeroBits(x:T_nat):std.UInt {
        return stdgo._internal.math.big.Big.T_nat_static_extension._trailingZeroBits(x);
    }
    static public function _bitLen(x:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_nat_static_extension._bitLen(x);
    }
    static public function _mulRange(z:T_nat, a:haxe.UInt64, b:haxe.UInt64):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mulRange(z, a, b);
    }
    static public function _sqr(z:T_nat, x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sqr(z, x);
    }
    static public function _mul(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mul(z, x, y);
    }
    static public function _montgomery(z:T_nat, x:T_nat, y:T_nat, m:T_nat, k:Word, n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._montgomery(z, x, y, m, k, n);
    }
    static public function _mulAddWW(z:T_nat, x:T_nat, y:Word, r:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._mulAddWW(z, x, y, r);
    }
    static public function _cmp(x:T_nat, y:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big.T_nat_static_extension._cmp(x, y);
    }
    static public function _sub(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._sub(z, x, y);
    }
    static public function _add(z:T_nat, x:T_nat, y:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._add(z, x, y);
    }
    static public function _set(z:T_nat, x:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._set(z, x);
    }
    static public function _setUint64(z:T_nat, x:haxe.UInt64):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setUint64(z, x);
    }
    static public function _setWord(z:T_nat, x:Word):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._setWord(z, x);
    }
    static public function _make(z:T_nat, n:StdTypes.Int):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._make(z, n);
    }
    static public function _norm(z:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._norm(z);
    }
    static public function _clear(z:T_nat):Void {
        stdgo._internal.math.big.Big.T_nat_static_extension._clear(z);
    }
    static public function string(z:T_nat):String {
        return stdgo._internal.math.big.Big.T_nat_static_extension.string(z);
    }
    static public function _modInverse(z:T_nat, g:T_nat, n:T_nat):T_nat {
        return stdgo._internal.math.big.Big.T_nat_static_extension._modInverse(z, g, n);
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
    static public function testFunVV(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVV(t);
    }
    static public function benchmarkAddVV(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVV(b);
    }
    static public function benchmarkSubVV(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVV(b);
    }
    static public function testFunVW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVW(t);
    }
    /**
        Extended testing to addVW and subVW using various kinds of input data.
        We utilize the results of addVW_g and subVW_g as golden reference to check
        correctness.
    **/
    static public function testFunVWExt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWExt(t);
    }
    static public function testShiftOverlap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftOverlap(t);
    }
    static public function testIssue31084(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31084(t);
    }
    static public function testIssue42838(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42838(t);
    }
    static public function benchmarkAddVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVW(b);
    }
    /**
        Benchmarking addVW using vector of maximum uint to force carry flag set
    **/
    static public function benchmarkAddVWext(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVWext(b);
    }
    static public function benchmarkSubVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVW(b);
    }
    /**
        Benchmarking subVW using vector of zero to force carry flag set
    **/
    static public function benchmarkSubVWext(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVWext(b);
    }
    static public function testFunVWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWW(t);
    }
    static public function testMulWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulWW(t);
    }
    static public function testMulAddWWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulAddWWW(t);
    }
    static public function testDivWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivWW(t);
    }
    static public function benchmarkMulAddVWW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMulAddVWW(b);
    }
    static public function benchmarkAddMulVVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddMulVVW(b);
    }
    static public function benchmarkDivWVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDivWVW(b);
    }
    static public function benchmarkNonZeroShifts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNonZeroShifts(b);
    }
    static public function testMulBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulBits(t);
    }
    static public function testNormBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNormBits(t);
    }
    static public function testFromBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFromBits(t);
    }
    static public function testCalibrate(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCalibrate(t);
    }
    static public function testDecimalString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalString(t);
    }
    static public function testDecimalInit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalInit(t);
    }
    static public function testDecimalRounding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalRounding(t);
    }
    static public function benchmarkDecimalConversion(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDecimalConversion(b);
    }
    static public function benchmarkFloatString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatString(b);
    }
    /**
        NewFloat allocates and returns a new Float set to x,
        with precision 53 and rounding mode ToNearestEven.
        NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public function newFloat(x:StdTypes.Float):Float_ {
        return stdgo._internal.math.big.Big.newFloat(x);
    }
    static public function testFloatZeroValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatZeroValue(t);
    }
    static public function testFloatSetPrec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetPrec(t);
    }
    static public function testFloatMinPrec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMinPrec(t);
    }
    static public function testFloatSign(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSign(t);
    }
    static public function testFloatMantExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExp(t);
    }
    static public function testFloatMantExpAliasing(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExpAliasing(t);
    }
    static public function testFloatSetMantExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetMantExp(t);
    }
    static public function testFloatPredicates(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatPredicates(t);
    }
    static public function testFloatIsInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatIsInt(t);
    }
    /**
        TestFloatRound tests basic rounding.
    **/
    static public function testFloatRound(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound(t);
    }
    /**
        TestFloatRound24 tests that rounding a float64 to 24 bits
        matches IEEE-754 rounding to nearest when converting a
        float64 to a float32 (excluding denormal numbers).
    **/
    static public function testFloatRound24(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound24(t);
    }
    static public function testFloatSetUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetUint64(t);
    }
    static public function testFloatSetInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt64(t);
    }
    static public function testFloatSetFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64(t);
    }
    static public function testFloatSetInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt(t);
    }
    static public function testFloatSetRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetRat(t);
    }
    static public function testFloatSetInf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInf(t);
    }
    static public function testFloatUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatUint64(t);
    }
    static public function testFloatInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt64(t);
    }
    static public function testFloatFloat32(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat32(t);
    }
    static public function testFloatFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat64(t);
    }
    static public function testFloatInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt(t);
    }
    static public function testFloatRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRat(t);
    }
    static public function testFloatAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAbs(t);
    }
    static public function testFloatNeg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatNeg(t);
    }
    static public function testFloatInc(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInc(t);
    }
    /**
        TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
        addition/subtraction of arguments represented by Bits values with the
        respective Float addition/subtraction for a variety of precisions
        and rounding modes.
    **/
    static public function testFloatAdd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd(t);
    }
    /**
        TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
        x + (-x) or x - x for non-zero x should be +0 in all cases except when
        the rounding mode is ToNegativeInf in which case it should be -0.
    **/
    static public function testFloatAddRoundZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAddRoundZero(t);
    }
    /**
        TestFloatAdd32 tests that Float.Add/Sub of numbers with
        24bit mantissa behaves like float32 addition/subtraction
        (excluding denormal numbers).
    **/
    static public function testFloatAdd32(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd32(t);
    }
    /**
        TestFloatAdd64 tests that Float.Add/Sub of numbers with
        53bit mantissa behaves like float64 addition/subtraction.
    **/
    static public function testFloatAdd64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd64(t);
    }
    static public function testIssue20490(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue20490(t);
    }
    /**
        TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
        multiplication/division of arguments represented by Bits values with the
        respective Float multiplication/division for a variety of precisions
        and rounding modes.
    **/
    static public function testFloatMul(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul(t);
    }
    /**
        TestFloatMul64 tests that Float.Mul/Quo of numbers with
        53bit mantissa behaves like float64 multiplication/division.
    **/
    static public function testFloatMul64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul64(t);
    }
    static public function testIssue6866(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue6866(t);
    }
    static public function testFloatQuo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuo(t);
    }
    /**
        TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
        it serves as a smoke test for basic correctness of division.
    **/
    static public function testFloatQuoSmoke(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuoSmoke(t);
    }
    /**
        TestFloatArithmeticSpecialValues tests that Float operations produce the
        correct results for combinations of zero (±0), finite (±1 and ±2.71828),
        and infinite (±Inf) operands.
    **/
    static public function testFloatArithmeticSpecialValues(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticSpecialValues(t);
    }
    static public function testFloatArithmeticOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticOverflow(t);
    }
    /**
        For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
        by the sign of the value to be rounded. Test that rounding happens after
        the sign of a result has been set.
        This test uses specific values that are known to fail if rounding is
        "factored" out before setting the result sign.
    **/
    static public function testFloatArithmeticRounding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticRounding(t);
    }
    /**
        TestFloatCmpSpecialValues tests that Cmp produces the correct results for
        combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
        operands.
    **/
    static public function testFloatCmpSpecialValues(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCmpSpecialValues(t);
    }
    static public function benchmarkFloatAdd(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatAdd(b);
    }
    static public function benchmarkFloatSub(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSub(b);
    }
    /**
        ParseFloat is like f.Parse(s, base) with f set to the given precision
        and rounding mode.
    **/
    static public function parseFloat(s:String, base:StdTypes.Int, prec:std.UInt, mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.parseFloat(s, base, prec, mode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function testFloatSetFloat64String(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64String(t);
    }
    static public function testFloat64Text(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Text(t);
    }
    static public function testFloatText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatText(t);
    }
    static public function testFloatFormat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFormat(t);
    }
    static public function benchmarkParseFloatSmallExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatSmallExp(b);
    }
    static public function benchmarkParseFloatLargeExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatLargeExp(b);
    }
    static public function testFloatScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatScan(t);
    }
    static public function testFloatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobEncoding(t);
    }
    static public function testFloatCorruptGob(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCorruptGob(t);
    }
    static public function testFloatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatJSONEncoding(t);
    }
    static public function testFloatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeShortBuffer(t);
    }
    static public function testFloatGobDecodeInvalid(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeInvalid(t);
    }
    static public function benchmarkGCD10x10(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10(b);
    }
    static public function benchmarkGCD10x100(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100(b);
    }
    static public function benchmarkGCD10x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x1000(b);
    }
    static public function benchmarkGCD10x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10000(b);
    }
    static public function benchmarkGCD10x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100000(b);
    }
    static public function benchmarkGCD100x100(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100(b);
    }
    static public function benchmarkGCD100x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x1000(b);
    }
    static public function benchmarkGCD100x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x10000(b);
    }
    static public function benchmarkGCD100x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100000(b);
    }
    static public function benchmarkGCD1000x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x1000(b);
    }
    static public function benchmarkGCD1000x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x10000(b);
    }
    static public function benchmarkGCD1000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x100000(b);
    }
    static public function benchmarkGCD10000x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x10000(b);
    }
    static public function benchmarkGCD10000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x100000(b);
    }
    static public function benchmarkGCD100000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100000x100000(b);
    }
    static public function testHilbert(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testHilbert(t);
    }
    static public function benchmarkHilbert(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkHilbert(b);
    }
    /**
        NewInt allocates and returns a new Int set to x.
    **/
    static public function newInt(x:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.newInt(x);
    }
    /**
        Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        The y argument must be an odd integer.
    **/
    static public function jacobi(x:Int_, y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.jacobi(x, y);
    }
    static public function testSignZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSignZ(t);
    }
    static public function testSetZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetZ(t);
    }
    static public function testAbsZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAbsZ(t);
    }
    static public function testSumZZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSumZZ(t);
    }
    static public function testProdZZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProdZZ(t);
    }
    static public function testMul(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMul(t);
    }
    static public function testMulRangeZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeZ(t);
    }
    static public function testBinomial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBinomial(t);
    }
    static public function benchmarkBinomial(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBinomial(b);
    }
    static public function testDivisionSigns(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivisionSigns(t);
    }
    static public function testBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBits(t);
    }
    static public function testSetBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetBytes(t);
    }
    static public function testBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBytes(t);
    }
    static public function testQuo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuo(t);
    }
    static public function testQuoStepD6(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuoStepD6(t);
    }
    static public function benchmarkQuoRem(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkQuoRem(b);
    }
    static public function testBitLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitLen(t);
    }
    static public function testExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExp(t);
    }
    static public function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp(b);
    }
    static public function benchmarkExpMont(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExpMont(b);
    }
    static public function benchmarkExp2(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp2(b);
    }
    static public function testGcd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGcd(t);
    }
    static public function testRsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRsh(t);
    }
    static public function testRshSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRshSelf(t);
    }
    static public function testLsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLsh(t);
    }
    static public function testLshSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshSelf(t);
    }
    static public function testLshRsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshRsh(t);
    }
    static public function testCmpAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmpAbs(t);
    }
    static public function testIntCmpSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntCmpSelf(t);
    }
    static public function testInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testInt64(t);
    }
    static public function testUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testUint64(t);
    }
    static public function testBitSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitSet(t);
    }
    static public function testTrailingZeroBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testTrailingZeroBits(t);
    }
    static public function benchmarkBitset(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitset(b);
    }
    static public function benchmarkBitsetNeg(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNeg(b);
    }
    static public function benchmarkBitsetOrig(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetOrig(b);
    }
    static public function benchmarkBitsetNegOrig(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNegOrig(b);
    }
    static public function benchmarkModSqrt225_Tonelli(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_Tonelli(b);
    }
    static public function benchmarkModSqrt225_3Mod4(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_3Mod4(b);
    }
    static public function benchmarkModSqrt231_Tonelli(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_Tonelli(b);
    }
    static public function benchmarkModSqrt231_5Mod8(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_5Mod8(b);
    }
    static public function testBitwise(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitwise(t);
    }
    static public function testNot(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNot(t);
    }
    static public function testModInverse(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModInverse(t);
    }
    static public function benchmarkModInverse(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModInverse(b);
    }
    static public function testModSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModSqrt(t);
    }
    static public function testJacobi(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobi(t);
    }
    static public function testJacobiPanic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobiPanic(t);
    }
    static public function testIssue2607(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2607(t);
    }
    static public function testSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqrt(t);
    }
    /**
        We can't test this together with the other Exp tests above because
        it requires a different receiver setup.
    **/
    static public function testIssue22830(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue22830(t);
    }
    static public function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSqrt(b);
    }
    static public function benchmarkIntSqr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkIntSqr(b);
    }
    static public function benchmarkDiv(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDiv(b);
    }
    static public function testFillBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFillBytes(t);
    }
    static public function testNewIntMinInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntMinInt64(t);
    }
    static public function testNewIntAllocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntAllocs(t);
    }
    static public function testFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64(t);
    }
    static public function testIntText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntText(t);
    }
    static public function testAppendText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAppendText(t);
    }
    static public function testGetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGetString(t);
    }
    static public function testSetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetString(t);
    }
    static public function testFormat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFormat(t);
    }
    static public function testScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScan(t);
    }
    static public function testIntGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntGobEncoding(t);
    }
    /**
        Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public function testGobEncodingNilIntInSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilIntInSlice(t);
    }
    static public function testIntJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncoding(t);
    }
    static public function testIntJSONEncodingNil(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncodingNil(t);
    }
    static public function testIntXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntXMLEncoding(t);
    }
    /**
        Tests that the linker is able to remove references to Float, Rat,
        and Int if unused (notably, not used by init).
    **/
    static public function testLinkerGC(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLinkerGC(t);
    }
    static public function testCmp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmp(t);
    }
    static public function testSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSet(t);
    }
    static public function testFunNN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunNN(t);
    }
    static public function testMulRangeN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeN(t);
    }
    /**
        TestMulUnbalanced tests that multiplying numbers of different lengths
        does not cause deep recursion and in turn allocate too much memory.
        Test case for issue 3807.
    **/
    static public function testMulUnbalanced(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulUnbalanced(t);
    }
    static public function benchmarkMul(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMul(b);
    }
    static public function benchmarkNatMul(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatMul(b);
    }
    static public function testNLZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNLZ(t);
    }
    static public function testShiftLeft(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftLeft(t);
    }
    static public function testShiftRight(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftRight(t);
    }
    static public function benchmarkZeroShifts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkZeroShifts(b);
    }
    static public function testModW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModW(t);
    }
    static public function testMontgomery(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMontgomery(t);
    }
    static public function testExpNN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExpNN(t);
    }
    static public function fuzzExpMont(f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.math.big.Big.fuzzExpMont(f);
    }
    static public function benchmarkExp3Power(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp3Power(b);
    }
    static public function testFibo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFibo(t);
    }
    static public function benchmarkFibo(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFibo(b);
    }
    static public function testBit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBit(t);
    }
    static public function testSticky(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSticky(t);
    }
    static public function testSqr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqr(t);
    }
    static public function benchmarkNatSqr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSqr(b);
    }
    static public function testNatSubMod2N(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatSubMod2N(t);
    }
    static public function benchmarkNatSetBytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSetBytes(b);
    }
    static public function testNatDiv(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatDiv(t);
    }
    /**
        TestIssue37499 triggers the edge case of divBasic where
        the inaccurate estimate of the first word's quotient
        happens at the very beginning of the loop.
    **/
    static public function testIssue37499(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue37499(t);
    }
    /**
        TestIssue42552 triggers an edge case of recursive division
        where the first division loop is never entered, and correcting
        the remainder takes exactly two iterations in the final loop.
    **/
    static public function testIssue42552(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42552(t);
    }
    static public function testMaxBase(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMaxBase(t);
    }
    static public function testString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testString(t);
    }
    static public function testScanBase(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanBase(t);
    }
    /**
        Test case for BenchmarkScanPi.
    **/
    static public function testScanPi(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPi(t);
    }
    static public function testScanPiParallel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPiParallel(t);
    }
    static public function benchmarkScanPi(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScanPi(b);
    }
    static public function benchmarkStringPiParallel(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkStringPiParallel(b);
    }
    static public function benchmarkScan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScan(b);
    }
    static public function benchmarkString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkString(b);
    }
    static public function benchmarkLeafSize(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkLeafSize(b);
    }
    static public function leafSizeHelper(b:stdgo._internal.testing.Testing.B, base:StdTypes.Int, size:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.leafSizeHelper(b, base, size);
    }
    static public function testStringPowers(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testStringPowers(t);
    }
    static public function testProbablyPrime(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProbablyPrime(t);
    }
    static public function benchmarkProbablyPrime(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkProbablyPrime(b);
    }
    static public function testMillerRabinPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMillerRabinPseudoprimes(t);
    }
    static public function testLucasPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLucasPseudoprimes(t);
    }
    /**
        NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public function newRat(a:haxe.Int64, b:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.newRat(a, b);
    }
    static public function testZeroRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testZeroRat(t);
    }
    static public function testRatSign(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSign(t);
    }
    static public function testRatCmp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatCmp(t);
    }
    static public function testIsInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsInt(t);
    }
    static public function testRatAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatAbs(t);
    }
    static public function testRatNeg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatNeg(t);
    }
    static public function testRatInv(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatInv(t);
    }
    static public function testRatBin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatBin(t);
    }
    static public function testIssue820(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue820(t);
    }
    static public function testRatSetFrac64Rat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetFrac64Rat(t);
    }
    static public function testIssue2379(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2379(t);
    }
    static public function testIssue3521(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue3521(t);
    }
    static public function testFloat32Distribution(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32Distribution(t);
    }
    static public function testFloat64Distribution(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Distribution(t);
    }
    /**
        TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
        returns nil.
    **/
    static public function testSetFloat64NonFinite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetFloat64NonFinite(t);
    }
    static public function testIsFinite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsFinite(t);
    }
    static public function testRatSetInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetInt64(t);
    }
    static public function testRatSetUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetUint64(t);
    }
    static public function benchmarkRatCmp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkRatCmp(b);
    }
    /**
        TestIssue34919 verifies that a Rat's denominator is not modified
        when simply accessing the Rat value.
    **/
    static public function testIssue34919(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue34919(t);
    }
    static public function testDenomRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDenomRace(t);
    }
    static public function testScanExponent(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanExponent(t);
    }
    static public function testRatSetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetString(t);
    }
    static public function testRatSetStringZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetStringZero(t);
    }
    static public function testRatScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatScan(t);
    }
    static public function testFloatString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatString(t);
    }
    static public function testFloat32SpecialCases(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32SpecialCases(t);
    }
    static public function testFloat64SpecialCases(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64SpecialCases(t);
    }
    static public function testIssue31184(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31184(t);
    }
    static public function testIssue45910(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue45910(t);
    }
    static public function testRatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobEncoding(t);
    }
    /**
        Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
        TODO: top-level nils.
    **/
    static public function testGobEncodingNilRatInSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilRatInSlice(t);
    }
    static public function testRatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatJSONEncoding(t);
    }
    static public function testRatXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatXMLEncoding(t);
    }
    static public function testRatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobDecodeShortBuffer(t);
    }
    /**
        TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
        behaves like float math.Sqrt.
    **/
    static public function testFloatSqrt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt64(t);
    }
    static public function testFloatSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt(t);
    }
    static public function testFloatSqrtSpecial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrtSpecial(t);
    }
    static public function benchmarkFloatSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSqrt(b);
    }
}
