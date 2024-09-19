package _internal.math.big_test;
@:structInit @:using(_internal.math.big_test.Big_test_T_positiveInt_static_extension.T_positiveInt_static_extension) class T_positiveInt {
    @:embedded
    public var int_ : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?int_:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.abs(_x);
    @:embedded
    public function add(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.add(_z, _x);
    @:embedded
    public function and(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.and(_z, _x);
    @:embedded
    public function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return this.int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:stdgo.GoInt):stdgo.GoUInt return this.int_.bit(_i);
    @:embedded
    public function bitLen():stdgo.GoInt return this.int_.bitLen();
    @:embedded
    public function bits():stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> return this.int_.bits();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return this.int_.bytes();
    @:embedded
    public function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return this.int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return this.int_.cmpAbs(_x);
    @:embedded
    public function div(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.div(_z, _x);
    @:embedded
    public function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return this.int_.fillBytes(__0);
    @:embedded
    public function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return this.int_.float64();
    @:embedded
    public function format(_s:stdgo._internal.fmt.Fmt_State.State, _ch:stdgo.GoInt32) this.int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return this.int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.int_.gobEncode();
    @:embedded
    public function int64():stdgo.GoInt64 return this.int_.int64();
    @:embedded
    public function isInt64():Bool return this.int_.isInt64();
    @:embedded
    public function isUint64():Bool return this.int_.isUint64();
    @:embedded
    public function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.int_.marshalText();
    @:embedded
    public function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.neg(_x);
    @:embedded
    public function not(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.not(_x);
    @:embedded
    public function or(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:stdgo.GoInt):Bool return this.int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return this.int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error return this.int_.scan(_s, _ch);
    @:embedded
    public function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.set(_x);
    @:embedded
    public function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.setBits(__0);
    @:embedded
    public function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.setInt64(__0);
    @:embedded
    public function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return this.int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.setUint64(__0);
    @:embedded
    public function sign():stdgo.GoInt return this.int_.sign();
    @:embedded
    public function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.sqrt(_x);
    @:embedded
    public function string():stdgo.GoString return this.int_.string();
    @:embedded
    public function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.sub(_z, _x);
    @:embedded
    public function text(_i:stdgo.GoInt):stdgo.GoString return this.int_.text(_i);
    @:embedded
    public function trailingZeroBits():stdgo.GoUInt return this.int_.trailingZeroBits();
    @:embedded
    public function uint64():stdgo.GoUInt64 return this.int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return this.int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return this.int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return this.int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _f:stdgo._internal.math.big.Big_T_nat.T_nat) this.int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return this.int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return this.int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_positiveInt(int_);
    }
}
