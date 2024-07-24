package stdgo._internal.math.big_test;
import stdgo._internal.math.big.Big;
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_bigInt_static_extension) class T_bigInt {
    @:embedded
    public var int_ : stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    public function new(?int_:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:stdgo.GoInt):stdgo.GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():stdgo.GoInt return int_.bitLen();
    @:embedded
    public function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return int_.bits();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return int_.float64();
    @:embedded
    public function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.gobEncode();
    @:embedded
    public function int64():stdgo.GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.not(_x);
    @:embedded
    public function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:stdgo.GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():stdgo.GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sqrt(_x);
    @:embedded
    public function string():stdgo.GoString return int_.string();
    @:embedded
    public function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:stdgo.GoInt):stdgo.GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():stdgo.GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():stdgo.GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_bigInt(int_);
    }
}
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_notZeroInt_static_extension) class T_notZeroInt {
    @:embedded
    public var int_ : stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    public function new(?int_:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:stdgo.GoInt):stdgo.GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():stdgo.GoInt return int_.bitLen();
    @:embedded
    public function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return int_.bits();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return int_.float64();
    @:embedded
    public function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.gobEncode();
    @:embedded
    public function int64():stdgo.GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.not(_x);
    @:embedded
    public function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:stdgo.GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():stdgo.GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sqrt(_x);
    @:embedded
    public function string():stdgo.GoString return int_.string();
    @:embedded
    public function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:stdgo.GoInt):stdgo.GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():stdgo.GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():stdgo.GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_notZeroInt(int_);
    }
}
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_positiveInt_static_extension) class T_positiveInt {
    @:embedded
    public var int_ : stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    public function new(?int_:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:stdgo.GoInt):stdgo.GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():stdgo.GoInt return int_.bitLen();
    @:embedded
    public function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return int_.bits();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return int_.float64();
    @:embedded
    public function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.gobEncode();
    @:embedded
    public function int64():stdgo.GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.not(_x);
    @:embedded
    public function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:stdgo.GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():stdgo.GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sqrt(_x);
    @:embedded
    public function string():stdgo.GoString return int_.string();
    @:embedded
    public function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:stdgo.GoInt):stdgo.GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():stdgo.GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():stdgo.GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_positiveInt(int_);
    }
}
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_prime_static_extension) class T_prime {
    @:embedded
    public var int_ : stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    public function new(?int_:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:stdgo.GoInt):stdgo.GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():stdgo.GoInt return int_.bitLen();
    @:embedded
    public function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return int_.bits();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return int_.float64();
    @:embedded
    public function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.gobEncode();
    @:embedded
    public function int64():stdgo.GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.not(_x);
    @:embedded
    public function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:stdgo.GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():stdgo.GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sqrt(_x);
    @:embedded
    public function string():stdgo.GoString return int_.string();
    @:embedded
    public function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:stdgo.GoInt):stdgo.GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():stdgo.GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():stdgo.GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_prime(int_);
    }
}
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_zeroOrOne_static_extension) class T_zeroOrOne {
    @:embedded
    public var _uint : stdgo.GoUInt = 0;
    public function new(?_uint:stdgo.GoUInt) {
        if (_uint != null) this._uint = _uint;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroOrOne(_uint);
    }
}
@:structInit @:private @:using(stdgo._internal.math.big_test.Big_test.T_smallUint_static_extension) class T_smallUint {
    @:embedded
    public var _uint : stdgo.GoUInt = 0;
    public function new(?_uint:stdgo.GoUInt) {
        if (_uint != null) this._uint = _uint;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_smallUint(_uint);
    }
}
function _equal(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Bool {
        return _z.cmp(_x) == ((0 : stdgo.GoInt));
    }
function _generatePositiveInt(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
        var _n = stdgo._internal.math.big.Big.newInt((1i64 : stdgo.GoInt64));
        _n.lsh(_n, (_rand.intn((_size * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt));
        _n.rand(_rand, _n);
        return _n;
    }
function _checkAliasingOneArg(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) -> stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Bool {
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_x), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_x);
var _v1 = __1, _x1 = __0;
        {
            var _out = _f(_v, _x);
            if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _v1);
            if (((_out != _v1) || !_equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x) != f(x, x)" : stdgo.GoString));
                return false;
            };
        };
        return _equal(_x, _x1);
    }
