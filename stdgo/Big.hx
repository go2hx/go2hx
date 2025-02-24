package stdgo;
final maxExp : haxe.UInt64 = stdgo._internal.math.big.Big_maxexp.maxExp;
final minExp : haxe.UInt64 = stdgo._internal.math.big.Big_minexp.minExp;
final maxPrec : haxe.UInt64 = stdgo._internal.math.big.Big_maxprec.maxPrec;
final toNearestEven : RoundingMode = stdgo._internal.math.big.Big_tonearesteven.toNearestEven;
final toNearestAway = stdgo._internal.math.big.Big_tonearestaway.toNearestAway;
final toZero = stdgo._internal.math.big.Big_tozero.toZero;
final awayFromZero = stdgo._internal.math.big.Big_awayfromzero.awayFromZero;
final toNegativeInf = stdgo._internal.math.big.Big_tonegativeinf.toNegativeInf;
final toPositiveInf = stdgo._internal.math.big.Big_topositiveinf.toPositiveInf;
final below : Accuracy = stdgo._internal.math.big.Big_below.below;
final exact : Accuracy = stdgo._internal.math.big.Big_exact.exact;
final above : Accuracy = stdgo._internal.math.big.Big_above.above;
final maxBase : StdTypes.Int = stdgo._internal.math.big.Big_maxbase.maxBase;
@:structInit @:using(stdgo.math.big.Big.T_argVV_static_extension) @:dox(hide) abstract T_argVV(stdgo._internal.math.big.Big_t_argvv.T_argVV) from stdgo._internal.math.big.Big_t_argvv.T_argVV to stdgo._internal.math.big.Big_t_argvv.T_argVV {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : T_nat;
    function get__y():T_nat return this._y;
    function set__y(v:T_nat):T_nat {
        this._y = v;
        return v;
    }
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:T_nat, ?_c:Word) this = new stdgo._internal.math.big.Big_t_argvv.T_argVV(_z, _x, _y, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argVW_static_extension) @:dox(hide) abstract T_argVW(stdgo._internal.math.big.Big_t_argvw.T_argVW) from stdgo._internal.math.big.Big_t_argvw.T_argVW to stdgo._internal.math.big.Big_t_argvw.T_argVW {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : Word;
    function get__y():Word return this._y;
    function set__y(v:Word):Word {
        this._y = v;
        return v;
    }
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:Word, ?_c:Word) this = new stdgo._internal.math.big.Big_t_argvw.T_argVW(_z, _x, _y, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argVU_static_extension) @:dox(hide) abstract T_argVU(stdgo._internal.math.big.Big_t_argvu.T_argVU) from stdgo._internal.math.big.Big_t_argvu.T_argVU to stdgo._internal.math.big.Big_t_argvu.T_argVU {
    public var _d(get, set) : Array<Word>;
    function get__d():Array<Word> return [for (i in this._d) i];
    function set__d(v:Array<Word>):Array<Word> {
        this._d = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        return v;
    }
    public var _l(get, set) : std.UInt;
    function get__l():std.UInt return this._l;
    function set__l(v:std.UInt):std.UInt {
        this._l = (v : stdgo.GoUInt);
        return v;
    }
    public var _xp(get, set) : std.UInt;
    function get__xp():std.UInt return this._xp;
    function set__xp(v:std.UInt):std.UInt {
        this._xp = (v : stdgo.GoUInt);
        return v;
    }
    public var _zp(get, set) : std.UInt;
    function get__zp():std.UInt return this._zp;
    function set__zp(v:std.UInt):std.UInt {
        this._zp = (v : stdgo.GoUInt);
        return v;
    }
    public var _s(get, set) : std.UInt;
    function get__s():std.UInt return this._s;
    function set__s(v:std.UInt):std.UInt {
        this._s = (v : stdgo.GoUInt);
        return v;
    }
    public var _r(get, set) : Array<Word>;
    function get__r():Array<Word> return [for (i in this._r) i];
    function set__r(v:Array<Word>):Array<Word> {
        this._r = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        return v;
    }
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public var _m(get, set) : String;
    function get__m():String return this._m;
    function set__m(v:String):String {
        this._m = (v : stdgo.GoString);
        return v;
    }
    public function new(?_d:Array<Word>, ?_l:std.UInt, ?_xp:std.UInt, ?_zp:std.UInt, ?_s:std.UInt, ?_r:Array<Word>, ?_c:Word, ?_m:String) this = new stdgo._internal.math.big.Big_t_argvu.T_argVU(([for (i in _d) i] : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>), (_l : stdgo.GoUInt), (_xp : stdgo.GoUInt), (_zp : stdgo.GoUInt), (_s : stdgo.GoUInt), ([for (i in _r) i] : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>), _c, (_m : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argVWW_static_extension) @:dox(hide) abstract T_argVWW(stdgo._internal.math.big.Big_t_argvww.T_argVWW) from stdgo._internal.math.big.Big_t_argvww.T_argVWW to stdgo._internal.math.big.Big_t_argvww.T_argVWW {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : Word;
    function get__y():Word return this._y;
    function set__y(v:Word):Word {
        this._y = v;
        return v;
    }
    public var _r(get, set) : Word;
    function get__r():Word return this._r;
    function set__r(v:Word):Word {
        this._r = v;
        return v;
    }
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:Word, ?_r:Word, ?_c:Word) this = new stdgo._internal.math.big.Big_t_argvww.T_argVWW(_z, _x, _y, _r, _c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argWVW_static_extension) @:dox(hide) abstract T_argWVW(stdgo._internal.math.big.Big_t_argwvw.T_argWVW) from stdgo._internal.math.big.Big_t_argwvw.T_argWVW to stdgo._internal.math.big.Big_t_argwvw.T_argWVW {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _xn(get, set) : Word;
    function get__xn():Word return this._xn;
    function set__xn(v:Word):Word {
        this._xn = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : Word;
    function get__y():Word return this._y;
    function set__y(v:Word):Word {
        this._y = v;
        return v;
    }
    public var _r(get, set) : Word;
    function get__r():Word return this._r;
    function set__r(v:Word):Word {
        this._r = v;
        return v;
    }
    public function new(?_z:T_nat, ?_xn:Word, ?_x:T_nat, ?_y:Word, ?_r:Word) this = new stdgo._internal.math.big.Big_t_argwvw.T_argWVW(_z, _xn, _x, _y, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_decimal_static_extension) @:dox(hide) abstract T_decimal(stdgo._internal.math.big.Big_t_decimal.T_decimal) from stdgo._internal.math.big.Big_t_decimal.T_decimal to stdgo._internal.math.big.Big_t_decimal.T_decimal {
    public var _mant(get, set) : Array<std.UInt>;
    function get__mant():Array<std.UInt> return [for (i in this._mant) i];
    function set__mant(v:Array<std.UInt>):Array<std.UInt> {
        this._mant = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _exp(get, set) : StdTypes.Int;
    function get__exp():StdTypes.Int return this._exp;
    function set__exp(v:StdTypes.Int):StdTypes.Int {
        this._exp = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_mant:Array<std.UInt>, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big_t_decimal.T_decimal(([for (i in _mant) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_exp : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Float__static_extension) abstract Float_(stdgo._internal.math.big.Big_float_.Float_) from stdgo._internal.math.big.Big_float_.Float_ to stdgo._internal.math.big.Big_float_.Float_ {
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
    public function new(?_prec:std.UInt, ?_mode:RoundingMode, ?_acc:Accuracy, ?_form:T_form, ?_neg:Bool, ?_mant:T_nat, ?_exp:StdTypes.Int) this = new stdgo._internal.math.big.Big_float_.Float_((_prec : stdgo.GoUInt32), _mode, _acc, _form, _neg, _mant, (_exp : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.ErrNaN_static_extension) abstract ErrNaN(stdgo._internal.math.big.Big_errnan.ErrNaN) from stdgo._internal.math.big.Big_errnan.ErrNaN to stdgo._internal.math.big.Big_errnan.ErrNaN {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public function new(?_msg:String) this = new stdgo._internal.math.big.Big_errnan.ErrNaN((_msg : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_matrix_static_extension) @:dox(hide) abstract T_matrix(stdgo._internal.math.big.Big_t_matrix.T_matrix) from stdgo._internal.math.big.Big_t_matrix.T_matrix to stdgo._internal.math.big.Big_t_matrix.T_matrix {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _m(get, set) : StdTypes.Int;
    function get__m():StdTypes.Int return this._m;
    function set__m(v:StdTypes.Int):StdTypes.Int {
        this._m = (v : stdgo.GoInt);
        return v;
    }
    public var _a(get, set) : Array<Rat>;
    function get__a():Array<Rat> return [for (i in this._a) i];
    function set__a(v:Array<Rat>):Array<Rat> {
        this._a = ([for (i in v) (i : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>);
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_m:StdTypes.Int, ?_a:Array<Rat>) this = new stdgo._internal.math.big.Big_t_matrix.T_matrix((_n : stdgo.GoInt), (_m : stdgo.GoInt), ([for (i in _a) (i : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Int__static_extension) abstract Int_(stdgo._internal.math.big.Big_int_.Int_) from stdgo._internal.math.big.Big_int_.Int_ to stdgo._internal.math.big.Big_int_.Int_ {
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _abs(get, set) : T_nat;
    function get__abs():T_nat return this._abs;
    function set__abs(v:T_nat):T_nat {
        this._abs = v;
        return v;
    }
    public function new(?_neg:Bool, ?_abs:T_nat) this = new stdgo._internal.math.big.Big_int_.Int_(_neg, _abs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argZZ_static_extension) @:dox(hide) abstract T_argZZ(stdgo._internal.math.big.Big_t_argzz.T_argZZ) from stdgo._internal.math.big.Big_t_argzz.T_argZZ to stdgo._internal.math.big.Big_t_argzz.T_argZZ {
    public var _z(get, set) : Int_;
    function get__z():Int_ return this._z;
    function set__z(v:Int_):Int_ {
        this._z = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var _x(get, set) : Int_;
    function get__x():Int_ return this._x;
    function set__x(v:Int_):Int_ {
        this._x = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var _y(get, set) : Int_;
    function get__y():Int_ return this._y;
    function set__y(v:Int_):Int_ {
        this._y = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public function new(?_z:Int_, ?_x:Int_, ?_y:Int_) this = new stdgo._internal.math.big.Big_t_argzz.T_argZZ((_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_intShiftTest_static_extension) @:dox(hide) abstract T_intShiftTest(stdgo._internal.math.big.Big_t_intshifttest.T_intShiftTest) from stdgo._internal.math.big.Big_t_intshifttest.T_intShiftTest to stdgo._internal.math.big.Big_t_intshifttest.T_intShiftTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = (v : stdgo.GoUInt);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_shift:std.UInt, ?_out:String) this = new stdgo._internal.math.big.Big_t_intshifttest.T_intShiftTest((_in : stdgo.GoString), (_shift : stdgo.GoUInt), (_out : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_byteReader_static_extension) @:dox(hide) abstract T_byteReader(stdgo._internal.math.big.Big_t_bytereader.T_byteReader) from stdgo._internal.math.big.Big_t_bytereader.T_byteReader to stdgo._internal.math.big.Big_t_bytereader.T_byteReader {
    public var scanState(get, set) : stdgo._internal.fmt.Fmt_scanstate.ScanState;
    function get_scanState():stdgo._internal.fmt.Fmt_scanstate.ScanState return this.scanState;
    function set_scanState(v:stdgo._internal.fmt.Fmt_scanstate.ScanState):stdgo._internal.fmt.Fmt_scanstate.ScanState {
        this.scanState = v;
        return v;
    }
    public function new(?scanState:stdgo._internal.fmt.Fmt_scanstate.ScanState) this = new stdgo._internal.math.big.Big_t_bytereader.T_byteReader(scanState);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_argNN_static_extension) @:dox(hide) abstract T_argNN(stdgo._internal.math.big.Big_t_argnn.T_argNN) from stdgo._internal.math.big.Big_t_argnn.T_argNN to stdgo._internal.math.big.Big_t_argnn.T_argNN {
    public var _z(get, set) : T_nat;
    function get__z():T_nat return this._z;
    function set__z(v:T_nat):T_nat {
        this._z = v;
        return v;
    }
    public var _x(get, set) : T_nat;
    function get__x():T_nat return this._x;
    function set__x(v:T_nat):T_nat {
        this._x = v;
        return v;
    }
    public var _y(get, set) : T_nat;
    function get__y():T_nat return this._y;
    function set__y(v:T_nat):T_nat {
        this._y = v;
        return v;
    }
    public function new(?_z:T_nat, ?_x:T_nat, ?_y:T_nat) this = new stdgo._internal.math.big.Big_t_argnn.T_argNN(_z, _x, _y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_shiftTest_static_extension) @:dox(hide) abstract T_shiftTest(stdgo._internal.math.big.Big_t_shifttest.T_shiftTest) from stdgo._internal.math.big.Big_t_shifttest.T_shiftTest to stdgo._internal.math.big.Big_t_shifttest.T_shiftTest {
    public var _in(get, set) : T_nat;
    function get__in():T_nat return this._in;
    function set__in(v:T_nat):T_nat {
        this._in = v;
        return v;
    }
    public var _shift(get, set) : std.UInt;
    function get__shift():std.UInt return this._shift;
    function set__shift(v:std.UInt):std.UInt {
        this._shift = (v : stdgo.GoUInt);
        return v;
    }
    public var _out(get, set) : T_nat;
    function get__out():T_nat return this._out;
    function set__out(v:T_nat):T_nat {
        this._out = v;
        return v;
    }
    public function new(?_in:T_nat, ?_shift:std.UInt, ?_out:T_nat) this = new stdgo._internal.math.big.Big_t_shifttest.T_shiftTest(_in, (_shift : stdgo.GoUInt), _out);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_modWTest_static_extension) @:dox(hide) abstract T_modWTest(stdgo._internal.math.big.Big_t_modwtest.T_modWTest) from stdgo._internal.math.big.Big_t_modwtest.T_modWTest to stdgo._internal.math.big.Big_t_modwtest.T_modWTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _dividend(get, set) : String;
    function get__dividend():String return this._dividend;
    function set__dividend(v:String):String {
        this._dividend = (v : stdgo.GoString);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_dividend:String, ?_out:String) this = new stdgo._internal.math.big.Big_t_modwtest.T_modWTest((_in : stdgo.GoString), (_dividend : stdgo.GoString), (_out : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_divisor_static_extension) @:dox(hide) abstract T_divisor(stdgo._internal.math.big.Big_t_divisor.T_divisor) from stdgo._internal.math.big.Big_t_divisor.T_divisor to stdgo._internal.math.big.Big_t_divisor.T_divisor {
    public var _bbb(get, set) : T_nat;
    function get__bbb():T_nat return this._bbb;
    function set__bbb(v:T_nat):T_nat {
        this._bbb = v;
        return v;
    }
    public var _nbits(get, set) : StdTypes.Int;
    function get__nbits():StdTypes.Int return this._nbits;
    function set__nbits(v:StdTypes.Int):StdTypes.Int {
        this._nbits = (v : stdgo.GoInt);
        return v;
    }
    public var _ndigits(get, set) : StdTypes.Int;
    function get__ndigits():StdTypes.Int return this._ndigits;
    function set__ndigits(v:StdTypes.Int):StdTypes.Int {
        this._ndigits = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_bbb:T_nat, ?_nbits:StdTypes.Int, ?_ndigits:StdTypes.Int) this = new stdgo._internal.math.big.Big_t_divisor.T_divisor(_bbb, (_nbits : stdgo.GoInt), (_ndigits : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.Rat_static_extension) abstract Rat(stdgo._internal.math.big.Big_rat.Rat) from stdgo._internal.math.big.Big_rat.Rat to stdgo._internal.math.big.Big_rat.Rat {
    public var _a(get, set) : Int_;
    function get__a():Int_ return this._a;
    function set__a(v:Int_):Int_ {
        this._a = v;
        return v;
    }
    public var _b(get, set) : Int_;
    function get__b():Int_ return this._b;
    function set__b(v:Int_):Int_ {
        this._b = v;
        return v;
    }
    public function new(?_a:Int_, ?_b:Int_) this = new stdgo._internal.math.big.Big_rat.Rat(_a, _b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.T_ratBinArg_static_extension) @:dox(hide) abstract T_ratBinArg(stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg) from stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg to stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg {
    public var _x(get, set) : String;
    function get__x():String return this._x;
    function set__x(v:String):String {
        this._x = (v : stdgo.GoString);
        return v;
    }
    public var _y(get, set) : String;
    function get__y():String return this._y;
    function set__y(v:String):String {
        this._y = (v : stdgo.GoString);
        return v;
    }
    public var _z(get, set) : String;
    function get__z():String return this._z;
    function set__z(v:String):String {
        this._z = (v : stdgo.GoString);
        return v;
    }
    public function new(?_x:String, ?_y:String, ?_z:String) this = new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg((_x : stdgo.GoString), (_y : stdgo.GoString), (_z : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.math.big.Big.StringTest_static_extension) abstract StringTest(stdgo._internal.math.big.Big_stringtest.StringTest) from stdgo._internal.math.big.Big_stringtest.StringTest to stdgo._internal.math.big.Big_stringtest.StringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _out(get, set) : String;
    function get__out():String return this._out;
    function set__out(v:String):String {
        this._out = (v : stdgo.GoString);
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_in:String, ?_out:String, ?_ok:Bool) this = new stdgo._internal.math.big.Big_stringtest.StringTest((_in : stdgo.GoString), (_out : stdgo.GoString), _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.math.big.Big_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.math.big.Big_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.math.big.Big_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.math.big.Big_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.math.big.Big_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.math.big.Big_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.math.big.Big_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.math.big.Big_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.math.big.Big_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.math.big.Big_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.math.big.Big_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.math.big.Big_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.math.big.Big_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.math.big.Big_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.math.big.Big_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {

}
@:dox(hide) typedef T__struct_7 = stdgo._internal.math.big.Big_t__struct_7.T__struct_7;
@:dox(hide) typedef T__struct_8Pointer = stdgo._internal.math.big.Big_t__struct_8pointer.T__struct_8Pointer;
@:dox(hide) class T__struct_8_static_extension {

}
@:dox(hide) typedef T__struct_8 = stdgo._internal.math.big.Big_t__struct_8.T__struct_8;
@:dox(hide) typedef T__struct_9Pointer = stdgo._internal.math.big.Big_t__struct_9pointer.T__struct_9Pointer;
@:dox(hide) class T__struct_9_static_extension {

}
@:dox(hide) typedef T__struct_9 = stdgo._internal.math.big.Big_t__struct_9.T__struct_9;
@:dox(hide) typedef T__struct_10Pointer = stdgo._internal.math.big.Big_t__struct_10pointer.T__struct_10Pointer;
@:dox(hide) class T__struct_10_static_extension {

}
@:dox(hide) typedef T__struct_10 = stdgo._internal.math.big.Big_t__struct_10.T__struct_10;
@:dox(hide) typedef T__struct_11Pointer = stdgo._internal.math.big.Big_t__struct_11pointer.T__struct_11Pointer;
@:dox(hide) class T__struct_11_static_extension {

}
@:dox(hide) typedef T__struct_11 = stdgo._internal.math.big.Big_t__struct_11.T__struct_11;
@:dox(hide) typedef T__struct_12Pointer = stdgo._internal.math.big.Big_t__struct_12pointer.T__struct_12Pointer;
@:dox(hide) class T__struct_12_static_extension {

}
@:dox(hide) typedef T__struct_12 = stdgo._internal.math.big.Big_t__struct_12.T__struct_12;
@:dox(hide) typedef T__struct_13Pointer = stdgo._internal.math.big.Big_t__struct_13pointer.T__struct_13Pointer;
@:dox(hide) class T__struct_13_static_extension {

}
@:dox(hide) typedef T__struct_13 = stdgo._internal.math.big.Big_t__struct_13.T__struct_13;
@:dox(hide) typedef T__struct_14Pointer = stdgo._internal.math.big.Big_t__struct_14pointer.T__struct_14Pointer;
@:dox(hide) class T__struct_14_static_extension {

}
@:dox(hide) typedef T__struct_14 = stdgo._internal.math.big.Big_t__struct_14.T__struct_14;
@:dox(hide) typedef T__struct_15Pointer = stdgo._internal.math.big.Big_t__struct_15pointer.T__struct_15Pointer;
@:dox(hide) class T__struct_15_static_extension {

}
@:dox(hide) typedef T__struct_15 = stdgo._internal.math.big.Big_t__struct_15.T__struct_15;
@:dox(hide) typedef T__struct_16Pointer = stdgo._internal.math.big.Big_t__struct_16pointer.T__struct_16Pointer;
@:dox(hide) class T__struct_16_static_extension {

}
@:dox(hide) typedef T__struct_16 = stdgo._internal.math.big.Big_t__struct_16.T__struct_16;
@:dox(hide) typedef T__struct_17Pointer = stdgo._internal.math.big.Big_t__struct_17pointer.T__struct_17Pointer;
@:dox(hide) class T__struct_17_static_extension {

}
@:dox(hide) typedef T__struct_17 = stdgo._internal.math.big.Big_t__struct_17.T__struct_17;
@:dox(hide) typedef T__struct_18Pointer = stdgo._internal.math.big.Big_t__struct_18pointer.T__struct_18Pointer;
@:dox(hide) class T__struct_18_static_extension {

}
@:dox(hide) typedef T__struct_18 = stdgo._internal.math.big.Big_t__struct_18.T__struct_18;
@:dox(hide) typedef T__struct_19Pointer = stdgo._internal.math.big.Big_t__struct_19pointer.T__struct_19Pointer;
@:dox(hide) class T__struct_19_static_extension {

}
@:dox(hide) typedef T__struct_19 = stdgo._internal.math.big.Big_t__struct_19.T__struct_19;
@:dox(hide) typedef T__struct_20Pointer = stdgo._internal.math.big.Big_t__struct_20pointer.T__struct_20Pointer;
@:dox(hide) class T__struct_20_static_extension {

}
@:dox(hide) typedef T__struct_20 = stdgo._internal.math.big.Big_t__struct_20.T__struct_20;
@:dox(hide) typedef T__struct_21Pointer = stdgo._internal.math.big.Big_t__struct_21pointer.T__struct_21Pointer;
@:dox(hide) class T__struct_21_static_extension {

}
@:dox(hide) typedef T__struct_21 = stdgo._internal.math.big.Big_t__struct_21.T__struct_21;
@:dox(hide) typedef T__struct_22Pointer = stdgo._internal.math.big.Big_t__struct_22pointer.T__struct_22Pointer;
@:dox(hide) class T__struct_22_static_extension {

}
@:dox(hide) typedef T__struct_22 = stdgo._internal.math.big.Big_t__struct_22.T__struct_22;
@:dox(hide) typedef T__struct_23Pointer = stdgo._internal.math.big.Big_t__struct_23pointer.T__struct_23Pointer;
@:dox(hide) class T__struct_23_static_extension {

}
@:dox(hide) typedef T__struct_23 = stdgo._internal.math.big.Big_t__struct_23.T__struct_23;
@:dox(hide) typedef T__struct_24Pointer = stdgo._internal.math.big.Big_t__struct_24pointer.T__struct_24Pointer;
@:dox(hide) class T__struct_24_static_extension {

}
@:dox(hide) typedef T__struct_24 = stdgo._internal.math.big.Big_t__struct_24.T__struct_24;
@:dox(hide) typedef T__struct_25Pointer = stdgo._internal.math.big.Big_t__struct_25pointer.T__struct_25Pointer;
@:dox(hide) class T__struct_25_static_extension {

}
@:dox(hide) typedef T__struct_25 = stdgo._internal.math.big.Big_t__struct_25.T__struct_25;
@:dox(hide) typedef T__struct_26Pointer = stdgo._internal.math.big.Big_t__struct_26pointer.T__struct_26Pointer;
@:dox(hide) class T__struct_26_static_extension {

}
@:dox(hide) typedef T__struct_26 = stdgo._internal.math.big.Big_t__struct_26.T__struct_26;
@:dox(hide) typedef T__struct_27Pointer = stdgo._internal.math.big.Big_t__struct_27pointer.T__struct_27Pointer;
@:dox(hide) class T__struct_27_static_extension {

}
@:dox(hide) typedef T__struct_27 = stdgo._internal.math.big.Big_t__struct_27.T__struct_27;
@:dox(hide) typedef T__struct_28Pointer = stdgo._internal.math.big.Big_t__struct_28pointer.T__struct_28Pointer;
@:dox(hide) class T__struct_28_static_extension {

}
@:dox(hide) typedef T__struct_28 = stdgo._internal.math.big.Big_t__struct_28.T__struct_28;
@:dox(hide) typedef T__struct_29Pointer = stdgo._internal.math.big.Big_t__struct_29pointer.T__struct_29Pointer;
@:dox(hide) class T__struct_29_static_extension {

}
@:dox(hide) typedef T__struct_29 = stdgo._internal.math.big.Big_t__struct_29.T__struct_29;
@:dox(hide) typedef T__struct_30Pointer = stdgo._internal.math.big.Big_t__struct_30pointer.T__struct_30Pointer;
@:dox(hide) class T__struct_30_static_extension {

}
@:dox(hide) typedef T__struct_30 = stdgo._internal.math.big.Big_t__struct_30.T__struct_30;
@:dox(hide) typedef T__struct_31Pointer = stdgo._internal.math.big.Big_t__struct_31pointer.T__struct_31Pointer;
@:dox(hide) class T__struct_31_static_extension {

}
@:dox(hide) typedef T__struct_31 = stdgo._internal.math.big.Big_t__struct_31.T__struct_31;
@:dox(hide) typedef T__struct_32Pointer = stdgo._internal.math.big.Big_t__struct_32pointer.T__struct_32Pointer;
@:dox(hide) class T__struct_32_static_extension {

}
@:dox(hide) typedef T__struct_32 = stdgo._internal.math.big.Big_t__struct_32.T__struct_32;
@:dox(hide) typedef T__struct_33Pointer = stdgo._internal.math.big.Big_t__struct_33pointer.T__struct_33Pointer;
@:dox(hide) class T__struct_33_static_extension {

}
@:dox(hide) typedef T__struct_33 = stdgo._internal.math.big.Big_t__struct_33.T__struct_33;
@:dox(hide) typedef T__struct_34Pointer = stdgo._internal.math.big.Big_t__struct_34pointer.T__struct_34Pointer;
@:dox(hide) class T__struct_34_static_extension {

}
@:dox(hide) typedef T__struct_34 = stdgo._internal.math.big.Big_t__struct_34.T__struct_34;
@:dox(hide) typedef T__struct_35Pointer = stdgo._internal.math.big.Big_t__struct_35pointer.T__struct_35Pointer;
@:dox(hide) class T__struct_35_static_extension {

}
@:dox(hide) typedef T__struct_35 = stdgo._internal.math.big.Big_t__struct_35.T__struct_35;
@:dox(hide) typedef T__struct_36Pointer = stdgo._internal.math.big.Big_t__struct_36pointer.T__struct_36Pointer;
@:dox(hide) class T__struct_36_static_extension {

}
@:dox(hide) typedef T__struct_36 = stdgo._internal.math.big.Big_t__struct_36.T__struct_36;
@:dox(hide) typedef T__struct_37Pointer = stdgo._internal.math.big.Big_t__struct_37pointer.T__struct_37Pointer;
@:dox(hide) class T__struct_37_static_extension {

}
@:dox(hide) typedef T__struct_37 = stdgo._internal.math.big.Big_t__struct_37.T__struct_37;
@:dox(hide) typedef T__struct_38Pointer = stdgo._internal.math.big.Big_t__struct_38pointer.T__struct_38Pointer;
@:dox(hide) class T__struct_38_static_extension {

}
@:dox(hide) typedef T__struct_38 = stdgo._internal.math.big.Big_t__struct_38.T__struct_38;
@:dox(hide) typedef T__struct_39Pointer = stdgo._internal.math.big.Big_t__struct_39pointer.T__struct_39Pointer;
@:dox(hide) class T__struct_39_static_extension {

}
@:dox(hide) typedef T__struct_39 = stdgo._internal.math.big.Big_t__struct_39.T__struct_39;
@:dox(hide) typedef T__struct_40Pointer = stdgo._internal.math.big.Big_t__struct_40pointer.T__struct_40Pointer;
@:dox(hide) class T__struct_40_static_extension {

}
@:dox(hide) typedef T__struct_40 = stdgo._internal.math.big.Big_t__struct_40.T__struct_40;
@:dox(hide) typedef T__struct_41Pointer = stdgo._internal.math.big.Big_t__struct_41pointer.T__struct_41Pointer;
@:dox(hide) class T__struct_41_static_extension {

}
@:dox(hide) typedef T__struct_41 = stdgo._internal.math.big.Big_t__struct_41.T__struct_41;
@:dox(hide) typedef T__struct_42Pointer = stdgo._internal.math.big.Big_t__struct_42pointer.T__struct_42Pointer;
@:dox(hide) class T__struct_42_static_extension {

}
@:dox(hide) typedef T__struct_42 = stdgo._internal.math.big.Big_t__struct_42.T__struct_42;
@:dox(hide) typedef T__struct_43Pointer = stdgo._internal.math.big.Big_t__struct_43pointer.T__struct_43Pointer;
@:dox(hide) class T__struct_43_static_extension {

}
@:dox(hide) typedef T__struct_43 = stdgo._internal.math.big.Big_t__struct_43.T__struct_43;
@:dox(hide) typedef T__struct_44Pointer = stdgo._internal.math.big.Big_t__struct_44pointer.T__struct_44Pointer;
@:dox(hide) class T__struct_44_static_extension {

}
@:dox(hide) typedef T__struct_44 = stdgo._internal.math.big.Big_t__struct_44.T__struct_44;
@:dox(hide) typedef T__struct_45Pointer = stdgo._internal.math.big.Big_t__struct_45pointer.T__struct_45Pointer;
@:dox(hide) class T__struct_45_static_extension {

}
@:dox(hide) typedef T__struct_45 = stdgo._internal.math.big.Big_t__struct_45.T__struct_45;
@:dox(hide) typedef T__struct_46Pointer = stdgo._internal.math.big.Big_t__struct_46pointer.T__struct_46Pointer;
@:dox(hide) class T__struct_46_static_extension {

}
@:dox(hide) typedef T__struct_46 = stdgo._internal.math.big.Big_t__struct_46.T__struct_46;
@:dox(hide) typedef T__struct_47Pointer = stdgo._internal.math.big.Big_t__struct_47pointer.T__struct_47Pointer;
@:dox(hide) class T__struct_47_static_extension {

}
@:dox(hide) typedef T__struct_47 = stdgo._internal.math.big.Big_t__struct_47.T__struct_47;
@:dox(hide) typedef T__struct_48Pointer = stdgo._internal.math.big.Big_t__struct_48pointer.T__struct_48Pointer;
@:dox(hide) class T__struct_48_static_extension {

}
@:dox(hide) typedef T__struct_48 = stdgo._internal.math.big.Big_t__struct_48.T__struct_48;
@:dox(hide) typedef T__struct_49Pointer = stdgo._internal.math.big.Big_t__struct_49pointer.T__struct_49Pointer;
@:dox(hide) class T__struct_49_static_extension {

}
@:dox(hide) typedef T__struct_49 = stdgo._internal.math.big.Big_t__struct_49.T__struct_49;
@:dox(hide) typedef T__struct_50Pointer = stdgo._internal.math.big.Big_t__struct_50pointer.T__struct_50Pointer;
@:dox(hide) class T__struct_50_static_extension {

}
@:dox(hide) typedef T__struct_50 = stdgo._internal.math.big.Big_t__struct_50.T__struct_50;
@:dox(hide) typedef T__struct_51Pointer = stdgo._internal.math.big.Big_t__struct_51pointer.T__struct_51Pointer;
@:dox(hide) class T__struct_51_static_extension {

}
@:dox(hide) typedef T__struct_51 = stdgo._internal.math.big.Big_t__struct_51.T__struct_51;
@:dox(hide) typedef T__struct_52Pointer = stdgo._internal.math.big.Big_t__struct_52pointer.T__struct_52Pointer;
@:dox(hide) class T__struct_52_static_extension {

}
@:dox(hide) typedef T__struct_52 = stdgo._internal.math.big.Big_t__struct_52.T__struct_52;
@:dox(hide) typedef T__struct_53Pointer = stdgo._internal.math.big.Big_t__struct_53pointer.T__struct_53Pointer;
@:dox(hide) class T__struct_53_static_extension {

}
@:dox(hide) typedef T__struct_53 = stdgo._internal.math.big.Big_t__struct_53.T__struct_53;
@:dox(hide) typedef T__struct_54Pointer = stdgo._internal.math.big.Big_t__struct_54pointer.T__struct_54Pointer;
@:dox(hide) class T__struct_54_static_extension {

}
@:dox(hide) typedef T__struct_54 = stdgo._internal.math.big.Big_t__struct_54.T__struct_54;
@:dox(hide) typedef T__struct_55Pointer = stdgo._internal.math.big.Big_t__struct_55pointer.T__struct_55Pointer;
@:dox(hide) class T__struct_55_static_extension {

}
@:dox(hide) typedef T__struct_55 = stdgo._internal.math.big.Big_t__struct_55.T__struct_55;
@:dox(hide) typedef T__struct_56Pointer = stdgo._internal.math.big.Big_t__struct_56pointer.T__struct_56Pointer;
@:dox(hide) class T__struct_56_static_extension {

}
@:dox(hide) typedef T__struct_56 = stdgo._internal.math.big.Big_t__struct_56.T__struct_56;
@:dox(hide) typedef T__struct_57Pointer = stdgo._internal.math.big.Big_t__struct_57pointer.T__struct_57Pointer;
@:dox(hide) class T__struct_57_static_extension {
    public static function _unlockSlow(__self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.math.big.Big_t__struct_57_static_extension.T__struct_57_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void {
        stdgo._internal.math.big.Big_t__struct_57_static_extension.T__struct_57_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void {
        stdgo._internal.math.big.Big_t__struct_57_static_extension.T__struct_57_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Bool {
        return stdgo._internal.math.big.Big_t__struct_57_static_extension.T__struct_57_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.math.big.Big_t__struct_57.T__struct_57):Void {
        stdgo._internal.math.big.Big_t__struct_57_static_extension.T__struct_57_static_extension.lock(__self__);
    }
}
@:dox(hide) typedef T__struct_57 = stdgo._internal.math.big.Big_t__struct_57.T__struct_57;
@:dox(hide) typedef T__struct_58Pointer = stdgo._internal.math.big.Big_t__struct_58pointer.T__struct_58Pointer;
@:dox(hide) class T__struct_58_static_extension {

}
@:dox(hide) typedef T__struct_58 = stdgo._internal.math.big.Big_t__struct_58.T__struct_58;
@:dox(hide) typedef T__struct_59Pointer = stdgo._internal.math.big.Big_t__struct_59pointer.T__struct_59Pointer;
@:dox(hide) class T__struct_59_static_extension {

}
@:dox(hide) typedef T__struct_59 = stdgo._internal.math.big.Big_t__struct_59.T__struct_59;
@:dox(hide) typedef T__struct_60Pointer = stdgo._internal.math.big.Big_t__struct_60pointer.T__struct_60Pointer;
@:dox(hide) class T__struct_60_static_extension {

}
@:dox(hide) typedef T__struct_60 = stdgo._internal.math.big.Big_t__struct_60.T__struct_60;
@:dox(hide) typedef T__struct_61Pointer = stdgo._internal.math.big.Big_t__struct_61pointer.T__struct_61Pointer;
@:dox(hide) class T__struct_61_static_extension {

}
@:dox(hide) typedef T__struct_61 = stdgo._internal.math.big.Big_t__struct_61.T__struct_61;
@:dox(hide) typedef T__struct_62Pointer = stdgo._internal.math.big.Big_t__struct_62pointer.T__struct_62Pointer;
@:dox(hide) class T__struct_62_static_extension {

}
@:dox(hide) typedef T__struct_62 = stdgo._internal.math.big.Big_t__struct_62.T__struct_62;
@:dox(hide) typedef T__struct_63Pointer = stdgo._internal.math.big.Big_t__struct_63pointer.T__struct_63Pointer;
@:dox(hide) class T__struct_63_static_extension {

}
@:dox(hide) typedef T__struct_63 = stdgo._internal.math.big.Big_t__struct_63.T__struct_63;
@:dox(hide) typedef T__struct_64Pointer = stdgo._internal.math.big.Big_t__struct_64pointer.T__struct_64Pointer;
@:dox(hide) class T__struct_64_static_extension {

}
@:dox(hide) typedef T__struct_64 = stdgo._internal.math.big.Big_t__struct_64.T__struct_64;
@:dox(hide) typedef T__struct_65Pointer = stdgo._internal.math.big.Big_t__struct_65pointer.T__struct_65Pointer;
@:dox(hide) class T__struct_65_static_extension {

}
@:dox(hide) typedef T__struct_65 = stdgo._internal.math.big.Big_t__struct_65.T__struct_65;
@:dox(hide) typedef T__struct_66Pointer = stdgo._internal.math.big.Big_t__struct_66pointer.T__struct_66Pointer;
@:dox(hide) class T__struct_66_static_extension {

}
@:dox(hide) typedef T__struct_66 = stdgo._internal.math.big.Big_t__struct_66.T__struct_66;
@:dox(hide) typedef T__struct_67Pointer = stdgo._internal.math.big.Big_t__struct_67pointer.T__struct_67Pointer;
@:dox(hide) class T__struct_67_static_extension {
    public static function _doSlow(__self__:stdgo._internal.math.big.Big_t__struct_67.T__struct_67, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.math.big.Big_t__struct_67_static_extension.T__struct_67_static_extension._doSlow(__self__, _0);
    }
    public static function do_(__self__:stdgo._internal.math.big.Big_t__struct_67.T__struct_67, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.math.big.Big_t__struct_67_static_extension.T__struct_67_static_extension.do_(__self__, _0);
    }
}
@:dox(hide) typedef T__struct_67 = stdgo._internal.math.big.Big_t__struct_67.T__struct_67;
@:dox(hide) typedef T__struct_68Pointer = stdgo._internal.math.big.Big_t__struct_68pointer.T__struct_68Pointer;
@:dox(hide) class T__struct_68_static_extension {

}
@:dox(hide) typedef T__struct_68 = stdgo._internal.math.big.Big_t__struct_68.T__struct_68;
@:dox(hide) typedef T__struct_69Pointer = stdgo._internal.math.big.Big_t__struct_69pointer.T__struct_69Pointer;
@:dox(hide) class T__struct_69_static_extension {

}
@:dox(hide) typedef T__struct_69 = stdgo._internal.math.big.Big_t__struct_69.T__struct_69;
typedef Word = stdgo._internal.math.big.Big_word.Word;
@:dox(hide) typedef T_funVV = stdgo._internal.math.big.Big_t_funvv.T_funVV;
@:dox(hide) typedef T_funVW = stdgo._internal.math.big.Big_t_funvw.T_funVW;
@:dox(hide) typedef T_funVWW = stdgo._internal.math.big.Big_t_funvww.T_funVWW;
@:dox(hide) typedef T_funWVW = stdgo._internal.math.big.Big_t_funwvw.T_funWVW;
typedef Bits = stdgo._internal.math.big.Big_bits.Bits;
@:dox(hide) typedef T_form = stdgo._internal.math.big.Big_t_form.T_form;
typedef RoundingMode = stdgo._internal.math.big.Big_roundingmode.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big_accuracy.Accuracy;
@:dox(hide) typedef T_funZZ = stdgo._internal.math.big.Big_t_funzz.T_funZZ;
@:dox(hide) typedef T_bitFun = stdgo._internal.math.big.Big_t_bitfun.T_bitFun;
@:dox(hide) typedef T_nat = stdgo._internal.math.big.Big_t_nat.T_nat;
@:dox(hide) typedef T_funNN = stdgo._internal.math.big.Big_t_funnn.T_funNN;
@:dox(hide) typedef T_ratBinFun = stdgo._internal.math.big.Big_t_ratbinfun.T_ratBinFun;
@:dox(hide) typedef T_argVVPointer = stdgo._internal.math.big.Big_t_argvvpointer.T_argVVPointer;
@:dox(hide) class T_argVV_static_extension {

}
@:dox(hide) typedef T_argVWPointer = stdgo._internal.math.big.Big_t_argvwpointer.T_argVWPointer;
@:dox(hide) class T_argVW_static_extension {

}
@:dox(hide) typedef T_argVUPointer = stdgo._internal.math.big.Big_t_argvupointer.T_argVUPointer;
@:dox(hide) class T_argVU_static_extension {

}
@:dox(hide) typedef T_argVWWPointer = stdgo._internal.math.big.Big_t_argvwwpointer.T_argVWWPointer;
@:dox(hide) class T_argVWW_static_extension {

}
@:dox(hide) typedef T_argWVWPointer = stdgo._internal.math.big.Big_t_argwvwpointer.T_argWVWPointer;
@:dox(hide) class T_argWVW_static_extension {

}
@:dox(hide) typedef T_decimalPointer = stdgo._internal.math.big.Big_t_decimalpointer.T_decimalPointer;
@:dox(hide) class T_decimal_static_extension {
    static public function _roundDown(_x:T_decimal, _n:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension._roundDown(_x, _n);
    }
    static public function _roundUp(_x:T_decimal, _n:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension._roundUp(_x, _n);
    }
    static public function _round(_x:T_decimal, _n:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension._round(_x, _n);
    }
    static public function string(_x:T_decimal):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        return stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension.string(_x);
    }
    static public function _init(_x:T_decimal, _m:T_nat, _shift:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        final _shift = (_shift : stdgo.GoInt);
        stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension._init(_x, _m, _shift);
    }
    static public function _at(_d:T_decimal, _i:StdTypes.Int):std.UInt {
        final _d = (_d : stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_decimal_static_extension.T_decimal_static_extension._at(_d, _i);
    }
}
typedef Float_Pointer = stdgo._internal.math.big.Big_float_pointer.Float_Pointer;
class Float__static_extension {
    static public function _sqrtInverse(_z:Float_, _x:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._sqrtInverse(_z, _x);
    }
    static public function sqrt(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sqrt(_z, _x);
    }
    static public function format(_x:Float_, _s:stdgo._internal.fmt.Fmt_state.State, _format:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _format = (_format : stdgo.GoInt32);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.format(_x, _s, _format);
    }
    static public function _fmtP(_x:Float_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._fmtP(_x, _buf)) i];
    }
    static public function _fmtX(_x:Float_, _buf:Array<std.UInt>, _prec:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prec = (_prec : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._fmtX(_x, _buf, _prec)) i];
    }
    static public function _fmtB(_x:Float_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._fmtB(_x, _buf)) i];
    }
    static public function append(_x:Float_, _buf:Array<std.UInt>, _fmt:std.UInt, _prec:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _fmt = (_fmt : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.append(_x, _buf, _fmt, _prec)) i];
    }
    static public function string(_x:Float_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.string(_x);
    }
    static public function text(_x:Float_, _format:std.UInt, _prec:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _format = (_format : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.text(_x, _format, _prec);
    }
    static public function unmarshalText(_z:Float_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Float_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Float_, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Float_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Float_, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.scan(_z, _s, _ch);
    }
    static public function parse(_z:Float_, _s:String, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.parse(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pow5(_z:Float_, _n:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _n = (_n : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._pow5(_z, _n);
    }
    static public function _scan(_z:Float_, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function setString(_z:Float_, _s:String):stdgo.Tuple<Float_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _int64(_x:Float_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._int64(_x);
    }
    static public function _uint64(_x:Float_):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._uint64(_x);
    }
    static public function _ord(_x:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._ord(_x);
    }
    static public function cmp(_x:Float_, _y:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.cmp(_x, _y);
    }
    static public function quo(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Float_, _x:Float_, _y:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add(_z, _x, _y);
    }
    static public function _ucmp(_x:Float_, _y:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._ucmp(_x, _y);
    }
    static public function _uquo(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._uquo(_z, _x, _y);
    }
    static public function _umul(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._umul(_z, _x, _y);
    }
    static public function _usub(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._usub(_z, _x, _y);
    }
    static public function _uadd(_z:Float_, _x:Float_, _y:Float_):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._uadd(_z, _x, _y);
    }
    static public function neg(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.abs(_z, _x);
    }
    static public function rat(_x:Float_, _z:Rat):stdgo.Tuple<Rat, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.rat(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int_(_x:Float_, _z:Int_):stdgo.Tuple<Int_, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.int_(_x, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Float_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function int64(_x:Float_):stdgo.Tuple<haxe.Int64, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.int64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function uint64(_x:Float_):stdgo.Tuple<haxe.UInt64, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return {
            final obj = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.uint64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function copy(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.copy(_z, _x);
    }
    static public function set(_z:Float_, _x:Float_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.set(_z, _x);
    }
    static public function setInf(_z:Float_, _signbit:Bool):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setInf(_z, _signbit);
    }
    static public function setRat(_z:Float_, _x:Rat):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setRat(_z, _x);
    }
    static public function setInt(_z:Float_, _x:Int_):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setInt(_z, _x);
    }
    static public function setFloat64(_z:Float_, _x:StdTypes.Float):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setFloat64(_z, _x);
    }
    static public function setInt64(_z:Float_, _x:haxe.Int64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setInt64(_z, _x);
    }
    static public function setUint64(_z:Float_, _x:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setUint64(_z, _x);
    }
    static public function _setBits64(_z:Float_, _neg:Bool, _x:haxe.UInt64):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._setBits64(_z, _neg, _x);
    }
    static public function _round(_z:Float_, _sbit:std.UInt):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _sbit = (_sbit : stdgo.GoUInt);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._round(_z, _sbit);
    }
    static public function _validate0(_x:Float_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._validate0(_x);
    }
    static public function _validate(_x:Float_):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._validate(_x);
    }
    static public function isInt(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.isInt(_x);
    }
    static public function isInf(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.isInf(_x);
    }
    static public function signbit(_x:Float_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.signbit(_x);
    }
    static public function setMantExp(_z:Float_, _mant:Float_, _exp:StdTypes.Int):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _mant = (_mant : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _exp = (_exp : stdgo.GoInt);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setMantExp(_z, _mant, _exp);
    }
    static public function _setExpAndRound(_z:Float_, _exp:haxe.Int64, _sbit:std.UInt):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _exp = (_exp : stdgo.GoInt64);
        final _sbit = (_sbit : stdgo.GoUInt);
        stdgo._internal.math.big.Big_float__static_extension.Float__static_extension._setExpAndRound(_z, _exp, _sbit);
    }
    static public function mantExp(_x:Float_, _mant:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _mant = (_mant : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mantExp(_x, _mant);
    }
    static public function sign(_x:Float_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sign(_x);
    }
    static public function acc(_x:Float_):Accuracy {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.acc(_x);
    }
    static public function mode(_x:Float_):RoundingMode {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mode(_x);
    }
    static public function minPrec(_x:Float_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.minPrec(_x);
    }
    static public function prec(_x:Float_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.prec(_x);
    }
    static public function setMode(_z:Float_, _mode:RoundingMode):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setMode(_z, _mode);
    }
    static public function setPrec(_z:Float_, _prec:std.UInt):Float_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        final _prec = (_prec : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.setPrec(_z, _prec);
    }
}
typedef ErrNaNPointer = stdgo._internal.math.big.Big_errnanpointer.ErrNaNPointer;
class ErrNaN_static_extension {
    static public function error(_err:ErrNaN):String {
        return stdgo._internal.math.big.Big_errnan_static_extension.ErrNaN_static_extension.error(_err);
    }
}
@:dox(hide) typedef T_matrixPointer = stdgo._internal.math.big.Big_t_matrixpointer.T_matrixPointer;
@:dox(hide) class T_matrix_static_extension {
    static public function string(_a:T_matrix):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension.string(_a);
    }
    static public function _eql(_a:T_matrix, _b:T_matrix):Bool {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension._eql(_a, _b);
    }
    static public function _mul(_a:T_matrix, _b:T_matrix):T_matrix {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension._mul(_a, _b);
    }
    static public function _set(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int, _x:Rat):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension._set(_a, _i, _j, _x);
    }
    static public function _at(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int):Rat {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_matrix_static_extension.T_matrix_static_extension._at(_a, _i, _j);
    }
}
typedef Int_Pointer = stdgo._internal.math.big.Big_int_pointer.Int_Pointer;
class Int__static_extension {
    static public function _scaleDenom(_z:Int_, _x:Int_, _f:T_nat):Void {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._scaleDenom(_z, _x, _f);
    }
    static public function probablyPrime(_x:Int_, _n:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.probablyPrime(_x, _n);
    }
    static public function unmarshalJSON(_z:Int_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.unmarshalJSON(_z, _text);
    }
    static public function marshalJSON(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.marshalJSON(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalText(_z:Int_, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Int_, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Int_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function scan(_z:Int_, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.scan(_z, _s, _ch);
    }
    static public function _scan(_z:Int_, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple.Tuple3<Int_, StdTypes.Int, stdgo.Error> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._scan(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function format(_x:Int_, _s:stdgo._internal.fmt.Fmt_state.State, _ch:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _ch = (_ch : stdgo.GoInt32);
        stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.format(_x, _s, _ch);
    }
    static public function string(_x:Int_):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.string(_x);
    }
    static public function append(_x:Int_, _buf:Array<std.UInt>, _base:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.append(_x, _buf, _base)) i];
    }
    static public function text(_x:Int_, _base:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.text(_x, _base);
    }
    static public function sqrt(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.sqrt(_z, _x);
    }
    static public function not(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.not(_z, _x);
    }
    static public function xor(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.xor(_z, _x, _y);
    }
    static public function or(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.or(_z, _x, _y);
    }
    static public function andNot(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.andNot(_z, _x, _y);
    }
    static public function and(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.and(_z, _x, _y);
    }
    static public function setBit(_z:Int_, _x:Int_, _i:StdTypes.Int, _b:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _i = (_i : stdgo.GoInt);
        final _b = (_b : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setBit(_z, _x, _i, _b);
    }
    static public function bit(_x:Int_, _i:StdTypes.Int):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.bit(_x, _i);
    }
    static public function rsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.rsh(_z, _x, _n);
    }
    static public function lsh(_z:Int_, _x:Int_, _n:std.UInt):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.lsh(_z, _x, _n);
    }
    static public function modSqrt(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.modSqrt(_z, _x, _p);
    }
    static public function _modSqrtTonelliShanks(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._modSqrtTonelliShanks(_z, _x, _p);
    }
    static public function _modSqrt5Mod8Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._modSqrt5Mod8Prime(_z, _x, _p);
    }
    static public function _modSqrt3Mod4Prime(_z:Int_, _x:Int_, _p:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _p = (_p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._modSqrt3Mod4Prime(_z, _x, _p);
    }
    static public function modInverse(_z:Int_, _g:Int_, _n:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _g = (_g : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.modInverse(_z, _g, _n);
    }
    static public function rand(_z:Int_, _rnd:stdgo._internal.math.rand.Rand_rand.Rand, _n:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _rnd = (_rnd : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.rand(_z, _rnd, _n);
    }
    static public function _lehmerGCD(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._lehmerGCD(_z, _x, _y, _a, _b);
    }
    static public function gCD(_z:Int_, _x:Int_, _y:Int_, _a:Int_, _b:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.gCD(_z, _x, _y, _a, _b);
    }
    static public function _exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_, _slow:Bool):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._exp(_z, _x, _y, _m, _slow);
    }
    static public function _expSlow(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._expSlow(_z, _x, _y, _m);
    }
    static public function exp(_z:Int_, _x:Int_, _y:Int_, _m:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.exp(_z, _x, _y, _m);
    }
    static public function trailingZeroBits(_x:Int_):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.trailingZeroBits(_x);
    }
    static public function bitLen(_x:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.bitLen(_x);
    }
    static public function fillBytes(_x:Int_, _buf:Array<std.UInt>):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.fillBytes(_x, _buf)) i];
    }
    static public function bytes(_x:Int_):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return [for (i in stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.bytes(_x)) i];
    }
    static public function setBytes(_z:Int_, _buf:Array<std.UInt>):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setBytes(_z, _buf);
    }
    static public function _setFromScanner(_z:Int_, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension._setFromScanner(_z, _r, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setString(_z:Int_, _s:String, _base:StdTypes.Int):stdgo.Tuple<Int_, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setString(_z, _s, _base);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_x:Int_):stdgo.Tuple<StdTypes.Float, Accuracy> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isUint64(_x:Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.isUint64(_x);
    }
    static public function isInt64(_x:Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.isInt64(_x);
    }
    static public function uint64(_x:Int_):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.uint64(_x);
    }
    static public function int64(_x:Int_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.int64(_x);
    }
    static public function cmpAbs(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.cmpAbs(_x, _y);
    }
    static public function cmp(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.cmp(_x, _y);
    }
    static public function divMod(_z:Int_, _x:Int_, _y:Int_, _m:Int_):stdgo.Tuple<Int_, Int_> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _m = (_m : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.divMod(_z, _x, _y, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mod(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.mod(_z, _x, _y);
    }
    static public function div(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.div(_z, _x, _y);
    }
    static public function quoRem(_z:Int_, _x:Int_, _y:Int_, _r:Int_):stdgo.Tuple<Int_, Int_> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _r = (_r : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return {
            final obj = stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.quoRem(_z, _x, _y, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rem(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.rem(_z, _x, _y);
    }
    static public function quo(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.quo(_z, _x, _y);
    }
    static public function binomial(_z:Int_, _n:haxe.Int64, _k:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _n = (_n : stdgo.GoInt64);
        final _k = (_k : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.binomial(_z, _n, _k);
    }
    static public function mulRange(_z:Int_, _a:haxe.Int64, _b:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.mulRange(_z, _a, _b);
    }
    static public function mul(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Int_, _x:Int_, _y:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.add(_z, _x, _y);
    }
    static public function neg(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.neg(_z, _x);
    }
    static public function abs(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.abs(_z, _x);
    }
    static public function setBits(_z:Int_, _abs:Array<Word>):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _abs = ([for (i in _abs) i] : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setBits(_z, _abs);
    }
    static public function bits(_x:Int_):Array<Word> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return [for (i in stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.bits(_x)) i];
    }
    static public function set(_z:Int_, _x:Int_):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Int_, _x:haxe.UInt64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Int_, _x:haxe.Int64):Int_ {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.setInt64(_z, _x);
    }
    static public function sign(_x:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.sign(_x);
    }
}
@:dox(hide) typedef T_argZZPointer = stdgo._internal.math.big.Big_t_argzzpointer.T_argZZPointer;
@:dox(hide) class T_argZZ_static_extension {

}
@:dox(hide) typedef T_intShiftTestPointer = stdgo._internal.math.big.Big_t_intshifttestpointer.T_intShiftTestPointer;
@:dox(hide) class T_intShiftTest_static_extension {

}
@:dox(hide) typedef T_byteReaderPointer = stdgo._internal.math.big.Big_t_bytereaderpointer.T_byteReaderPointer;
@:dox(hide) class T_byteReader_static_extension {
    static public function unreadByte(_r:T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:T_byteReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function width(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.width(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):stdgo.Error {
        return stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.unreadRune(__self__);
    }
    public static function token(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader, _0:Bool, _1:StdTypes.Int -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _1 = _1;
        return {
            final obj = stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.token(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function skipSpace(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):Void {
        stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.skipSpace(__self__);
    }
    public static function readRune(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function read(__self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_argNNPointer = stdgo._internal.math.big.Big_t_argnnpointer.T_argNNPointer;
@:dox(hide) class T_argNN_static_extension {

}
@:dox(hide) typedef T_shiftTestPointer = stdgo._internal.math.big.Big_t_shifttestpointer.T_shiftTestPointer;
@:dox(hide) class T_shiftTest_static_extension {

}
@:dox(hide) typedef T_modWTestPointer = stdgo._internal.math.big.Big_t_modwtestpointer.T_modWTestPointer;
@:dox(hide) class T_modWTest_static_extension {

}
@:dox(hide) typedef T_divisorPointer = stdgo._internal.math.big.Big_t_divisorpointer.T_divisorPointer;
@:dox(hide) class T_divisor_static_extension {

}
typedef RatPointer = stdgo._internal.math.big.Big_ratpointer.RatPointer;
class Rat_static_extension {
    static public function unmarshalText(_z:Rat, _text:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.unmarshalText(_z, _text);
    }
    static public function marshalText(_x:Rat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.marshalText(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function gobDecode(_z:Rat, _buf:Array<std.UInt>):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.gobDecode(_z, _buf);
    }
    static public function gobEncode(_x:Rat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.gobEncode(_x);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function floatString(_x:Rat, _prec:StdTypes.Int):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _prec = (_prec : stdgo.GoInt);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.floatString(_x, _prec);
    }
    static public function ratString(_x:Rat):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.ratString(_x);
    }
    static public function _marshal(_x:Rat):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return [for (i in stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension._marshal(_x)) i];
    }
    static public function string(_x:Rat):String {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.string(_x);
    }
    static public function setString(_z:Rat, _s:String):stdgo.Tuple<Rat, Bool> {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setString(_z, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_z:Rat, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:StdTypes.Int):stdgo.Error {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.scan(_z, _s, _ch);
    }
    static public function quo(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.quo(_z, _x, _y);
    }
    static public function mul(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.mul(_z, _x, _y);
    }
    static public function sub(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.sub(_z, _x, _y);
    }
    static public function add(_z:Rat, _x:Rat, _y:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.add(_z, _x, _y);
    }
    static public function cmp(_x:Rat, _y:Rat):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.cmp(_x, _y);
    }
    static public function _norm(_z:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension._norm(_z);
    }
    static public function denom(_x:Rat):Int_ {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.denom(_x);
    }
    static public function num(_x:Rat):Int_ {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.num(_x);
    }
    static public function isInt(_x:Rat):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.isInt(_x);
    }
    static public function sign(_x:Rat):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.sign(_x);
    }
    static public function inv(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.inv(_z, _x);
    }
    static public function neg(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.neg(_z, _x);
    }
    static public function abs(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.abs(_z, _x);
    }
    static public function set(_z:Rat, _x:Rat):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.set(_z, _x);
    }
    static public function setUint64(_z:Rat, _x:haxe.UInt64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setUint64(_z, _x);
    }
    static public function setInt64(_z:Rat, _x:haxe.Int64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setInt64(_z, _x);
    }
    static public function setInt(_z:Rat, _x:Int_):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setInt(_z, _x);
    }
    static public function setFrac64(_z:Rat, _a:haxe.Int64, _b:haxe.Int64):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setFrac64(_z, _a, _b);
    }
    static public function setFrac(_z:Rat, _a:Int_, _b:Int_):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setFrac(_z, _a, _b);
    }
    static public function float64(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.float64(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float32(_x:Rat):stdgo.Tuple<StdTypes.Float, Bool> {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        return {
            final obj = stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.float32(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setFloat64(_z:Rat, _f:StdTypes.Float):Rat {
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        final _f = (_f : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.setFloat64(_z, _f);
    }
}
@:dox(hide) typedef T_ratBinArgPointer = stdgo._internal.math.big.Big_t_ratbinargpointer.T_ratBinArgPointer;
@:dox(hide) class T_ratBinArg_static_extension {

}
typedef StringTestPointer = stdgo._internal.math.big.Big_stringtestpointer.StringTestPointer;
class StringTest_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.math.big.Big_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.math.big.Big_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.math.big.Big_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.math.big.Big_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.math.big.Big_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.math.big.Big_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.math.big.Big_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.math.big.Big_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T__struct_8PointerPointer = stdgo._internal.math.big.Big_t__struct_8pointerpointer.T__struct_8PointerPointer;
@:dox(hide) class T__struct_8Pointer_static_extension {

}
@:dox(hide) typedef T__struct_9PointerPointer = stdgo._internal.math.big.Big_t__struct_9pointerpointer.T__struct_9PointerPointer;
@:dox(hide) class T__struct_9Pointer_static_extension {

}
@:dox(hide) typedef T__struct_10PointerPointer = stdgo._internal.math.big.Big_t__struct_10pointerpointer.T__struct_10PointerPointer;
@:dox(hide) class T__struct_10Pointer_static_extension {

}
@:dox(hide) typedef T__struct_11PointerPointer = stdgo._internal.math.big.Big_t__struct_11pointerpointer.T__struct_11PointerPointer;
@:dox(hide) class T__struct_11Pointer_static_extension {

}
@:dox(hide) typedef T__struct_12PointerPointer = stdgo._internal.math.big.Big_t__struct_12pointerpointer.T__struct_12PointerPointer;
@:dox(hide) class T__struct_12Pointer_static_extension {

}
@:dox(hide) typedef T__struct_13PointerPointer = stdgo._internal.math.big.Big_t__struct_13pointerpointer.T__struct_13PointerPointer;
@:dox(hide) class T__struct_13Pointer_static_extension {

}
@:dox(hide) typedef T__struct_14PointerPointer = stdgo._internal.math.big.Big_t__struct_14pointerpointer.T__struct_14PointerPointer;
@:dox(hide) class T__struct_14Pointer_static_extension {

}
@:dox(hide) typedef T__struct_15PointerPointer = stdgo._internal.math.big.Big_t__struct_15pointerpointer.T__struct_15PointerPointer;
@:dox(hide) class T__struct_15Pointer_static_extension {

}
@:dox(hide) typedef T__struct_16PointerPointer = stdgo._internal.math.big.Big_t__struct_16pointerpointer.T__struct_16PointerPointer;
@:dox(hide) class T__struct_16Pointer_static_extension {

}
@:dox(hide) typedef T__struct_17PointerPointer = stdgo._internal.math.big.Big_t__struct_17pointerpointer.T__struct_17PointerPointer;
@:dox(hide) class T__struct_17Pointer_static_extension {

}
@:dox(hide) typedef T__struct_18PointerPointer = stdgo._internal.math.big.Big_t__struct_18pointerpointer.T__struct_18PointerPointer;
@:dox(hide) class T__struct_18Pointer_static_extension {

}
@:dox(hide) typedef T__struct_19PointerPointer = stdgo._internal.math.big.Big_t__struct_19pointerpointer.T__struct_19PointerPointer;
@:dox(hide) class T__struct_19Pointer_static_extension {

}
@:dox(hide) typedef T__struct_20PointerPointer = stdgo._internal.math.big.Big_t__struct_20pointerpointer.T__struct_20PointerPointer;
@:dox(hide) class T__struct_20Pointer_static_extension {

}
@:dox(hide) typedef T__struct_21PointerPointer = stdgo._internal.math.big.Big_t__struct_21pointerpointer.T__struct_21PointerPointer;
@:dox(hide) class T__struct_21Pointer_static_extension {

}
@:dox(hide) typedef T__struct_22PointerPointer = stdgo._internal.math.big.Big_t__struct_22pointerpointer.T__struct_22PointerPointer;
@:dox(hide) class T__struct_22Pointer_static_extension {

}
@:dox(hide) typedef T__struct_23PointerPointer = stdgo._internal.math.big.Big_t__struct_23pointerpointer.T__struct_23PointerPointer;
@:dox(hide) class T__struct_23Pointer_static_extension {

}
@:dox(hide) typedef T__struct_24PointerPointer = stdgo._internal.math.big.Big_t__struct_24pointerpointer.T__struct_24PointerPointer;
@:dox(hide) class T__struct_24Pointer_static_extension {

}
@:dox(hide) typedef T__struct_25PointerPointer = stdgo._internal.math.big.Big_t__struct_25pointerpointer.T__struct_25PointerPointer;
@:dox(hide) class T__struct_25Pointer_static_extension {

}
@:dox(hide) typedef T__struct_26PointerPointer = stdgo._internal.math.big.Big_t__struct_26pointerpointer.T__struct_26PointerPointer;
@:dox(hide) class T__struct_26Pointer_static_extension {

}
@:dox(hide) typedef T__struct_27PointerPointer = stdgo._internal.math.big.Big_t__struct_27pointerpointer.T__struct_27PointerPointer;
@:dox(hide) class T__struct_27Pointer_static_extension {

}
@:dox(hide) typedef T__struct_28PointerPointer = stdgo._internal.math.big.Big_t__struct_28pointerpointer.T__struct_28PointerPointer;
@:dox(hide) class T__struct_28Pointer_static_extension {

}
@:dox(hide) typedef T__struct_29PointerPointer = stdgo._internal.math.big.Big_t__struct_29pointerpointer.T__struct_29PointerPointer;
@:dox(hide) class T__struct_29Pointer_static_extension {

}
@:dox(hide) typedef T__struct_30PointerPointer = stdgo._internal.math.big.Big_t__struct_30pointerpointer.T__struct_30PointerPointer;
@:dox(hide) class T__struct_30Pointer_static_extension {

}
@:dox(hide) typedef T__struct_31PointerPointer = stdgo._internal.math.big.Big_t__struct_31pointerpointer.T__struct_31PointerPointer;
@:dox(hide) class T__struct_31Pointer_static_extension {

}
@:dox(hide) typedef T__struct_32PointerPointer = stdgo._internal.math.big.Big_t__struct_32pointerpointer.T__struct_32PointerPointer;
@:dox(hide) class T__struct_32Pointer_static_extension {

}
@:dox(hide) typedef T__struct_33PointerPointer = stdgo._internal.math.big.Big_t__struct_33pointerpointer.T__struct_33PointerPointer;
@:dox(hide) class T__struct_33Pointer_static_extension {

}
@:dox(hide) typedef T__struct_34PointerPointer = stdgo._internal.math.big.Big_t__struct_34pointerpointer.T__struct_34PointerPointer;
@:dox(hide) class T__struct_34Pointer_static_extension {

}
@:dox(hide) typedef T__struct_35PointerPointer = stdgo._internal.math.big.Big_t__struct_35pointerpointer.T__struct_35PointerPointer;
@:dox(hide) class T__struct_35Pointer_static_extension {

}
@:dox(hide) typedef T__struct_36PointerPointer = stdgo._internal.math.big.Big_t__struct_36pointerpointer.T__struct_36PointerPointer;
@:dox(hide) class T__struct_36Pointer_static_extension {

}
@:dox(hide) typedef T__struct_37PointerPointer = stdgo._internal.math.big.Big_t__struct_37pointerpointer.T__struct_37PointerPointer;
@:dox(hide) class T__struct_37Pointer_static_extension {

}
@:dox(hide) typedef T__struct_38PointerPointer = stdgo._internal.math.big.Big_t__struct_38pointerpointer.T__struct_38PointerPointer;
@:dox(hide) class T__struct_38Pointer_static_extension {

}
@:dox(hide) typedef T__struct_39PointerPointer = stdgo._internal.math.big.Big_t__struct_39pointerpointer.T__struct_39PointerPointer;
@:dox(hide) class T__struct_39Pointer_static_extension {

}
@:dox(hide) typedef T__struct_40PointerPointer = stdgo._internal.math.big.Big_t__struct_40pointerpointer.T__struct_40PointerPointer;
@:dox(hide) class T__struct_40Pointer_static_extension {

}
@:dox(hide) typedef T__struct_41PointerPointer = stdgo._internal.math.big.Big_t__struct_41pointerpointer.T__struct_41PointerPointer;
@:dox(hide) class T__struct_41Pointer_static_extension {

}
@:dox(hide) typedef T__struct_42PointerPointer = stdgo._internal.math.big.Big_t__struct_42pointerpointer.T__struct_42PointerPointer;
@:dox(hide) class T__struct_42Pointer_static_extension {

}
@:dox(hide) typedef T__struct_43PointerPointer = stdgo._internal.math.big.Big_t__struct_43pointerpointer.T__struct_43PointerPointer;
@:dox(hide) class T__struct_43Pointer_static_extension {

}
@:dox(hide) typedef T__struct_44PointerPointer = stdgo._internal.math.big.Big_t__struct_44pointerpointer.T__struct_44PointerPointer;
@:dox(hide) class T__struct_44Pointer_static_extension {

}
@:dox(hide) typedef T__struct_45PointerPointer = stdgo._internal.math.big.Big_t__struct_45pointerpointer.T__struct_45PointerPointer;
@:dox(hide) class T__struct_45Pointer_static_extension {

}
@:dox(hide) typedef T__struct_46PointerPointer = stdgo._internal.math.big.Big_t__struct_46pointerpointer.T__struct_46PointerPointer;
@:dox(hide) class T__struct_46Pointer_static_extension {

}
@:dox(hide) typedef T__struct_47PointerPointer = stdgo._internal.math.big.Big_t__struct_47pointerpointer.T__struct_47PointerPointer;
@:dox(hide) class T__struct_47Pointer_static_extension {

}
@:dox(hide) typedef T__struct_48PointerPointer = stdgo._internal.math.big.Big_t__struct_48pointerpointer.T__struct_48PointerPointer;
@:dox(hide) class T__struct_48Pointer_static_extension {

}
@:dox(hide) typedef T__struct_49PointerPointer = stdgo._internal.math.big.Big_t__struct_49pointerpointer.T__struct_49PointerPointer;
@:dox(hide) class T__struct_49Pointer_static_extension {

}
@:dox(hide) typedef T__struct_50PointerPointer = stdgo._internal.math.big.Big_t__struct_50pointerpointer.T__struct_50PointerPointer;
@:dox(hide) class T__struct_50Pointer_static_extension {

}
@:dox(hide) typedef T__struct_51PointerPointer = stdgo._internal.math.big.Big_t__struct_51pointerpointer.T__struct_51PointerPointer;
@:dox(hide) class T__struct_51Pointer_static_extension {

}
@:dox(hide) typedef T__struct_52PointerPointer = stdgo._internal.math.big.Big_t__struct_52pointerpointer.T__struct_52PointerPointer;
@:dox(hide) class T__struct_52Pointer_static_extension {

}
@:dox(hide) typedef T__struct_53PointerPointer = stdgo._internal.math.big.Big_t__struct_53pointerpointer.T__struct_53PointerPointer;
@:dox(hide) class T__struct_53Pointer_static_extension {

}
@:dox(hide) typedef T__struct_54PointerPointer = stdgo._internal.math.big.Big_t__struct_54pointerpointer.T__struct_54PointerPointer;
@:dox(hide) class T__struct_54Pointer_static_extension {

}
@:dox(hide) typedef T__struct_55PointerPointer = stdgo._internal.math.big.Big_t__struct_55pointerpointer.T__struct_55PointerPointer;
@:dox(hide) class T__struct_55Pointer_static_extension {

}
@:dox(hide) typedef T__struct_56PointerPointer = stdgo._internal.math.big.Big_t__struct_56pointerpointer.T__struct_56PointerPointer;
@:dox(hide) class T__struct_56Pointer_static_extension {

}
@:dox(hide) typedef T__struct_57PointerPointer = stdgo._internal.math.big.Big_t__struct_57pointerpointer.T__struct_57PointerPointer;
@:dox(hide) class T__struct_57Pointer_static_extension {

}
@:dox(hide) typedef T__struct_58PointerPointer = stdgo._internal.math.big.Big_t__struct_58pointerpointer.T__struct_58PointerPointer;
@:dox(hide) class T__struct_58Pointer_static_extension {

}
@:dox(hide) typedef T__struct_59PointerPointer = stdgo._internal.math.big.Big_t__struct_59pointerpointer.T__struct_59PointerPointer;
@:dox(hide) class T__struct_59Pointer_static_extension {

}
@:dox(hide) typedef T__struct_60PointerPointer = stdgo._internal.math.big.Big_t__struct_60pointerpointer.T__struct_60PointerPointer;
@:dox(hide) class T__struct_60Pointer_static_extension {

}
@:dox(hide) typedef T__struct_61PointerPointer = stdgo._internal.math.big.Big_t__struct_61pointerpointer.T__struct_61PointerPointer;
@:dox(hide) class T__struct_61Pointer_static_extension {

}
@:dox(hide) typedef T__struct_62PointerPointer = stdgo._internal.math.big.Big_t__struct_62pointerpointer.T__struct_62PointerPointer;
@:dox(hide) class T__struct_62Pointer_static_extension {

}
@:dox(hide) typedef T__struct_63PointerPointer = stdgo._internal.math.big.Big_t__struct_63pointerpointer.T__struct_63PointerPointer;
@:dox(hide) class T__struct_63Pointer_static_extension {

}
@:dox(hide) typedef T__struct_64PointerPointer = stdgo._internal.math.big.Big_t__struct_64pointerpointer.T__struct_64PointerPointer;
@:dox(hide) class T__struct_64Pointer_static_extension {

}
@:dox(hide) typedef T__struct_65PointerPointer = stdgo._internal.math.big.Big_t__struct_65pointerpointer.T__struct_65PointerPointer;
@:dox(hide) class T__struct_65Pointer_static_extension {

}
@:dox(hide) typedef T__struct_66PointerPointer = stdgo._internal.math.big.Big_t__struct_66pointerpointer.T__struct_66PointerPointer;
@:dox(hide) class T__struct_66Pointer_static_extension {

}
@:dox(hide) typedef T__struct_67PointerPointer = stdgo._internal.math.big.Big_t__struct_67pointerpointer.T__struct_67PointerPointer;
@:dox(hide) class T__struct_67Pointer_static_extension {

}
@:dox(hide) typedef T__struct_68PointerPointer = stdgo._internal.math.big.Big_t__struct_68pointerpointer.T__struct_68PointerPointer;
@:dox(hide) class T__struct_68Pointer_static_extension {

}
@:dox(hide) typedef T__struct_69PointerPointer = stdgo._internal.math.big.Big_t__struct_69pointerpointer.T__struct_69PointerPointer;
@:dox(hide) class T__struct_69Pointer_static_extension {

}
typedef WordPointer = stdgo._internal.math.big.Big_wordpointer.WordPointer;
class Word_static_extension {

}
@:dox(hide) typedef T_funVVPointer = stdgo._internal.math.big.Big_t_funvvpointer.T_funVVPointer;
@:dox(hide) class T_funVV_static_extension {

}
@:dox(hide) typedef T_funVWPointer = stdgo._internal.math.big.Big_t_funvwpointer.T_funVWPointer;
@:dox(hide) class T_funVW_static_extension {

}
@:dox(hide) typedef T_funVWWPointer = stdgo._internal.math.big.Big_t_funvwwpointer.T_funVWWPointer;
@:dox(hide) class T_funVWW_static_extension {

}
@:dox(hide) typedef T_funWVWPointer = stdgo._internal.math.big.Big_t_funwvwpointer.T_funWVWPointer;
@:dox(hide) class T_funWVW_static_extension {

}
typedef BitsPointer = stdgo._internal.math.big.Big_bitspointer.BitsPointer;
class Bits_static_extension {
    static public function float_(_bits:Bits):Float_ {
        return stdgo._internal.math.big.Big_bits_static_extension.Bits_static_extension.float_(_bits);
    }
    static public function _round(_x:Bits, _prec:std.UInt, _mode:RoundingMode):Float_ {
        final _prec = (_prec : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_bits_static_extension.Bits_static_extension._round(_x, _prec, _mode);
    }
    static public function _norm(_x:Bits):Bits {
        return stdgo._internal.math.big.Big_bits_static_extension.Bits_static_extension._norm(_x);
    }
    static public function _mul(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big_bits_static_extension.Bits_static_extension._mul(_x, _y);
    }
    static public function _add(_x:Bits, _y:Bits):Bits {
        return stdgo._internal.math.big.Big_bits_static_extension.Bits_static_extension._add(_x, _y);
    }
}
@:dox(hide) typedef T_formPointer = stdgo._internal.math.big.Big_t_formpointer.T_formPointer;
@:dox(hide) class T_form_static_extension {

}
typedef RoundingModePointer = stdgo._internal.math.big.Big_roundingmodepointer.RoundingModePointer;
class RoundingMode_static_extension {
    static public function string(_i:RoundingMode):String {
        return stdgo._internal.math.big.Big_roundingmode_static_extension.RoundingMode_static_extension.string(_i);
    }
}
typedef AccuracyPointer = stdgo._internal.math.big.Big_accuracypointer.AccuracyPointer;
class Accuracy_static_extension {
    static public function string(_i:Accuracy):String {
        return stdgo._internal.math.big.Big_accuracy_static_extension.Accuracy_static_extension.string(_i);
    }
}
@:dox(hide) typedef T_funZZPointer = stdgo._internal.math.big.Big_t_funzzpointer.T_funZZPointer;
@:dox(hide) class T_funZZ_static_extension {

}
@:dox(hide) typedef T_bitFunPointer = stdgo._internal.math.big.Big_t_bitfunpointer.T_bitFunPointer;
@:dox(hide) class T_bitFun_static_extension {

}
@:dox(hide) typedef T_natPointer = stdgo._internal.math.big.Big_t_natpointer.T_natPointer;
@:dox(hide) class T_nat_static_extension {
    static public function _probablyPrimeLucas(_n:T_nat):Bool {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._probablyPrimeLucas(_n);
    }
    static public function _probablyPrimeMillerRabin(_n:T_nat, _reps:StdTypes.Int, _force2:Bool):Bool {
        final _reps = (_reps : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._probablyPrimeMillerRabin(_n, _reps, _force2);
    }
    static public function _divRecursiveStep(_z:T_nat, _u:T_nat, _v:T_nat, _depth:StdTypes.Int, _tmp:T_nat, _temps:Array<T_nat>):Void {
        final _depth = (_depth : stdgo.GoInt);
        final _tmp = (_tmp : stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>);
        final _temps = ([for (i in _temps) (i : stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>);
        stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._divRecursiveStep(_z, _u, _v, _depth, _tmp, _temps);
    }
    static public function _divRecursive(_z:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._divRecursive(_z, _u, _v);
    }
    static public function _divBasic(_q:T_nat, _u:T_nat, _v:T_nat):Void {
        stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._divBasic(_q, _u, _v);
    }
    static public function _divLarge(_z:T_nat, _u:T_nat, _uIn:T_nat, _vIn:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._divLarge(_z, _u, _uIn, _vIn);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _modW(_x:T_nat, _d:Word):Word {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._modW(_x, _d);
    }
    static public function _divW(_z:T_nat, _x:T_nat, _y:Word):stdgo.Tuple<T_nat, Word> {
        return {
            final obj = stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._divW(_z, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _div(_z:T_nat, _z2:T_nat, _u:T_nat, _v:T_nat):stdgo.Tuple<T_nat, T_nat> {
        return {
            final obj = stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._div(_z, _z2, _u, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _rem(_z:T_nat, _u:T_nat, _v:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._rem(_z, _u, _v);
    }
    static public function _expWW(_z:T_nat, _x:Word, _y:Word):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._expWW(_z, _x, _y);
    }
    static public function _convertWords(_q:T_nat, _s:Array<std.UInt>, _b:Word, _ndigits:StdTypes.Int, _bb:Word, _table:Array<T_divisor>):Void {
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ndigits = (_ndigits : stdgo.GoInt);
        final _table = ([for (i in _table) i] : stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>);
        stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._convertWords(_q, _s, _b, _ndigits, _bb, _table);
    }
    static public function _itoa(_x:T_nat, _neg:Bool, _base:StdTypes.Int):Array<std.UInt> {
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._itoa(_x, _neg, _base)) i];
    }
    static public function _utoa(_x:T_nat, _base:StdTypes.Int):Array<std.UInt> {
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._utoa(_x, _base)) i];
    }
    static public function _scan(_z:T_nat, _r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:StdTypes.Int, _fracOk:Bool):stdgo.Tuple.Tuple4<T_nat, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._scan(_z, _r, _base, _fracOk);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _subMod2N(_z:T_nat, _x:T_nat, _y:T_nat, _n:std.UInt):T_nat {
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._subMod2N(_z, _x, _y, _n);
    }
    static public function _sqrt(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sqrt(_z, _x);
    }
    static public function _setBytes(_z:T_nat, _buf:Array<std.UInt>):T_nat {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._setBytes(_z, _buf);
    }
    static public function _bytes(_z:T_nat, _buf:Array<std.UInt>):StdTypes.Int {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._bytes(_z, _buf);
    }
    static public function _expNNMontgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._expNNMontgomery(_z, _x, _y, _m);
    }
    static public function _expNNWindowed(_z:T_nat, _x:T_nat, _y:T_nat, _logM:std.UInt):T_nat {
        final _logM = (_logM : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._expNNWindowed(_z, _x, _y, _logM);
    }
    static public function _expNNMontgomeryEven(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._expNNMontgomeryEven(_z, _x, _y, _m);
    }
    static public function _expNN(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _slow:Bool):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._expNN(_z, _x, _y, _m, _slow);
    }
    static public function _random(_z:T_nat, _rand:stdgo._internal.math.rand.Rand_rand.Rand, _limit:T_nat, _n:StdTypes.Int):T_nat {
        final _rand = (_rand : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._random(_z, _rand, _limit, _n);
    }
    static public function _xor(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._xor(_z, _x, _y);
    }
    static public function _or(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._or(_z, _x, _y);
    }
    static public function _andNot(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._andNot(_z, _x, _y);
    }
    static public function _trunc(_z:T_nat, _x:T_nat, _n:std.UInt):T_nat {
        final _n = (_n : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._trunc(_z, _x, _n);
    }
    static public function _and(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._and(_z, _x, _y);
    }
    static public function _sticky(_x:T_nat, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sticky(_x, _i);
    }
    static public function _bit(_x:T_nat, _i:std.UInt):std.UInt {
        final _i = (_i : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._bit(_x, _i);
    }
    static public function _setBit(_z:T_nat, _x:T_nat, _i:std.UInt, _b:std.UInt):T_nat {
        final _i = (_i : stdgo.GoUInt);
        final _b = (_b : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._setBit(_z, _x, _i, _b);
    }
    static public function _shr(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        final _s = (_s : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._shr(_z, _x, _s);
    }
    static public function _shl(_z:T_nat, _x:T_nat, _s:std.UInt):T_nat {
        final _s = (_s : stdgo.GoUInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._shl(_z, _x, _s);
    }
    static public function _isPow2(_x:T_nat):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._isPow2(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _trailingZeroBits(_x:T_nat):std.UInt {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._trailingZeroBits(_x);
    }
    static public function _bitLen(_x:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._bitLen(_x);
    }
    static public function _mulRange(_z:T_nat, _a:haxe.UInt64, _b:haxe.UInt64):T_nat {
        final _a = (_a : stdgo.GoUInt64);
        final _b = (_b : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._mulRange(_z, _a, _b);
    }
    static public function _sqr(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sqr(_z, _x);
    }
    static public function _mul(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._mul(_z, _x, _y);
    }
    static public function _montgomery(_z:T_nat, _x:T_nat, _y:T_nat, _m:T_nat, _k:Word, _n:StdTypes.Int):T_nat {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._montgomery(_z, _x, _y, _m, _k, _n);
    }
    static public function _mulAddWW(_z:T_nat, _x:T_nat, _y:Word, _r:Word):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._mulAddWW(_z, _x, _y, _r);
    }
    static public function _cmp(_x:T_nat, _y:T_nat):StdTypes.Int {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._cmp(_x, _y);
    }
    static public function _sub(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sub(_z, _x, _y);
    }
    static public function _add(_z:T_nat, _x:T_nat, _y:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._add(_z, _x, _y);
    }
    static public function _set(_z:T_nat, _x:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._set(_z, _x);
    }
    static public function _setUint64(_z:T_nat, _x:haxe.UInt64):T_nat {
        final _x = (_x : stdgo.GoUInt64);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._setUint64(_z, _x);
    }
    static public function _setWord(_z:T_nat, _x:Word):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._setWord(_z, _x);
    }
    static public function _make(_z:T_nat, _n:StdTypes.Int):T_nat {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._make(_z, _n);
    }
    static public function _norm(_z:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._norm(_z);
    }
    static public function _clear(_z:T_nat):Void {
        stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._clear(_z);
    }
    static public function string(_z:T_nat):String {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension.string(_z);
    }
    static public function _modInverse(_z:T_nat, _g:T_nat, _n:T_nat):T_nat {
        return stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._modInverse(_z, _g, _n);
    }
}
@:dox(hide) typedef T_funNNPointer = stdgo._internal.math.big.Big_t_funnnpointer.T_funNNPointer;
@:dox(hide) class T_funNN_static_extension {

}
@:dox(hide) typedef T_ratBinFunPointer = stdgo._internal.math.big.Big_t_ratbinfunpointer.T_ratBinFunPointer;
@:dox(hide) class T_ratBinFun_static_extension {

}
/**
    * 
    * Package big implements arbitrary-precision arithmetic (big numbers).
    * The following numeric types are supported:
    * 
    * 	Int    signed integers
    * 	Rat    rational numbers
    * 	Float  floating-point numbers
    * 
    * The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    * values can be declared in the usual ways and denote 0 without further
    * initialization:
    * 
    * 	var x Int        // &x is an *Int of value 0
    * 	var r = &Rat{}   // r is a *Rat of value 0
    * 	y := new(Float)  // y is a *Float of value 0
    * 
    * Alternatively, new values can be allocated and initialized with factory
    * functions of the form:
    * 
    * 	func NewT(v V) *T
    * 
    * For instance, NewInt(x) returns an *Int set to the value of the int64
    * argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    * a and b are int64 values, and NewFloat(f) returns a *Float initialized
    * to the float64 argument f. More flexibility is provided with explicit
    * setters, for instance:
    * 
    * 	var z1 Int
    * 	z1.SetUint64(123)                 // z1 := 123
    * 	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    * 	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    * 
    * Setters, numeric operations and predicates are represented as methods of
    * the form:
    * 
    * 	func (z *T) SetV(v V) *T          // z = v
    * 	func (z *T) Unary(x *T) *T        // z = unary x
    * 	func (z *T) Binary(x, y *T) *T    // z = x binary y
    * 	func (x *T) Pred() P              // p = pred(x)
    * 
    * with T one of Int, Rat, or Float. For unary and binary operations, the
    * result is the receiver (usually named z in that case; see below); if it
    * is one of the operands x or y it may be safely overwritten (and its memory
    * reused).
    * 
    * Arithmetic expressions are typically written as a sequence of individual
    * method calls, with each call corresponding to an operation. The receiver
    * denotes the result and the method arguments are the operation's operands.
    * For instance, given three *Int values a, b and c, the invocation
    * 
    * 	c.Add(a, b)
    * 
    * computes the sum a + b and stores the result in c, overwriting whatever
    * value was held in c before. Unless specified otherwise, operations permit
    * aliasing of parameters, so it is perfectly ok to write
    * 
    * 	sum.Add(sum, x)
    * 
    * to accumulate values x in a sum.
    * 
    * (By always passing in a result value via the receiver, memory use can be
    * much better controlled. Instead of having to allocate new memory for each
    * result, an operation can reuse the space allocated for the result value,
    * and overwrite that value with the new result in the process.)
    * 
    * Notational convention: Incoming method parameters (including the receiver)
    * are named consistently in the API to clarify their use. Incoming operands
    * are usually named x, y, a, b, and so on, but never z. A parameter specifying
    * the result is named z (typically the receiver).
    * 
    * For instance, the arguments for (*Int).Add are named x and y, and because
    * the receiver specifies the result destination, it is called z:
    * 
    * 	func (z *Int) Add(x, y *Int) *Int
    * 
    * Methods of this form typically return the incoming receiver as well, to
    * enable simple call chaining.
    * 
    * Methods which don't require a result value to be passed in (for instance,
    * Int.Sign), simply return the result. In this case, the receiver is typically
    * the first operand, named x:
    * 
    * 	func (x *Int) Sign() int
    * 
    * Various methods support conversions between strings and corresponding
    * numeric values, and vice versa: *Int, *Rat, and *Float values implement
    * the Stringer interface for a (default) string representation of the value,
    * but also provide SetString methods to initialize a value from a string in
    * a variety of supported formats (see the respective SetString documentation).
    * 
    * Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    * and (except for *Rat) the Formatter interface for formatted printing.
    * 
**/
class Big {
    static public inline function testFunVV(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfunvv.testFunVV(_t);
    }
    static public inline function benchmarkAddVV(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkaddvv.benchmarkAddVV(_b);
    }
    static public inline function benchmarkSubVV(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarksubvv.benchmarkSubVV(_b);
    }
    static public inline function testFunVW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfunvw.testFunVW(_t);
    }
    /**
        * Extended testing to addVW and subVW using various kinds of input data.
        * We utilize the results of addVW_g and subVW_g as golden reference to check
        * correctness.
    **/
    static public inline function testFunVWExt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfunvwext.testFunVWExt(_t);
    }
    static public inline function testShiftOverlap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testshiftoverlap.testShiftOverlap(_t);
    }
    static public inline function testIssue31084(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue31084.testIssue31084(_t);
    }
    static public inline function testIssue42838(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue42838.testIssue42838(_t);
    }
    static public inline function benchmarkAddVW(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkaddvw.benchmarkAddVW(_b);
    }
    /**
        * Benchmarking addVW using vector of maximum uint to force carry flag set
    **/
    static public inline function benchmarkAddVWext(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkaddvwext.benchmarkAddVWext(_b);
    }
    static public inline function benchmarkSubVW(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarksubvw.benchmarkSubVW(_b);
    }
    /**
        * Benchmarking subVW using vector of zero to force carry flag set
    **/
    static public inline function benchmarkSubVWext(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarksubvwext.benchmarkSubVWext(_b);
    }
    static public inline function testFunVWW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfunvww.testFunVWW(_t);
    }
    static public inline function testMulWW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmulww.testMulWW(_t);
    }
    static public inline function testMulAddWWW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmuladdwww.testMulAddWWW(_t);
    }
    static public inline function testDivWW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdivww.testDivWW(_t);
    }
    static public inline function benchmarkMulAddVWW(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmuladdvww.benchmarkMulAddVWW(_b);
    }
    static public inline function benchmarkAddMulVVW(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkaddmulvvw.benchmarkAddMulVVW(_b);
    }
    static public inline function benchmarkDivWVW(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkdivwvw.benchmarkDivWVW(_b);
    }
    static public inline function benchmarkNonZeroShifts(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarknonzeroshifts.benchmarkNonZeroShifts(_b);
    }
    static public inline function testMulBits(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmulbits.testMulBits(_t);
    }
    static public inline function testNormBits(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnormbits.testNormBits(_t);
    }
    static public inline function testFromBits(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfrombits.testFromBits(_t);
    }
    static public inline function testCalibrate(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testcalibrate.testCalibrate(_t);
    }
    static public inline function testDecimalString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdecimalstring.testDecimalString(_t);
    }
    static public inline function testDecimalInit(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdecimalinit.testDecimalInit(_t);
    }
    static public inline function testDecimalRounding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdecimalrounding.testDecimalRounding(_t);
    }
    static public inline function benchmarkDecimalConversion(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkdecimalconversion.benchmarkDecimalConversion(_b);
    }
    static public inline function benchmarkFloatString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkfloatstring.benchmarkFloatString(_b);
    }
    /**
        * NewFloat allocates and returns a new Float set to x,
        * with precision 53 and rounding mode ToNearestEven.
        * NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public inline function newFloat(_x:StdTypes.Float):Float_ {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.math.big.Big_newfloat.newFloat(_x);
    }
    static public inline function testFloatZeroValue(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatzerovalue.testFloatZeroValue(_t);
    }
    static public inline function testFloatSetPrec(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetprec.testFloatSetPrec(_t);
    }
    static public inline function testFloatMinPrec(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatminprec.testFloatMinPrec(_t);
    }
    static public inline function testFloatSign(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsign.testFloatSign(_t);
    }
    static public inline function testFloatMantExp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatmantexp.testFloatMantExp(_t);
    }
    static public inline function testFloatMantExpAliasing(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatmantexpaliasing.testFloatMantExpAliasing(_t);
    }
    static public inline function testFloatSetMantExp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetmantexp.testFloatSetMantExp(_t);
    }
    static public inline function testFloatPredicates(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatpredicates.testFloatPredicates(_t);
    }
    static public inline function testFloatIsInt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatisint.testFloatIsInt(_t);
    }
    /**
        * TestFloatRound tests basic rounding.
    **/
    static public inline function testFloatRound(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatround.testFloatRound(_t);
    }
    /**
        * TestFloatRound24 tests that rounding a float64 to 24 bits
        * matches IEEE-754 rounding to nearest when converting a
        * float64 to a float32 (excluding denormal numbers).
    **/
    static public inline function testFloatRound24(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatround24.testFloatRound24(_t);
    }
    static public inline function testFloatSetUint64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetuint64.testFloatSetUint64(_t);
    }
    static public inline function testFloatSetInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetint64.testFloatSetInt64(_t);
    }
    static public inline function testFloatSetFloat64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetfloat64.testFloatSetFloat64(_t);
    }
    static public inline function testFloatSetInt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetint.testFloatSetInt(_t);
    }
    static public inline function testFloatSetRat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetrat.testFloatSetRat(_t);
    }
    static public inline function testFloatSetInf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetinf.testFloatSetInf(_t);
    }
    static public inline function testFloatUint64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatuint64.testFloatUint64(_t);
    }
    static public inline function testFloatInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatint64.testFloatInt64(_t);
    }
    static public inline function testFloatFloat32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatfloat32.testFloatFloat32(_t);
    }
    static public inline function testFloatFloat64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatfloat64.testFloatFloat64(_t);
    }
    static public inline function testFloatInt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatint.testFloatInt(_t);
    }
    static public inline function testFloatRat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatrat.testFloatRat(_t);
    }
    static public inline function testFloatAbs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatabs.testFloatAbs(_t);
    }
    static public inline function testFloatNeg(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatneg.testFloatNeg(_t);
    }
    static public inline function testFloatInc(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatinc.testFloatInc(_t);
    }
    /**
        * TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
        * addition/subtraction of arguments represented by Bits values with the
        * respective Float addition/subtraction for a variety of precisions
        * and rounding modes.
    **/
    static public inline function testFloatAdd(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatadd.testFloatAdd(_t);
    }
    /**
        * TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
        * x + (-x) or x - x for non-zero x should be +0 in all cases except when
        * the rounding mode is ToNegativeInf in which case it should be -0.
    **/
    static public inline function testFloatAddRoundZero(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloataddroundzero.testFloatAddRoundZero(_t);
    }
    /**
        * TestFloatAdd32 tests that Float.Add/Sub of numbers with
        * 24bit mantissa behaves like float32 addition/subtraction
        * (excluding denormal numbers).
    **/
    static public inline function testFloatAdd32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatadd32.testFloatAdd32(_t);
    }
    /**
        * TestFloatAdd64 tests that Float.Add/Sub of numbers with
        * 53bit mantissa behaves like float64 addition/subtraction.
    **/
    static public inline function testFloatAdd64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatadd64.testFloatAdd64(_t);
    }
    static public inline function testIssue20490(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue20490.testIssue20490(_t);
    }
    /**
        * TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
        * multiplication/division of arguments represented by Bits values with the
        * respective Float multiplication/division for a variety of precisions
        * and rounding modes.
    **/
    static public inline function testFloatMul(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatmul.testFloatMul(_t);
    }
    /**
        * TestFloatMul64 tests that Float.Mul/Quo of numbers with
        * 53bit mantissa behaves like float64 multiplication/division.
    **/
    static public inline function testFloatMul64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatmul64.testFloatMul64(_t);
    }
    static public inline function testIssue6866(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue6866.testIssue6866(_t);
    }
    static public inline function testFloatQuo(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatquo.testFloatQuo(_t);
    }
    /**
        * TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
        * it serves as a smoke test for basic correctness of division.
    **/
    static public inline function testFloatQuoSmoke(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatquosmoke.testFloatQuoSmoke(_t);
    }
    /**
        * TestFloatArithmeticSpecialValues tests that Float operations produce the
        * correct results for combinations of zero (±0), finite (±1 and ±2.71828),
        * and infinite (±Inf) operands.
    **/
    static public inline function testFloatArithmeticSpecialValues(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatarithmeticspecialvalues.testFloatArithmeticSpecialValues(_t);
    }
    static public inline function testFloatArithmeticOverflow(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatarithmeticoverflow.testFloatArithmeticOverflow(_t);
    }
    /**
        * For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
        * by the sign of the value to be rounded. Test that rounding happens after
        * the sign of a result has been set.
        * This test uses specific values that are known to fail if rounding is
        * "factored" out before setting the result sign.
    **/
    static public inline function testFloatArithmeticRounding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatarithmeticrounding.testFloatArithmeticRounding(_t);
    }
    /**
        * TestFloatCmpSpecialValues tests that Cmp produces the correct results for
        * combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
        * operands.
    **/
    static public inline function testFloatCmpSpecialValues(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatcmpspecialvalues.testFloatCmpSpecialValues(_t);
    }
    static public inline function benchmarkFloatAdd(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkfloatadd.benchmarkFloatAdd(_b);
    }
    static public inline function benchmarkFloatSub(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkfloatsub.benchmarkFloatSub(_b);
    }
    /**
        * ParseFloat is like f.Parse(s, base) with f set to the given precision
        * and rounding mode.
    **/
    static public inline function parseFloat(_s:String, _base:StdTypes.Int, _prec:std.UInt, _mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        final _prec = (_prec : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.math.big.Big_parsefloat.parseFloat(_s, _base, _prec, _mode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function testFloatSetFloat64String(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsetfloat64string.testFloatSetFloat64String(_t);
    }
    static public inline function testFloat64Text(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat64text.testFloat64Text(_t);
    }
    static public inline function testFloatText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloattext.testFloatText(_t);
    }
    static public inline function testFloatFormat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatformat.testFloatFormat(_t);
    }
    static public inline function benchmarkParseFloatSmallExp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkparsefloatsmallexp.benchmarkParseFloatSmallExp(_b);
    }
    static public inline function benchmarkParseFloatLargeExp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkparsefloatlargeexp.benchmarkParseFloatLargeExp(_b);
    }
    static public inline function testFloatScan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatscan.testFloatScan(_t);
    }
    static public inline function testFloatGobEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatgobencoding.testFloatGobEncoding(_t);
    }
    static public inline function testFloatCorruptGob(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatcorruptgob.testFloatCorruptGob(_t);
    }
    static public inline function testFloatJSONEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatjsonencoding.testFloatJSONEncoding(_t);
    }
    static public inline function testFloatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatgobdecodeshortbuffer.testFloatGobDecodeShortBuffer(_t);
    }
    static public inline function testFloatGobDecodeInvalid(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatgobdecodeinvalid.testFloatGobDecodeInvalid(_t);
    }
    static public inline function benchmarkGCD10x10(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10x10.benchmarkGCD10x10(_b);
    }
    static public inline function benchmarkGCD10x100(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10x100.benchmarkGCD10x100(_b);
    }
    static public inline function benchmarkGCD10x1000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10x1000.benchmarkGCD10x1000(_b);
    }
    static public inline function benchmarkGCD10x10000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10x10000.benchmarkGCD10x10000(_b);
    }
    static public inline function benchmarkGCD10x100000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10x100000.benchmarkGCD10x100000(_b);
    }
    static public inline function benchmarkGCD100x100(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd100x100.benchmarkGCD100x100(_b);
    }
    static public inline function benchmarkGCD100x1000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd100x1000.benchmarkGCD100x1000(_b);
    }
    static public inline function benchmarkGCD100x10000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd100x10000.benchmarkGCD100x10000(_b);
    }
    static public inline function benchmarkGCD100x100000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd100x100000.benchmarkGCD100x100000(_b);
    }
    static public inline function benchmarkGCD1000x1000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd1000x1000.benchmarkGCD1000x1000(_b);
    }
    static public inline function benchmarkGCD1000x10000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd1000x10000.benchmarkGCD1000x10000(_b);
    }
    static public inline function benchmarkGCD1000x100000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd1000x100000.benchmarkGCD1000x100000(_b);
    }
    static public inline function benchmarkGCD10000x10000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10000x10000.benchmarkGCD10000x10000(_b);
    }
    static public inline function benchmarkGCD10000x100000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd10000x100000.benchmarkGCD10000x100000(_b);
    }
    static public inline function benchmarkGCD100000x100000(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkgcd100000x100000.benchmarkGCD100000x100000(_b);
    }
    static public inline function testHilbert(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testhilbert.testHilbert(_t);
    }
    static public inline function benchmarkHilbert(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkhilbert.benchmarkHilbert(_b);
    }
    /**
        * NewInt allocates and returns a new Int set to x.
    **/
    static public inline function newInt(_x:haxe.Int64):Int_ {
        final _x = (_x : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_newint.newInt(_x);
    }
    /**
        * Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        * The y argument must be an odd integer.
    **/
    static public inline function jacobi(_x:Int_, _y:Int_):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return stdgo._internal.math.big.Big_jacobi.jacobi(_x, _y);
    }
    static public inline function testSignZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsignz.testSignZ(_t);
    }
    static public inline function testSetZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsetz.testSetZ(_t);
    }
    static public inline function testAbsZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testabsz.testAbsZ(_t);
    }
    static public inline function testSumZZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsumzz.testSumZZ(_t);
    }
    static public inline function testProdZZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testprodzz.testProdZZ(_t);
    }
    static public inline function testMul(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmul.testMul(_t);
    }
    static public inline function testMulRangeZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmulrangez.testMulRangeZ(_t);
    }
    static public inline function testBinomial(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbinomial.testBinomial(_t);
    }
    static public inline function benchmarkBinomial(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkbinomial.benchmarkBinomial(_b);
    }
    static public inline function testDivisionSigns(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdivisionsigns.testDivisionSigns(_t);
    }
    static public inline function testBits(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbits.testBits(_t);
    }
    static public inline function testSetBytes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsetbytes.testSetBytes(_t);
    }
    static public inline function testBytes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbytes.testBytes(_t);
    }
    static public inline function testQuo(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testquo.testQuo(_t);
    }
    static public inline function testQuoStepD6(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testquostepd6.testQuoStepD6(_t);
    }
    static public inline function benchmarkQuoRem(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkquorem.benchmarkQuoRem(_b);
    }
    static public inline function testBitLen(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbitlen.testBitLen(_t);
    }
    static public inline function testExp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testexp.testExp(_t);
    }
    static public inline function benchmarkExp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkexp.benchmarkExp(_b);
    }
    static public inline function benchmarkExpMont(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkexpmont.benchmarkExpMont(_b);
    }
    static public inline function benchmarkExp2(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkexp2.benchmarkExp2(_b);
    }
    static public inline function testGcd(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testgcd.testGcd(_t);
    }
    static public inline function testRsh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testrsh.testRsh(_t);
    }
    static public inline function testRshSelf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testrshself.testRshSelf(_t);
    }
    static public inline function testLsh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testlsh.testLsh(_t);
    }
    static public inline function testLshSelf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testlshself.testLshSelf(_t);
    }
    static public inline function testLshRsh(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testlshrsh.testLshRsh(_t);
    }
    static public inline function testCmpAbs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testcmpabs.testCmpAbs(_t);
    }
    static public inline function testIntCmpSelf(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testintcmpself.testIntCmpSelf(_t);
    }
    static public inline function testInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testint64.testInt64(_t);
    }
    static public inline function testUint64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testuint64.testUint64(_t);
    }
    static public inline function testBitSet(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbitset.testBitSet(_t);
    }
    static public inline function testTrailingZeroBits(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testtrailingzerobits.testTrailingZeroBits(_t);
    }
    static public inline function benchmarkBitset(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkbitset.benchmarkBitset(_b);
    }
    static public inline function benchmarkBitsetNeg(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkbitsetneg.benchmarkBitsetNeg(_b);
    }
    static public inline function benchmarkBitsetOrig(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkbitsetorig.benchmarkBitsetOrig(_b);
    }
    static public inline function benchmarkBitsetNegOrig(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkbitsetnegorig.benchmarkBitsetNegOrig(_b);
    }
    static public inline function benchmarkModSqrt225_Tonelli(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmodsqrt225_tonelli.benchmarkModSqrt225_Tonelli(_b);
    }
    static public inline function benchmarkModSqrt225_3Mod4(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmodsqrt225_3mod4.benchmarkModSqrt225_3Mod4(_b);
    }
    static public inline function benchmarkModSqrt231_Tonelli(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmodsqrt231_tonelli.benchmarkModSqrt231_Tonelli(_b);
    }
    static public inline function benchmarkModSqrt231_5Mod8(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmodsqrt231_5mod8.benchmarkModSqrt231_5Mod8(_b);
    }
    static public inline function testBitwise(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbitwise.testBitwise(_t);
    }
    static public inline function testNot(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnot.testNot(_t);
    }
    static public inline function testModInverse(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmodinverse.testModInverse(_t);
    }
    static public inline function benchmarkModInverse(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmodinverse.benchmarkModInverse(_b);
    }
    static public inline function testModSqrt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmodsqrt.testModSqrt(_t);
    }
    static public inline function testJacobi(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testjacobi.testJacobi(_t);
    }
    static public inline function testJacobiPanic(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testjacobipanic.testJacobiPanic(_t);
    }
    static public inline function testIssue2607(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue2607.testIssue2607(_t);
    }
    static public inline function testSqrt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsqrt.testSqrt(_t);
    }
    /**
        * We can't test this together with the other Exp tests above because
        * it requires a different receiver setup.
    **/
    static public inline function testIssue22830(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue22830.testIssue22830(_t);
    }
    static public inline function benchmarkSqrt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarksqrt.benchmarkSqrt(_b);
    }
    static public inline function benchmarkIntSqr(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkintsqr.benchmarkIntSqr(_b);
    }
    static public inline function benchmarkDiv(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkdiv.benchmarkDiv(_b);
    }
    static public inline function testFillBytes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfillbytes.testFillBytes(_t);
    }
    static public inline function testNewIntMinInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnewintminint64.testNewIntMinInt64(_t);
    }
    static public inline function testNewIntAllocs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnewintallocs.testNewIntAllocs(_t);
    }
    static public inline function testFloat64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat64.testFloat64(_t);
    }
    static public inline function testIntText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testinttext.testIntText(_t);
    }
    static public inline function testAppendText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testappendtext.testAppendText(_t);
    }
    static public inline function testGetString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testgetstring.testGetString(_t);
    }
    static public inline function testSetString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsetstring.testSetString(_t);
    }
    static public inline function testFormat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testformat.testFormat(_t);
    }
    static public inline function testScan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testscan.testScan(_t);
    }
    static public inline function testIntGobEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testintgobencoding.testIntGobEncoding(_t);
    }
    /**
        * Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
        * TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilIntInSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testgobencodingnilintinslice.testGobEncodingNilIntInSlice(_t);
    }
    static public inline function testIntJSONEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testintjsonencoding.testIntJSONEncoding(_t);
    }
    static public inline function testIntJSONEncodingNil(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testintjsonencodingnil.testIntJSONEncodingNil(_t);
    }
    static public inline function testIntXMLEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testintxmlencoding.testIntXMLEncoding(_t);
    }
    /**
        * Tests that the linker is able to remove references to Float, Rat,
        * and Int if unused (notably, not used by init).
    **/
    static public inline function testLinkerGC(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testlinkergc.testLinkerGC(_t);
    }
    static public inline function testCmp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testcmp.testCmp(_t);
    }
    static public inline function testSet(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testset.testSet(_t);
    }
    static public inline function testFunNN(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfunnn.testFunNN(_t);
    }
    static public inline function testMulRangeN(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmulrangen.testMulRangeN(_t);
    }
    /**
        * TestMulUnbalanced tests that multiplying numbers of different lengths
        * does not cause deep recursion and in turn allocate too much memory.
        * Test case for issue 3807.
    **/
    static public inline function testMulUnbalanced(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmulunbalanced.testMulUnbalanced(_t);
    }
    static public inline function benchmarkMul(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkmul.benchmarkMul(_b);
    }
    static public inline function benchmarkNatMul(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarknatmul.benchmarkNatMul(_b);
    }
    static public inline function testNLZ(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnlz.testNLZ(_t);
    }
    static public inline function testShiftLeft(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testshiftleft.testShiftLeft(_t);
    }
    static public inline function testShiftRight(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testshiftright.testShiftRight(_t);
    }
    static public inline function benchmarkZeroShifts(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkzeroshifts.benchmarkZeroShifts(_b);
    }
    static public inline function testModW(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmodw.testModW(_t);
    }
    static public inline function testMontgomery(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmontgomery.testMontgomery(_t);
    }
    static public inline function testExpNN(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testexpnn.testExpNN(_t);
    }
    static public inline function fuzzExpMont(_f:stdgo._internal.testing.Testing_f.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.math.big.Big_fuzzexpmont.fuzzExpMont(_f);
    }
    static public inline function benchmarkExp3Power(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkexp3power.benchmarkExp3Power(_b);
    }
    static public inline function testFibo(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfibo.testFibo(_t);
    }
    static public inline function benchmarkFibo(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkfibo.benchmarkFibo(_b);
    }
    static public inline function testBit(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testbit.testBit(_t);
    }
    static public inline function testSticky(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_teststicky.testSticky(_t);
    }
    static public inline function testSqr(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsqr.testSqr(_t);
    }
    static public inline function benchmarkNatSqr(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarknatsqr.benchmarkNatSqr(_b);
    }
    static public inline function testNatSubMod2N(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnatsubmod2n.testNatSubMod2N(_t);
    }
    static public inline function benchmarkNatSetBytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarknatsetbytes.benchmarkNatSetBytes(_b);
    }
    static public inline function testNatDiv(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testnatdiv.testNatDiv(_t);
    }
    /**
        * TestIssue37499 triggers the edge case of divBasic where
        * the inaccurate estimate of the first word's quotient
        * happens at the very beginning of the loop.
    **/
    static public inline function testIssue37499(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue37499.testIssue37499(_t);
    }
    /**
        * TestIssue42552 triggers an edge case of recursive division
        * where the first division loop is never entered, and correcting
        * the remainder takes exactly two iterations in the final loop.
    **/
    static public inline function testIssue42552(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue42552.testIssue42552(_t);
    }
    static public inline function testMaxBase(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmaxbase.testMaxBase(_t);
    }
    static public inline function testString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_teststring.testString(_t);
    }
    static public inline function testScanBase(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testscanbase.testScanBase(_t);
    }
    /**
        * Test case for BenchmarkScanPi.
    **/
    static public inline function testScanPi(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testscanpi.testScanPi(_t);
    }
    static public inline function testScanPiParallel(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testscanpiparallel.testScanPiParallel(_t);
    }
    static public inline function benchmarkScanPi(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkscanpi.benchmarkScanPi(_b);
    }
    static public inline function benchmarkStringPiParallel(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkstringpiparallel.benchmarkStringPiParallel(_b);
    }
    static public inline function benchmarkScan(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkscan.benchmarkScan(_b);
    }
    static public inline function benchmarkString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkstring.benchmarkString(_b);
    }
    static public inline function benchmarkLeafSize(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkleafsize.benchmarkLeafSize(_b);
    }
    static public inline function leafSizeHelper(_b:stdgo._internal.testing.Testing_b.B, _base:StdTypes.Int, _size:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _base = (_base : stdgo.GoInt);
        final _size = (_size : stdgo.GoInt);
        stdgo._internal.math.big.Big_leafsizehelper.leafSizeHelper(_b, _base, _size);
    }
    static public inline function testStringPowers(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_teststringpowers.testStringPowers(_t);
    }
    static public inline function testProbablyPrime(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testprobablyprime.testProbablyPrime(_t);
    }
    static public inline function benchmarkProbablyPrime(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkprobablyprime.benchmarkProbablyPrime(_b);
    }
    static public inline function testMillerRabinPseudoprimes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testmillerrabinpseudoprimes.testMillerRabinPseudoprimes(_t);
    }
    static public inline function testLucasPseudoprimes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testlucaspseudoprimes.testLucasPseudoprimes(_t);
    }
    /**
        * NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public inline function newRat(_a:haxe.Int64, _b:haxe.Int64):Rat {
        final _a = (_a : stdgo.GoInt64);
        final _b = (_b : stdgo.GoInt64);
        return stdgo._internal.math.big.Big_newrat.newRat(_a, _b);
    }
    static public inline function testZeroRat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testzerorat.testZeroRat(_t);
    }
    static public inline function testRatSign(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsign.testRatSign(_t);
    }
    static public inline function testRatCmp(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratcmp.testRatCmp(_t);
    }
    static public inline function testIsInt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testisint.testIsInt(_t);
    }
    static public inline function testRatAbs(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratabs.testRatAbs(_t);
    }
    static public inline function testRatNeg(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratneg.testRatNeg(_t);
    }
    static public inline function testRatInv(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratinv.testRatInv(_t);
    }
    static public inline function testRatBin(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratbin.testRatBin(_t);
    }
    static public inline function testIssue820(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue820.testIssue820(_t);
    }
    static public inline function testRatSetFrac64Rat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsetfrac64rat.testRatSetFrac64Rat(_t);
    }
    static public inline function testIssue2379(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue2379.testIssue2379(_t);
    }
    static public inline function testIssue3521(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue3521.testIssue3521(_t);
    }
    static public inline function testFloat32Distribution(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat32distribution.testFloat32Distribution(_t);
    }
    static public inline function testFloat64Distribution(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat64distribution.testFloat64Distribution(_t);
    }
    /**
        * TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
        * returns nil.
    **/
    static public inline function testSetFloat64NonFinite(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testsetfloat64nonfinite.testSetFloat64NonFinite(_t);
    }
    static public inline function testIsFinite(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testisfinite.testIsFinite(_t);
    }
    static public inline function testRatSetInt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsetint64.testRatSetInt64(_t);
    }
    static public inline function testRatSetUint64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsetuint64.testRatSetUint64(_t);
    }
    static public inline function benchmarkRatCmp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkratcmp.benchmarkRatCmp(_b);
    }
    /**
        * TestIssue34919 verifies that a Rat's denominator is not modified
        * when simply accessing the Rat value.
    **/
    static public inline function testIssue34919(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue34919.testIssue34919(_t);
    }
    static public inline function testDenomRace(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testdenomrace.testDenomRace(_t);
    }
    static public inline function testScanExponent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testscanexponent.testScanExponent(_t);
    }
    static public inline function testRatSetString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsetstring.testRatSetString(_t);
    }
    static public inline function testRatSetStringZero(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratsetstringzero.testRatSetStringZero(_t);
    }
    static public inline function testRatScan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratscan.testRatScan(_t);
    }
    static public inline function testFloatString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatstring.testFloatString(_t);
    }
    static public inline function testFloat32SpecialCases(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat32specialcases.testFloat32SpecialCases(_t);
    }
    static public inline function testFloat64SpecialCases(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloat64specialcases.testFloat64SpecialCases(_t);
    }
    static public inline function testIssue31184(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue31184.testIssue31184(_t);
    }
    static public inline function testIssue45910(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testissue45910.testIssue45910(_t);
    }
    static public inline function testRatGobEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratgobencoding.testRatGobEncoding(_t);
    }
    /**
        * Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
        * TODO: top-level nils.
    **/
    static public inline function testGobEncodingNilRatInSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testgobencodingnilratinslice.testGobEncodingNilRatInSlice(_t);
    }
    static public inline function testRatJSONEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratjsonencoding.testRatJSONEncoding(_t);
    }
    static public inline function testRatXMLEncoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratxmlencoding.testRatXMLEncoding(_t);
    }
    static public inline function testRatGobDecodeShortBuffer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testratgobdecodeshortbuffer.testRatGobDecodeShortBuffer(_t);
    }
    /**
        * TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
        * behaves like float math.Sqrt.
    **/
    static public inline function testFloatSqrt64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsqrt64.testFloatSqrt64(_t);
    }
    static public inline function testFloatSqrt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsqrt.testFloatSqrt(_t);
    }
    static public inline function testFloatSqrtSpecial(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.math.big.Big_testfloatsqrtspecial.testFloatSqrtSpecial(_t);
    }
    static public inline function benchmarkFloatSqrt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.math.big.Big_benchmarkfloatsqrt.benchmarkFloatSqrt(_b);
    }
}