function _checkAliasingTwoArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) -> stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Bool {
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_x), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_y), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_v);
var _v1 = __2, _y1 = __1, _x1 = __0;
        {
            var _out = _f(_v, _x, _y);
            if (_out == null || (_out : Dynamic).__nil__) {
                return ((_equal(_x, _x1) && _equal(_y, _y1) : Bool) && _equal(_v, _v1) : Bool);
            } else if (_out != (_v)) {
                return false;
            };
        };
        _v1.set(_x);
        {
            var _out = _f(_v1, _v1, _y);
            if (((_out != _v1) || !_equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x, y) != f(x, x, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _x, _v1);
            if (((_out != _v1) || !_equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x, y) != f(y, x, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_v);
        var _y2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).set(_y);
        {
            var _out = _f(_v, _y, _y2);
            if (_out == null || (_out : Dynamic).__nil__) {
                return ((_equal(_y, _y1) && _equal(_y2, _y1) : Bool) && _equal(_v, _v1) : Bool);
            } else if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _y, _y);
            if (((_out != _v1) || !_equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, y1, y2) != f(v, y, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _v1, _v1);
            if (((_out != _v1) || !_equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, y1, y2) != f(y, y, y)" : stdgo.GoString));
                return false;
            };
        };
        return (_equal(_x, _x1) && _equal(_y, _y1) : Bool);
    }
function testAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_name => _f in ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("Abs" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, stdgo._internal.math.big.Big.Int__static_extension.abs, _v.int_, _x.int_);
            }));
x.set(("Add" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.add, _v.int_, _x.int_, _y.int_);
            }));
x.set(("And" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.and, _v.int_, _x.int_, _y.int_);
            }));
x.set(("AndNot" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.andNot, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Div" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.div, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Exp-XY" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.exp(_x, _y, _z.int_);
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Exp-XZ" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.exp(_x, _y.int_, _z);
                }, _v.int_, _x.int_, _z.int_);
            }));
x.set(("Exp-YZ" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.exp(_x.int_, _y, _z);
                }, _v.int_, _y.int_, _z.int_);
            }));
x.set(("GCD" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.gcd(null, null, _x, _y);
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("GCD-X" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
var _b = __1, _a = __0;
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    _a.gcd(_v, _b, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("GCD-Y" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
var _b = __1, _a = __0;
                return _checkAliasingTwoArgs(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    _a.gcd(_b, _v, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Lsh" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _n:T_smallUint):Bool {
                return _checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.lsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Mod" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.mod, _v.int_, _x.int_, _y.int_);
            }));
x.set(("ModInverse" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.modInverse, _v.int_, _x.int_, _y.int_);
            }));
x.set(("ModSqrt" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _p:T_prime):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.modSqrt, _v.int_, _x.int_, _p.int_);
            }));
x.set(("Mul" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.mul, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Neg" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, stdgo._internal.math.big.Big.Int__static_extension.neg, _v.int_, _x.int_);
            }));
x.set(("Not" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, stdgo._internal.math.big.Big.Int__static_extension.not, _v.int_, _x.int_);
            }));
x.set(("Or" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.or, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Quo" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.quo, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Rand" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _seed:stdgo.GoInt64):Bool {
                return _checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    var _rnd = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(_seed));
                    return _v.rand(_rnd, _x);
                }, _v.int_, _x.int_);
            }));
x.set(("Rem" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.rem, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Rsh" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _n:T_smallUint):Bool {
                return _checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.rsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Set" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, stdgo._internal.math.big.Big.Int__static_extension.set, _v.int_, _x.int_);
            }));
x.set(("SetBit" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _i:T_smallUint, _b:T_zeroOrOne):Bool {
                return _checkAliasingOneArg(_t, function(_v:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
                    return _v.setBit(_x, (_i._uint : stdgo.GoInt), _b._uint);
                }, _v.int_, _x.int_);
            }));
x.set(("Sqrt" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_positiveInt):Bool {
                return _checkAliasingOneArg(_t, stdgo._internal.math.big.Big.Int__static_extension.sqrt, _v.int_, _x.int_);
            }));
x.set(("Sub" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.sub, _v.int_, _x.int_, _y.int_);
            }));
x.set(("Xor" : stdgo.GoString), stdgo.Go.toInterface(function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, stdgo._internal.math.big.Big.Int__static_extension.xor, _v.int_, _x.int_, _y.int_);
            }));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) {
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _scale = (1 : stdgo.GoFloat64);
                {
                    final __value__ = _name;
                    if (__value__ == (("ModInverse" : stdgo.GoString)) || __value__ == (("GCD-Y" : stdgo.GoString)) || __value__ == (("GCD-X" : stdgo.GoString))) {
                        _scale = (_scale / (5 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("Rand" : stdgo.GoString))) {
                        _scale = (_scale / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("Exp-XZ" : stdgo.GoString)) || __value__ == (("Exp-XY" : stdgo.GoString)) || __value__ == (("Exp-YZ" : stdgo.GoString))) {
                        _scale = (_scale / (50 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    } else if (__value__ == (("ModSqrt" : stdgo.GoString))) {
                        _scale = (_scale / (500 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    };
                };
                {
                    var _err = stdgo._internal.testing.quick.Quick.check(_f, (stdgo.Go.setRef(({ maxCountScale : _scale } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function _recur(_n:stdgo.GoInt64, _lim:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Rat> {
        var _term = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big.Rat>);
        if ((_n % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((1i64 : stdgo.GoInt64))) {
            _term.setInt64((1i64 : stdgo.GoInt64));
        } else {
            _term.setInt64(((((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) / (3i64 : stdgo.GoInt64) : stdgo.GoInt64) * (2i64 : stdgo.GoInt64) : stdgo.GoInt64));
        };
        if ((_n > _lim : Bool)) {
            return _term;
        };
        var _frac = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big.Rat>).inv(_recur((_n + (1i64 : stdgo.GoInt64) : stdgo.GoInt64), _lim));
        return _term.add(_term, _frac);
    }
function example_eConvergents():Void {
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (15 : stdgo.GoInt) : Bool), _i++, {
                var _r = _recur((0i64 : stdgo.GoInt64), (_i : stdgo.GoInt64));
                stdgo._internal.fmt.Fmt.printf(("%-13s = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r.floatString((8 : stdgo.GoInt))));
            });
        };
    }
function exampleRat_SetString():Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big.Rat>);
        _r.setString(("355/113" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_r.floatString((3 : stdgo.GoInt))));
    }
function exampleInt_SetString():Void {
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
        _i.setString(("644" : stdgo.GoString), (8 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
function exampleFloat_SetString():Void {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>);
        _f.setString(("3.14159" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
    }
function exampleRat_Scan():Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big.Rat>);
        var __tmp__ = stdgo._internal.fmt.Fmt.sscan(("1.5000" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.println(stdgo.Go.toInterface(("error scanning value:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        } else {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
function exampleInt_Scan():Void {
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
        var __tmp__ = stdgo._internal.fmt.Fmt.sscan(("18446744073709551617" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.println(stdgo.Go.toInterface(("error scanning value:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        } else {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
        };
    }
function exampleFloat_Scan():Void {
        var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>);
        var __tmp__ = stdgo._internal.fmt.Fmt.sscan(("1.19282e99" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.println(stdgo.Go.toInterface(("error scanning value:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        } else {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
    }
function example_fibonacci():Void {
        var _a = stdgo._internal.math.big.Big.newInt((0i64 : stdgo.GoInt64));
        var _b = stdgo._internal.math.big.Big.newInt((1i64 : stdgo.GoInt64));
        var _limit:stdgo._internal.math.big.Big.Int_ = ({} : stdgo._internal.math.big.Big.Int_);
        _limit.exp(stdgo._internal.math.big.Big.newInt((10i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big.newInt((99i64 : stdgo.GoInt64)), null);
        while ((_a.cmp((stdgo.Go.setRef(_limit) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>)) < (0 : stdgo.GoInt) : Bool)) {
            _a.add(_a, _b);
            {
                final __tmp__0 = _b;
                final __tmp__1 = _a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a.probablyPrime((20 : stdgo.GoInt))));
    }
function example_sqrt2():Void {
        {};
        var _steps = (stdgo._internal.math.Math.log2((200 : stdgo.GoFloat64)) : stdgo.GoInt);
        var _two = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>).setPrec((200u32 : stdgo.GoUInt)).setInt64((2i64 : stdgo.GoInt64));
        var _half = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>).setPrec((200u32 : stdgo.GoUInt)).setFloat64((0.5 : stdgo.GoFloat64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>).setPrec((200u32 : stdgo.GoUInt)).setInt64((1i64 : stdgo.GoInt64));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= _steps : Bool), _i++, {
                _t.quo(_two, _x);
                _t.add(_x, _t);
                _x.mul(_half, _t);
            });
        };
        stdgo._internal.fmt.Fmt.printf(("sqrt(2) = %.50f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        _t.mul(_x, _x);
        stdgo._internal.fmt.Fmt.printf(("error = %e\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t.sub(_two, _t))));
    }
function exampleFloat_Add():Void {
        var __0:stdgo._internal.math.big.Big.Float_ = ({} : stdgo._internal.math.big.Big.Float_), __1:stdgo._internal.math.big.Big.Float_ = ({} : stdgo._internal.math.big.Big.Float_), __2:stdgo._internal.math.big.Big.Float_ = ({} : stdgo._internal.math.big.Big.Float_);
var _z = __2, _y = __1, _x = __0;
        _x.setInt64((1000i64 : stdgo.GoInt64));
        _y.setFloat64((2.718281828 : stdgo.GoFloat64));
        _z.setPrec((32u32 : stdgo.GoUInt));
        _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>));
        stdgo._internal.fmt.Fmt.printf(("x = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>))), stdgo.Go.toInterface(_x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_x.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.acc())));
        stdgo._internal.fmt.Fmt.printf(("y = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>))), stdgo.Go.toInterface(_y.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_y.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.acc())));
        stdgo._internal.fmt.Fmt.printf(("z = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>))), stdgo.Go.toInterface(_z.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_z.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_z.acc())));
    }
function exampleFloat_shift():Void {
        {
            var _s = (-5 : stdgo.GoInt);
            stdgo.Go.cfor((_s <= (5 : stdgo.GoInt) : Bool), _s++, {
                var _x = stdgo._internal.math.big.Big.newFloat((0.5 : stdgo.GoFloat64));
                _x.setMantExp(_x, (_x.mantExp(null) + _s : stdgo.GoInt));
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            });
        };
    }
function exampleFloat_Cmp():Void {
        var _inf = stdgo._internal.math.Math.inf((1 : stdgo.GoInt));
        var _zero = (0 : stdgo.GoFloat64);
        var _operands = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[-_inf, (-1.2 : stdgo.GoFloat64), -_zero, (0 : stdgo.GoFloat64), (1.2 : stdgo.GoFloat64), _inf]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("   x     y  cmp" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("---------------" : stdgo.GoString)));
        for (__0 => _x64 in _operands) {
            var _x = stdgo._internal.math.big.Big.newFloat(_x64);
            for (__1 => _y64 in _operands) {
                var _y = stdgo._internal.math.big.Big.newFloat(_y64);
                stdgo._internal.fmt.Fmt.printf(("%4g  %4g  %3d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(_x.cmp(_y)));
            };
            stdgo._internal.fmt.Fmt.println();
        };
    }
function exampleRoundingMode():Void {
        var _operands = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(2.6 : stdgo.GoFloat64), (2.5 : stdgo.GoFloat64), (2.1 : stdgo.GoFloat64), (-2.1 : stdgo.GoFloat64), (-2.5 : stdgo.GoFloat64), (-2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(("   x" : stdgo.GoString)));
        {
            var _mode = (0 : stdgo._internal.math.big.Big.RoundingMode);
            stdgo.Go.cfor((_mode <= (5 : stdgo._internal.math.big.Big.RoundingMode) : Bool), _mode++, {
                stdgo._internal.fmt.Fmt.printf(("  %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            });
        };
        stdgo._internal.fmt.Fmt.println();
        for (__0 => _f64 in _operands) {
            stdgo._internal.fmt.Fmt.printf(("%4g" : stdgo.GoString), stdgo.Go.toInterface(_f64));
            {
                var _mode = (0 : stdgo._internal.math.big.Big.RoundingMode);
                stdgo.Go.cfor((_mode <= (5 : stdgo._internal.math.big.Big.RoundingMode) : Bool), _mode++, {
                    var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>).setPrec((2u32 : stdgo.GoUInt)).setMode(_mode).setFloat64(_f64);
                    stdgo._internal.fmt.Fmt.printf(("  %*g" : stdgo.GoString), stdgo.Go.toInterface(((_mode.string() : stdgo.GoString).length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
                });
            };
            stdgo._internal.fmt.Fmt.println();
        };
    }
class T_bigInt_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public dynamic function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public dynamic function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public dynamic function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public dynamic function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public dynamic function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public dynamic function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(__0);
    @:embedded
    public dynamic function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:embedded
    public dynamic function trailingZeroBits():stdgo.GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public dynamic function text(_i:stdgo.GoInt):stdgo.GoString return __self__.value.text(_i);
    @:embedded
    public dynamic function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sqrt(_x);
    @:embedded
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:embedded
    public dynamic function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setUint64(__0);
    @:embedded
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public dynamic function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setInt64(__0);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBits(__0);
    @:embedded
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.set(_x);
    @:embedded
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:embedded
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public dynamic function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public dynamic function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public dynamic function probablyPrime(_i:stdgo.GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public dynamic function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.or(_z, _x);
    @:embedded
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.not(_x);
    @:embedded
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.neg(_x);
    @:embedded
    public dynamic function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public dynamic function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public dynamic function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public dynamic function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public dynamic function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:embedded
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:embedded
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public dynamic function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public dynamic function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public dynamic function int64():stdgo.GoInt64 return __self__.value.int64();
    @:embedded
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:embedded
    public dynamic function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(__0);
    @:embedded
    public dynamic function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public dynamic function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.value.float64();
    @:embedded
    public dynamic function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public dynamic function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.div(_z, _x);
    @:embedded
    public dynamic function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public dynamic function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmp(_x);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.value.bits();
    @:embedded
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:embedded
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return __self__.value.bit(_i);
    @:embedded
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public dynamic function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public dynamic function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.and(_z, _x);
    @:embedded
    public dynamic function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.add(_z, _x);
    @:embedded
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bigInt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_bigInt_asInterface) class T_bigInt_static_extension {
    @:keep
    static public function generate( _:T_bigInt, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_bigInt = _?.__copy__();
        var _n = _generatePositiveInt(_rand, _size);
        if (_rand.intn((4 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            _n.neg(_n);
        };
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_bigInt(_n) : stdgo._internal.math.big_test.Big_test.T_bigInt))))?.__copy__();
    }
    @:embedded
    public static function _setFromScanner( __self__:T_bigInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_bigInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_bigInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_bigInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_bigInt):stdgo.GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_bigInt):stdgo.GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_bigInt, _i:stdgo.GoInt):stdgo.GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_bigInt):stdgo.GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_bigInt):stdgo.GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_bigInt, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_bigInt, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_bigInt, __0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_bigInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_bigInt, __0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_bigInt, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_bigInt, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_bigInt, _i:stdgo.GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_bigInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_bigInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_bigInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_bigInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_bigInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_bigInt):stdgo.GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_bigInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_bigInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_bigInt, _s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function float64( __self__:T_bigInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.float64();
    @:embedded
    public static function fillBytes( __self__:T_bigInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_bigInt):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_bigInt):stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_bigInt):stdgo.GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_bigInt, _i:stdgo.GoInt):stdgo.GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_bigInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_bigInt, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_bigInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_bigInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.abs(_x);
}
class T_notZeroInt_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public dynamic function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public dynamic function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public dynamic function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public dynamic function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public dynamic function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public dynamic function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(__0);
    @:embedded
    public dynamic function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:embedded
    public dynamic function trailingZeroBits():stdgo.GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public dynamic function text(_i:stdgo.GoInt):stdgo.GoString return __self__.value.text(_i);
    @:embedded
    public dynamic function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sqrt(_x);
    @:embedded
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:embedded
    public dynamic function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setUint64(__0);
    @:embedded
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public dynamic function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setInt64(__0);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBits(__0);
    @:embedded
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.set(_x);
    @:embedded
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:embedded
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public dynamic function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public dynamic function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public dynamic function probablyPrime(_i:stdgo.GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public dynamic function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.or(_z, _x);
    @:embedded
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.not(_x);
    @:embedded
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.neg(_x);
    @:embedded
    public dynamic function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public dynamic function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public dynamic function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public dynamic function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public dynamic function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:embedded
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:embedded
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public dynamic function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public dynamic function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public dynamic function int64():stdgo.GoInt64 return __self__.value.int64();
    @:embedded
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:embedded
    public dynamic function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(__0);
    @:embedded
    public dynamic function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public dynamic function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.value.float64();
    @:embedded
    public dynamic function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public dynamic function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.div(_z, _x);
    @:embedded
    public dynamic function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public dynamic function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmp(_x);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.value.bits();
    @:embedded
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:embedded
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return __self__.value.bit(_i);
    @:embedded
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public dynamic function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public dynamic function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.and(_z, _x);
    @:embedded
    public dynamic function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.add(_z, _x);
    @:embedded
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_notZeroInt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_notZeroInt_asInterface) class T_notZeroInt_static_extension {
    @:keep
    static public function generate( _:T_notZeroInt, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_notZeroInt = _?.__copy__();
        var _n = _generatePositiveInt(_rand, _size);
        if (_rand.intn((4 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            _n.neg(_n);
        };
        if (_n.sign() == ((0 : stdgo.GoInt))) {
            _n.setInt64((1i64 : stdgo.GoInt64));
        };
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_notZeroInt(_n) : stdgo._internal.math.big_test.Big_test.T_notZeroInt))))?.__copy__();
    }
    @:embedded
    public static function _setFromScanner( __self__:T_notZeroInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_notZeroInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_notZeroInt):stdgo.GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_notZeroInt):stdgo.GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_notZeroInt, _i:stdgo.GoInt):stdgo.GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_notZeroInt):stdgo.GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_notZeroInt):stdgo.GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_notZeroInt, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_notZeroInt, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_notZeroInt, __0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_notZeroInt, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_notZeroInt, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_notZeroInt, _i:stdgo.GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_notZeroInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_notZeroInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_notZeroInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_notZeroInt):stdgo.GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_notZeroInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_notZeroInt, _s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function float64( __self__:T_notZeroInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.float64();
    @:embedded
    public static function fillBytes( __self__:T_notZeroInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_notZeroInt):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_notZeroInt):stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_notZeroInt):stdgo.GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_notZeroInt, _i:stdgo.GoInt):stdgo.GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_notZeroInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_notZeroInt, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_notZeroInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_notZeroInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.abs(_x);
}
class T_positiveInt_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public dynamic function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public dynamic function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public dynamic function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public dynamic function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public dynamic function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public dynamic function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(__0);
    @:embedded
    public dynamic function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:embedded
    public dynamic function trailingZeroBits():stdgo.GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public dynamic function text(_i:stdgo.GoInt):stdgo.GoString return __self__.value.text(_i);
    @:embedded
    public dynamic function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sqrt(_x);
    @:embedded
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:embedded
    public dynamic function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setUint64(__0);
    @:embedded
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public dynamic function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setInt64(__0);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBits(__0);
    @:embedded
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.set(_x);
    @:embedded
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:embedded
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public dynamic function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public dynamic function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public dynamic function probablyPrime(_i:stdgo.GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public dynamic function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.or(_z, _x);
    @:embedded
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.not(_x);
    @:embedded
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.neg(_x);
    @:embedded
    public dynamic function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public dynamic function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public dynamic function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public dynamic function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public dynamic function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:embedded
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:embedded
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public dynamic function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public dynamic function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public dynamic function int64():stdgo.GoInt64 return __self__.value.int64();
    @:embedded
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:embedded
    public dynamic function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(__0);
    @:embedded
    public dynamic function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public dynamic function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.value.float64();
    @:embedded
    public dynamic function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public dynamic function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.div(_z, _x);
    @:embedded
    public dynamic function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public dynamic function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmp(_x);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.value.bits();
    @:embedded
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:embedded
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return __self__.value.bit(_i);
    @:embedded
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public dynamic function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public dynamic function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.and(_z, _x);
    @:embedded
    public dynamic function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.add(_z, _x);
    @:embedded
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_positiveInt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_positiveInt_asInterface) class T_positiveInt_static_extension {
    @:keep
    static public function generate( _:T_positiveInt, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_positiveInt = _?.__copy__();
        var _n = _generatePositiveInt(_rand, _size);
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_positiveInt(_n) : stdgo._internal.math.big_test.Big_test.T_positiveInt))))?.__copy__();
    }
    @:embedded
    public static function _setFromScanner( __self__:T_positiveInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_positiveInt, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_positiveInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_positiveInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_positiveInt):stdgo.GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_positiveInt):stdgo.GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_positiveInt, _i:stdgo.GoInt):stdgo.GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_positiveInt):stdgo.GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_positiveInt):stdgo.GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_positiveInt, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_positiveInt, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_positiveInt, __0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_positiveInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_positiveInt, __0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_positiveInt, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_positiveInt, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_positiveInt, _i:stdgo.GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_positiveInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_positiveInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_positiveInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_positiveInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_positiveInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_positiveInt):stdgo.GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_positiveInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_positiveInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_positiveInt, _s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function float64( __self__:T_positiveInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.float64();
    @:embedded
    public static function fillBytes( __self__:T_positiveInt, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_positiveInt):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_positiveInt):stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_positiveInt):stdgo.GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_positiveInt, _i:stdgo.GoInt):stdgo.GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_positiveInt, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_positiveInt, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_positiveInt, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_positiveInt, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.abs(_x);
}
class T_prime_asInterface {
    @:keep
    public dynamic function generate(_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_r, _size);
    @:embedded
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public dynamic function _scan(_r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public dynamic function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public dynamic function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public dynamic function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public dynamic function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public dynamic function unmarshalText(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(__0);
    @:embedded
    public dynamic function unmarshalJSON(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:embedded
    public dynamic function trailingZeroBits():stdgo.GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public dynamic function text(_i:stdgo.GoInt):stdgo.GoString return __self__.value.text(_i);
    @:embedded
    public dynamic function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.sqrt(_x);
    @:embedded
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:embedded
    public dynamic function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setUint64(__0);
    @:embedded
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public dynamic function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setInt64(__0);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBits(__0);
    @:embedded
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.set(_x);
    @:embedded
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:embedded
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public dynamic function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public dynamic function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public dynamic function probablyPrime(_i:stdgo.GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public dynamic function or(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.or(_z, _x);
    @:embedded
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.not(_x);
    @:embedded
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.neg(_x);
    @:embedded
    public dynamic function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public dynamic function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public dynamic function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public dynamic function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public dynamic function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:embedded
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:embedded
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public dynamic function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public dynamic function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public dynamic function int64():stdgo.GoInt64 return __self__.value.int64();
    @:embedded
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:embedded
    public dynamic function gobDecode(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(__0);
    @:embedded
    public dynamic function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public dynamic function format(_s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.value.float64();
    @:embedded
    public dynamic function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public dynamic function div(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.div(_z, _x);
    @:embedded
    public dynamic function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public dynamic function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.value.cmp(_x);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.value.bits();
    @:embedded
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:embedded
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return __self__.value.bit(_i);
    @:embedded
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public dynamic function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public dynamic function and(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.and(_z, _x);
    @:embedded
    public dynamic function add(_z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.add(_z, _x);
    @:embedded
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_prime>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_prime_asInterface) class T_prime_static_extension {
    @:keep
    static public function generate( _:T_prime, _r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_prime = _?.__copy__();
        var __tmp__ = stdgo._internal.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (_r.intn(((_size * (8 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) + (2 : stdgo.GoInt) : stdgo.GoInt)), _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_prime(_n) : stdgo._internal.math.big_test.Big_test.T_prime))))?.__copy__();
    }
    @:embedded
    public static function _setFromScanner( __self__:T_prime, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_prime, _r:stdgo._internal.io.Io.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _f:stdgo._internal.math.big.Big.T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_prime, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_prime, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_prime):stdgo.GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_prime):stdgo.GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_prime, _i:stdgo.GoInt):stdgo.GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_prime):stdgo.GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_prime):stdgo.GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_prime, __0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_prime, _s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_prime, __0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_prime, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_prime, __0:stdgo.Slice<stdgo._internal.math.big.Big.Word>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_prime, _s:stdgo._internal.fmt.Fmt.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_prime, _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_prime, _i:stdgo.GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_prime, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_prime):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_prime):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_prime):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_prime):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_prime):stdgo.GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_prime):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_prime, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_prime, _s:stdgo._internal.fmt.Fmt.State, _ch:stdgo.GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function float64( __self__:T_prime):{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big.Accuracy; } return __self__.float64();
    @:embedded
    public static function fillBytes( __self__:T_prime, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big.Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_prime):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_prime):stdgo.Slice<stdgo._internal.math.big.Big.Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_prime):stdgo.GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_prime, _i:stdgo.GoInt):stdgo.GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_prime, _n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_prime, _buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_prime, _z:stdgo.Ref<stdgo._internal.math.big.Big.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_prime, _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):stdgo.Ref<stdgo._internal.math.big.Big.Int_> return __self__.abs(_x);
}
class T_zeroOrOne_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_zeroOrOne>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_zeroOrOne_asInterface) class T_zeroOrOne_static_extension {
    @:keep
    static public function generate( _:T_zeroOrOne, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_zeroOrOne = _?.__copy__();
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_zeroOrOne((_rand.intn((2 : stdgo.GoInt)) : stdgo.GoUInt)) : stdgo._internal.math.big_test.Big_test.T_zeroOrOne))))?.__copy__();
    }
}
class T_smallUint_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_smallUint>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.big_test.Big_test.T_smallUint_asInterface) class T_smallUint_static_extension {
    @:keep
    static public function generate( _:T_smallUint, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_smallUint = _?.__copy__();
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.math.big_test.Big_test.T_smallUint((_rand.intn((1024 : stdgo.GoInt)) : stdgo.GoUInt)) : stdgo._internal.math.big_test.Big_test.T_smallUint))))?.__copy__();
    }
}
