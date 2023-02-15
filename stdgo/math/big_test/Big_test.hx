package stdgo.math.big_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_bigInt_static_extension) class T_bigInt {
    @:embedded
    public var int_ : Ref<Int_> = (null : Ref<Int_>);
    public function new(?int_:Ref<Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:GoInt):GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():GoInt return int_.bitLen();
    @:embedded
    public function bits():Slice<Word> return int_.bits();
    @:embedded
    public function bytes():Slice<GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.gobEncode();
    @:embedded
    public function int64():GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return int_.not(_x);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return int_.sqrt(_x);
    @:embedded
    public function string():GoString return int_.string();
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:GoInt):GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_bigInt(int_);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_notZeroInt_static_extension) class T_notZeroInt {
    @:embedded
    public var int_ : Ref<Int_> = (null : Ref<Int_>);
    public function new(?int_:Ref<Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:GoInt):GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():GoInt return int_.bitLen();
    @:embedded
    public function bits():Slice<Word> return int_.bits();
    @:embedded
    public function bytes():Slice<GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.gobEncode();
    @:embedded
    public function int64():GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return int_.not(_x);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return int_.sqrt(_x);
    @:embedded
    public function string():GoString return int_.string();
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:GoInt):GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_notZeroInt(int_);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_positiveInt_static_extension) class T_positiveInt {
    @:embedded
    public var int_ : Ref<Int_> = (null : Ref<Int_>);
    public function new(?int_:Ref<Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:GoInt):GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():GoInt return int_.bitLen();
    @:embedded
    public function bits():Slice<Word> return int_.bits();
    @:embedded
    public function bytes():Slice<GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.gobEncode();
    @:embedded
    public function int64():GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return int_.not(_x);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return int_.sqrt(_x);
    @:embedded
    public function string():GoString return int_.string();
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:GoInt):GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_positiveInt(int_);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_prime_static_extension) class T_prime {
    @:embedded
    public var int_ : Ref<Int_> = (null : Ref<Int_>);
    public function new(?int_:Ref<Int_>) {
        if (int_ != null) this.int_ = int_;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return int_.abs(_x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.add(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.and(_z, _x);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.andNot(_z, _x);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return int_.append(_buf, _base);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.binomial(_n, _k);
    @:embedded
    public function bit(_i:GoInt):GoUInt return int_.bit(_i);
    @:embedded
    public function bitLen():GoInt return int_.bitLen();
    @:embedded
    public function bits():Slice<Word> return int_.bits();
    @:embedded
    public function bytes():Slice<GoUInt8> return int_.bytes();
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return int_.cmp(_x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return int_.cmpAbs(_x);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.div(_z, _x);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.divMod(_x, _y, _m);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_.exp(_x, _y, _m);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return int_.fillBytes(__0);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32) int_.format(_s, _ch);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_.gcd(_x, _y, _a, _b);
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return int_.gobDecode(__0);
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.gobEncode();
    @:embedded
    public function int64():GoInt64 return int_.int64();
    @:embedded
    public function isInt64():Bool return int_.isInt64();
    @:embedded
    public function isUint64():Bool return int_.isUint64();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.lsh(_x, _n);
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalJSON();
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return int_.marshalText();
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mod(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modInverse(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.modSqrt(_z, _x);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.mul(_z, _x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return int_.mulRange(_n, _k);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return int_.neg(_x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return int_.not(_x);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.or(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return int_.probablyPrime(_i);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.quo(_z, _x);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return int_.quoRem(_x, _y, _m);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return int_.rand(_rnd, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.rem(_z, _x);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return int_.rsh(_x, _n);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return int_.scan(_s, _ch);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return int_.set(_x);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return int_.setBit(_x, _i, _b);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return int_.setBits(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return int_.setBytes(__0);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return int_.setInt64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_.setString(_s, _base);
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return int_.setUint64(__0);
    @:embedded
    public function sign():GoInt return int_.sign();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return int_.sqrt(_x);
    @:embedded
    public function string():GoString return int_.string();
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.sub(_z, _x);
    @:embedded
    public function text(_i:GoInt):GoString return int_.text(_i);
    @:embedded
    public function trailingZeroBits():GoUInt return int_.trailingZeroBits();
    @:embedded
    public function uint64():GoUInt64 return int_.uint64();
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return int_.unmarshalJSON(__0);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return int_.unmarshalText(__0);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_.xor(_z, _x);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return int_._exp(_x, _y, _m, _slow);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return int_._expSlow(_x, _y, _m);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return int_._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return int_._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat) int_._scaleDenom(_x, _f);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return int_._scan(_r, _base);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return int_._setFromScanner(_r, _base);
    public function __copy__() {
        return new T_prime(int_);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_zeroOrOne_static_extension) class T_zeroOrOne {
    @:embedded
    public var _uint : GoUInt = 0;
    public function new(?_uint:GoUInt) {
        if (_uint != null) this._uint = _uint;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroOrOne(_uint);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.math.big_test.Big_test.T_smallUint_static_extension) class T_smallUint {
    @:embedded
    public var _uint : GoUInt = 0;
    public function new(?_uint:GoUInt) {
        if (_uint != null) this._uint = _uint;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_smallUint(_uint);
    }
}
private function _equal(_z:Ref<Int_>, _x:Ref<Int_>):Bool {
        return _z.cmp(_x) == ((0 : GoInt));
    }
private function _generatePositiveInt(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):Ref<Int_> {
        var _n = stdgo.math.big.Big.newInt(("1" : GoInt64));
        _n.lsh(_n, (_rand.intn(_size * (8 : GoInt)) : GoUInt));
        _n.rand(_rand, _n);
        return _n;
    }
/**
    // checkAliasingOneArg checks if f returns a correct result when v and x alias.
    //
    // f is a function that takes x as an argument, doesn't modify it, sets v to the
    // result, and returns v. It is the function signature of unbound methods like
    //
    //	func (v *big.Int) m(x *big.Int) *big.Int
    //
    // v and x are two random Int values. v is randomized even if it will be
    // overwritten to test for improper buffer reuse.
**/
private function _checkAliasingOneArg(_t:Ref<stdgo.testing.Testing.T>, _f:(_v:Ref<Int_>, _x:Ref<Int_>) -> Ref<Int_>, _v:Ref<Int_>, _x:Ref<Int_>):Bool {
        var _0 = ({} : Int_).set(_x), _1 = ({} : Int_).set(_x), _v1 = _1, _x1 = _0;
        {
            var _out = _f(_v, _x);
            if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _v1);
            if ((_out != _v1) || !_equal(_v1, _v)) {
                _t.logf(("f(v, x) != f(x, x)" : GoString));
                return false;
            };
        };
        return _equal(_x, _x1);
    }
/**
    // checkAliasingTwoArgs checks if f returns a correct result when any
    // combination of v, x and y alias.
    //
    // f is a function that takes x and y as arguments, doesn't modify them, sets v
    // to the result, and returns v. It is the function signature of unbound methods
    // like
    //
    //	func (v *big.Int) m(x, y *big.Int) *big.Int
    //
    // v, x and y are random Int values. v is randomized even if it will be
    // overwritten to test for improper buffer reuse.
**/
private function _checkAliasingTwoArgs(_t:Ref<stdgo.testing.Testing.T>, _f:(_v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>) -> Ref<Int_>, _v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>):Bool {
        var _0 = ({} : Int_).set(_x), _1 = ({} : Int_).set(_y), _2 = ({} : Int_).set(_v), _v1 = _2, _y1 = _1, _x1 = _0;
        {
            var _out = _f(_v, _x, _y);
            if (_out == null) {
                return (_equal(_x, _x1) && _equal(_y, _y1)) && _equal(_v, _v1);
            } else if (_out != (_v)) {
                return false;
            };
        };
        _v1.set(_x);
        {
            var _out = _f(_v1, _v1, _y);
            if ((_out != _v1) || !_equal(_v1, _v)) {
                _t.logf(("f(v, x, y) != f(x, x, y)" : GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _x, _v1);
            if ((_out != _v1) || !_equal(_v1, _v)) {
                _t.logf(("f(v, x, y) != f(y, x, y)" : GoString));
                return false;
            };
        };
        _v1.set(_v);
        var _y2 = ({} : Int_).set(_y);
        {
            var _out = _f(_v, _y, _y2);
            if (_out == null) {
                return (_equal(_y, _y1) && _equal(_y2, _y1)) && _equal(_v, _v1);
            } else if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _y, _y);
            if ((_out != _v1) || !_equal(_v1, _v)) {
                _t.logf(("f(v, y1, y2) != f(v, y, y)" : GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _v1, _v1);
            if ((_out != _v1) || !_equal(_v1, _v)) {
                _t.logf(("f(v, y1, y2) != f(y, y, y)" : GoString));
                return false;
            };
        };
        return _equal(_x, _x1) && _equal(_y, _y1);
    }
function testAliasing(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_name => _f in ({
            final x = new stdgo.GoMap.GoObjectMap<GoString, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })));
            @:privateAccess x._keys = [
("Abs" : GoString),
("Add" : GoString),
("And" : GoString),
("AndNot" : GoString),
("Div" : GoString),
("Exp-XY" : GoString),
("Exp-XZ" : GoString),
("Exp-YZ" : GoString),
("GCD" : GoString),
("GCD-X" : GoString),
("GCD-Y" : GoString),
("Lsh" : GoString),
("Mod" : GoString),
("ModInverse" : GoString),
("ModSqrt" : GoString),
("Mul" : GoString),
("Neg" : GoString),
("Not" : GoString),
("Or" : GoString),
("Quo" : GoString),
("Rand" : GoString),
("Rem" : GoString),
("Rsh" : GoString),
("Set" : GoString),
("SetBit" : GoString),
("Sqrt" : GoString),
("Sub" : GoString),
("Xor" : GoString)];
            @:privateAccess x._values = [
function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, (stdgo.math.big.Big.int_).abs, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).add, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).and, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).andNot, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).div, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>):Ref<Int_> {
                    return _v.exp(_x, _y, _z.int_);
                }, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _x:Ref<Int_>, _z:Ref<Int_>):Ref<Int_> {
                    return _v.exp(_x, _y.int_, _z);
                }, _v.int_, _x.int_, _z.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt, _z:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _y:Ref<Int_>, _z:Ref<Int_>):Ref<Int_> {
                    return _v.exp(_x.int_, _y, _z);
                }, _v.int_, _y.int_, _z.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>):Ref<Int_> {
                    return _v.gcd(null, null, _x, _y);
                }, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                var _0 = ({} : Int_), _1 = ({} : Int_), _b = _1, _a = _0;
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>):Ref<Int_> {
                    _a.gcd(_v, _b, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                var _0 = ({} : Int_), _1 = ({} : Int_), _b = _1, _a = _0;
                return _checkAliasingTwoArgs(_t, function(_v:Ref<Int_>, _x:Ref<Int_>, _y:Ref<Int_>):Ref<Int_> {
                    _a.gcd(_b, _v, _x, _y);
                    return _v;
                }, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _n:T_smallUint):Bool {
                return _checkAliasingOneArg(_t, function(_v:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> {
                    return _v.lsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).mod, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).modInverse, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _p:T_prime):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).modSqrt, _v.int_, _x.int_, _p.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).mul, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, (stdgo.math.big.Big.int_).neg, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, (stdgo.math.big.Big.int_).not, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).or, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).quo, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _seed:GoInt64):Bool {
                return _checkAliasingOneArg(_t, function(_v:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> {
                    var _rnd = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_seed));
                    return _v.rand(_rnd, _x);
                }, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_notZeroInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).rem, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _n:T_smallUint):Bool {
                return _checkAliasingOneArg(_t, function(_v:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> {
                    return _v.rsh(_x, _n._uint);
                }, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt):Bool {
                return _checkAliasingOneArg(_t, (stdgo.math.big.Big.int_).set, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _i:T_smallUint, _b:T_zeroOrOne):Bool {
                return _checkAliasingOneArg(_t, function(_v:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> {
                    return _v.setBit(_x, (_i._uint : GoInt), _b._uint);
                }, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_positiveInt):Bool {
                return _checkAliasingOneArg(_t, (stdgo.math.big.Big.int_).sqrt, _v.int_, _x.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).sub, _v.int_, _x.int_, _y.int_);
            },
function(_v:T_bigInt, _x:T_bigInt, _y:T_bigInt):Bool {
                return _checkAliasingTwoArgs(_t, (stdgo.math.big.Big.int_).xor, _v.int_, _x.int_, _y.int_);
            }];
            x;
        } : stdgo.GoMap<GoString, AnyInterface>)) {
            _t.run(_name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _scale:GoFloat64 = (1 : GoFloat64);
                if (_name == (("ModInverse" : GoString)) || _name == (("GCD-Y" : GoString)) || _name == (("GCD-X" : GoString))) {
                    _scale = _scale / (5 : GoFloat64);
                } else if (_name == (("Rand" : GoString))) {
                    _scale = _scale / (10 : GoFloat64);
                } else if (_name == (("Exp-XZ" : GoString)) || _name == (("Exp-XY" : GoString)) || _name == (("Exp-YZ" : GoString))) {
                    _scale = _scale / (50 : GoFloat64);
                } else if (_name == (("ModSqrt" : GoString))) {
                    _scale = _scale / (500 : GoFloat64);
                };
                {
                    var _err:Error = stdgo.testing.quick.Quick.check(_f, (({ maxCountScale : _scale } : stdgo.testing.quick.Quick.Config) : Ref<stdgo.testing.quick.Quick.Config>));
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // Use the classic continued fraction for e
    //
    //	e = [1; 0, 1, 1, 2, 1, 1, ... 2n, 1, 1, ...]
    //
    // i.e., for the nth term, use
    //
    //	   1          if   n mod 3 != 1
    //	(n-1)/3 * 2   if   n mod 3 == 1
**/
private function _recur(_n:GoInt64, _lim:GoInt64):Ref<Rat> {
        var _term = ({} : Rat);
        if (_n % ("3" : GoInt64) != (("1" : GoInt64))) {
            _term.setInt64(("1" : GoInt64));
        } else {
            _term.setInt64(((_n - (("1" : GoInt64) : GoInt64)) / (("3" : GoInt64) : GoInt64)) * ("2" : GoInt64));
        };
        if (_n > _lim) {
            return _term;
        };
        var _frac = ({} : Rat).inv(_recur(_n + ("1" : GoInt64), _lim));
        return _term.add(_term, _frac);
    }
/**
    // This example demonstrates how to use big.Rat to compute the
    // first 15 terms in the sequence of rational convergents for
    // the constant e (base of natural logarithm).
**/
function example_eConvergents():Void {
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i <= (15 : GoInt), _i++, {
                var _r = _recur(("0" : GoInt64), (_i : GoInt64));
                stdgo.fmt.Fmt.printf(("%-13s = %s\n" : GoString), Go.toInterface(Go.asInterface(_r)), Go.toInterface(_r.floatString((8 : GoInt))));
            });
        };
    }
function exampleRat_SetString():Void {
        var _r = ({} : Rat);
        _r.setString(("355/113" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_r.floatString((3 : GoInt))));
    }
function exampleInt_SetString():Void {
        var _i = ({} : Int_);
        _i.setString(("644" : GoString), (8 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_i)));
    }
function exampleFloat_SetString():Void {
        var _f = ({} : Float_);
        _f.setString(("3.14159" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_f)));
    }
function exampleRat_Scan():Void {
        var _r = ({} : Rat);
        var __tmp__ = stdgo.fmt.Fmt.sscan(("1.5000" : GoString), Go.toInterface(Go.asInterface(_r))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(("error scanning value:" : GoString)), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_r)));
        };
    }
function exampleInt_Scan():Void {
        var _i = ({} : Int_);
        var __tmp__ = stdgo.fmt.Fmt.sscan(("18446744073709551617" : GoString), Go.toInterface(Go.asInterface(_i))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(("error scanning value:" : GoString)), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_i)));
        };
    }
function exampleFloat_Scan():Void {
        var _f = ({} : Float_);
        var __tmp__ = stdgo.fmt.Fmt.sscan(("1.19282e99" : GoString), Go.toInterface(Go.asInterface(_f))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(("error scanning value:" : GoString)), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_f)));
        };
    }
/**
    // This example demonstrates how to use big.Int to compute the smallest
    // Fibonacci number with 100 decimal digits and to test whether it is prime.
**/
function example_fibonacci():Void {
        var _a = stdgo.math.big.Big.newInt(("0" : GoInt64));
        var _b = stdgo.math.big.Big.newInt(("1" : GoInt64));
        var _limit:Int_ = ({} : Int_);
        _limit.exp(stdgo.math.big.Big.newInt(("10" : GoInt64)), stdgo.math.big.Big.newInt(("99" : GoInt64)), null);
        while (_a.cmp((_limit : Ref<Int_>)) < (0 : GoInt)) {
            _a.add(_a, _b);
            {
                final __tmp__0 = _b;
                final __tmp__1 = _a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_a)));
        stdgo.fmt.Fmt.println(Go.toInterface(_a.probablyPrime((20 : GoInt))));
    }
/**
    // This example shows how to use big.Float to compute the square root of 2 with
    // a precision of 200 bits, and how to print the result as a decimal number.
**/
function example_sqrt2():Void {
        {};
        var _steps:GoInt = (stdgo.math.Math.log2((200 : GoFloat64)) : GoInt);
        var _two = ({} : Float_).setPrec(("200" : GoUInt)).setInt64(("2" : GoInt64));
        var _half = ({} : Float_).setPrec(("200" : GoUInt)).setFloat64((0.5 : GoFloat64));
        var _x = ({} : Float_).setPrec(("200" : GoUInt)).setInt64(("1" : GoInt64));
        var _t = ({} : Float_);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= _steps, _i++, {
                _t.quo(_two, _x);
                _t.add(_x, _t);
                _x.mul(_half, _t);
            });
        };
        stdgo.fmt.Fmt.printf(("sqrt(2) = %.50f\n" : GoString), Go.toInterface(Go.asInterface(_x)));
        _t.mul(_x, _x);
        stdgo.fmt.Fmt.printf(("error = %e\n" : GoString), Go.toInterface(Go.asInterface(_t.sub(_two, _t))));
    }
function exampleFloat_Add():Void {
        var _0:Float_ = ({} : Float_), _1:Float_ = ({} : Float_), _2:Float_ = ({} : Float_), _z:Float_ = _2, _y:Float_ = _1, _x:Float_ = _0;
        _x.setInt64(("1000" : GoInt64));
        _y.setFloat64((2.718281828 : GoFloat64));
        _z.setPrec(("32" : GoUInt));
        _z.add((_x : Ref<Float_>), (_y : Ref<Float_>));
        stdgo.fmt.Fmt.printf(("x = %.10g (%s, prec = %d, acc = %s)\n" : GoString), Go.toInterface(Go.asInterface((_x : Ref<Float_>))), Go.toInterface(_x.text((112 : GoUInt8), (0 : GoInt))), Go.toInterface(_x.prec()), Go.toInterface(Go.asInterface(_x.acc())));
        stdgo.fmt.Fmt.printf(("y = %.10g (%s, prec = %d, acc = %s)\n" : GoString), Go.toInterface(Go.asInterface((_y : Ref<Float_>))), Go.toInterface(_y.text((112 : GoUInt8), (0 : GoInt))), Go.toInterface(_y.prec()), Go.toInterface(Go.asInterface(_y.acc())));
        stdgo.fmt.Fmt.printf(("z = %.10g (%s, prec = %d, acc = %s)\n" : GoString), Go.toInterface(Go.asInterface((_z : Ref<Float_>))), Go.toInterface(_z.text((112 : GoUInt8), (0 : GoInt))), Go.toInterface(_z.prec()), Go.toInterface(Go.asInterface(_z.acc())));
    }
function exampleFloat_shift():Void {
        {
            var _s:GoInt = (-5 : GoInt);
            Go.cfor(_s <= (5 : GoInt), _s++, {
                var _x = stdgo.math.big.Big.newFloat((0.5 : GoFloat64));
                _x.setMantExp(_x, _x.mantExp(null) + _s);
                stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_x)));
            });
        };
    }
function exampleFloat_Cmp():Void {
        var _inf:GoFloat64 = stdgo.math.Math.inf((1 : GoInt));
        var _zero:GoFloat64 = (0 : GoFloat64);
        var _operands = (new Slice<GoFloat64>(0, 0, -_inf, (-1.2 : GoFloat64), -_zero, (0 : GoFloat64), (1.2 : GoFloat64), _inf) : Slice<GoFloat64>);
        stdgo.fmt.Fmt.println(Go.toInterface(("   x     y  cmp" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("---------------" : GoString)));
        for (_0 => _x64 in _operands) {
            var _x = stdgo.math.big.Big.newFloat(_x64);
            for (_1 => _y64 in _operands) {
                var _y = stdgo.math.big.Big.newFloat(_y64);
                stdgo.fmt.Fmt.printf(("%4g  %4g  %3d\n" : GoString), Go.toInterface(Go.asInterface(_x)), Go.toInterface(Go.asInterface(_y)), Go.toInterface(_x.cmp(_y)));
            };
            stdgo.fmt.Fmt.println();
        };
    }
function exampleRoundingMode():Void {
        var _operands = (new Slice<GoFloat64>(0, 0, (2.6 : GoFloat64), (2.5 : GoFloat64), (2.1 : GoFloat64), (-2.1 : GoFloat64), (-2.5 : GoFloat64), (-2.6 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.fmt.Fmt.print(Go.toInterface(("   x" : GoString)));
        {
            var _mode:RoundingMode = (0 : RoundingMode);
            Go.cfor(_mode <= (5 : RoundingMode), _mode++, {
                stdgo.fmt.Fmt.printf(("  %s" : GoString), Go.toInterface(Go.asInterface(_mode)));
            });
        };
        stdgo.fmt.Fmt.println();
        for (_0 => _f64 in _operands) {
            stdgo.fmt.Fmt.printf(("%4g" : GoString), Go.toInterface(_f64));
            {
                var _mode:RoundingMode = (0 : RoundingMode);
                Go.cfor(_mode <= (5 : RoundingMode), _mode++, {
                    var _f = ({} : Float_).setPrec(("2" : GoUInt)).setMode(_mode).setFloat64(_f64);
                    stdgo.fmt.Fmt.printf(("  %*g" : GoString), Go.toInterface(((_mode.string() : GoString).length)), Go.toInterface(Go.asInterface(_f)));
                });
            };
            stdgo.fmt.Fmt.println();
        };
    }
class T_bigInt_asInterface {
    @:keep
    public function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalText(__0);
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public function uint64():GoUInt64 return __self__.value.uint64();
    @:embedded
    public function trailingZeroBits():GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public function text(_i:GoInt):GoString return __self__.value.text(_i);
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return __self__.value.sqrt(_x);
    @:embedded
    public function sign():GoInt return __self__.value.sign();
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return __self__.value.setUint64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return __self__.value.setInt64(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return __self__.value.setBytes(__0);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return __self__.value.setBits(__0);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return __self__.value.set(_x);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.value.scan(_s, _ch);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.or(_z, _x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return __self__.value.not(_x);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return __self__.value.neg(_x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalText();
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalJSON();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public function int64():GoInt64 return __self__.value.int64();
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.gobEncode();
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return __self__.value.gobDecode(__0);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.div(_z, _x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return __self__.value.cmp(_x);
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    @:embedded
    public function bits():Slice<Word> return __self__.value.bits();
    @:embedded
    public function bitLen():GoInt return __self__.value.bitLen();
    @:embedded
    public function bit(_i:GoInt):GoUInt return __self__.value.bit(_i);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.and(_z, _x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.add(_z, _x);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_bigInt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_bigInt_asInterface) class T_bigInt_static_extension {
    @:keep
    static public function generate( _:T_bigInt, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        var _n = _generatePositiveInt(_rand, _size);
        if (_rand.intn((4 : GoInt)) == ((0 : GoInt))) {
            _n.neg(_n);
        };
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_bigInt(_n) : T_bigInt)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_bigInt(_n) : T_bigInt)))).__copy__());
    }
    @:embedded
    public static function _setFromScanner( __self__:T_bigInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_bigInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_bigInt, _x:Ref<Int_>, _f:T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_bigInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_bigInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_bigInt):GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_bigInt):GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_bigInt, _i:GoInt):GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_bigInt):GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_bigInt, _x:Ref<Int_>):Ref<Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_bigInt):GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_bigInt, __0:GoUInt64):Ref<Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_bigInt, _s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_bigInt, __0:GoInt64):Ref<Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_bigInt, __0:Slice<GoUInt8>):Ref<Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_bigInt, __0:Slice<Word>):Ref<Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_bigInt, _x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_bigInt, _x:Ref<Int_>):Ref<Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_bigInt, _s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_bigInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_bigInt, _rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_bigInt, _i:GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_bigInt, _x:Ref<Int_>):Ref<Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_bigInt, _x:Ref<Int_>):Ref<Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_bigInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_bigInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_bigInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_bigInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_bigInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_bigInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_bigInt):GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_bigInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_bigInt, __0:Slice<GoUInt8>):Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_bigInt, _s:stdgo.fmt.Fmt.State, _ch:GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function fillBytes( __self__:T_bigInt, __0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_bigInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_bigInt, _x:Ref<Int_>):GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_bigInt, _x:Ref<Int_>):GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_bigInt):Slice<GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_bigInt):Slice<Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_bigInt):GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_bigInt, _i:GoInt):GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_bigInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_bigInt, _buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_bigInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_bigInt, _x:Ref<Int_>):Ref<Int_> return __self__.abs(_x);
}
class T_notZeroInt_asInterface {
    @:keep
    public function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalText(__0);
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public function uint64():GoUInt64 return __self__.value.uint64();
    @:embedded
    public function trailingZeroBits():GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public function text(_i:GoInt):GoString return __self__.value.text(_i);
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return __self__.value.sqrt(_x);
    @:embedded
    public function sign():GoInt return __self__.value.sign();
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return __self__.value.setUint64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return __self__.value.setInt64(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return __self__.value.setBytes(__0);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return __self__.value.setBits(__0);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return __self__.value.set(_x);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.value.scan(_s, _ch);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.or(_z, _x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return __self__.value.not(_x);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return __self__.value.neg(_x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalText();
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalJSON();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public function int64():GoInt64 return __self__.value.int64();
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.gobEncode();
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return __self__.value.gobDecode(__0);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.div(_z, _x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return __self__.value.cmp(_x);
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    @:embedded
    public function bits():Slice<Word> return __self__.value.bits();
    @:embedded
    public function bitLen():GoInt return __self__.value.bitLen();
    @:embedded
    public function bit(_i:GoInt):GoUInt return __self__.value.bit(_i);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.and(_z, _x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.add(_z, _x);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_notZeroInt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_notZeroInt_asInterface) class T_notZeroInt_static_extension {
    @:keep
    static public function generate( _:T_notZeroInt, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        var _n = _generatePositiveInt(_rand, _size);
        if (_rand.intn((4 : GoInt)) == ((0 : GoInt))) {
            _n.neg(_n);
        };
        if (_n.sign() == ((0 : GoInt))) {
            _n.setInt64(("1" : GoInt64));
        };
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_notZeroInt(_n) : T_notZeroInt)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_notZeroInt(_n) : T_notZeroInt)))).__copy__());
    }
    @:embedded
    public static function _setFromScanner( __self__:T_notZeroInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_notZeroInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_notZeroInt, _x:Ref<Int_>, _f:T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_notZeroInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_notZeroInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_notZeroInt):GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_notZeroInt):GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_notZeroInt, _i:GoInt):GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_notZeroInt):GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_notZeroInt, _x:Ref<Int_>):Ref<Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_notZeroInt):GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_notZeroInt, __0:GoUInt64):Ref<Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_notZeroInt, _s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_notZeroInt, __0:GoInt64):Ref<Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_notZeroInt, __0:Slice<GoUInt8>):Ref<Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_notZeroInt, __0:Slice<Word>):Ref<Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_notZeroInt, _x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_notZeroInt, _x:Ref<Int_>):Ref<Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_notZeroInt, _s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_notZeroInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_notZeroInt, _rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_notZeroInt, _i:GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_notZeroInt, _x:Ref<Int_>):Ref<Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_notZeroInt, _x:Ref<Int_>):Ref<Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_notZeroInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_notZeroInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_notZeroInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_notZeroInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_notZeroInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_notZeroInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_notZeroInt):GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_notZeroInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_notZeroInt, __0:Slice<GoUInt8>):Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_notZeroInt, _s:stdgo.fmt.Fmt.State, _ch:GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function fillBytes( __self__:T_notZeroInt, __0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_notZeroInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_notZeroInt, _x:Ref<Int_>):GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_notZeroInt, _x:Ref<Int_>):GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_notZeroInt):Slice<GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_notZeroInt):Slice<Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_notZeroInt):GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_notZeroInt, _i:GoInt):GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_notZeroInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_notZeroInt, _buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_notZeroInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_notZeroInt, _x:Ref<Int_>):Ref<Int_> return __self__.abs(_x);
}
class T_positiveInt_asInterface {
    @:keep
    public function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalText(__0);
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public function uint64():GoUInt64 return __self__.value.uint64();
    @:embedded
    public function trailingZeroBits():GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public function text(_i:GoInt):GoString return __self__.value.text(_i);
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return __self__.value.sqrt(_x);
    @:embedded
    public function sign():GoInt return __self__.value.sign();
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return __self__.value.setUint64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return __self__.value.setInt64(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return __self__.value.setBytes(__0);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return __self__.value.setBits(__0);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return __self__.value.set(_x);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.value.scan(_s, _ch);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.or(_z, _x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return __self__.value.not(_x);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return __self__.value.neg(_x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalText();
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalJSON();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public function int64():GoInt64 return __self__.value.int64();
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.gobEncode();
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return __self__.value.gobDecode(__0);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.div(_z, _x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return __self__.value.cmp(_x);
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    @:embedded
    public function bits():Slice<Word> return __self__.value.bits();
    @:embedded
    public function bitLen():GoInt return __self__.value.bitLen();
    @:embedded
    public function bit(_i:GoInt):GoUInt return __self__.value.bit(_i);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.and(_z, _x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.add(_z, _x);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_positiveInt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_positiveInt_asInterface) class T_positiveInt_static_extension {
    @:keep
    static public function generate( _:T_positiveInt, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        var _n = _generatePositiveInt(_rand, _size);
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_positiveInt(_n) : T_positiveInt)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_positiveInt(_n) : T_positiveInt)))).__copy__());
    }
    @:embedded
    public static function _setFromScanner( __self__:T_positiveInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_positiveInt, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_positiveInt, _x:Ref<Int_>, _f:T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_positiveInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_positiveInt, __0:Slice<GoUInt8>):Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_positiveInt):GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_positiveInt):GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_positiveInt, _i:GoInt):GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_positiveInt):GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_positiveInt, _x:Ref<Int_>):Ref<Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_positiveInt):GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_positiveInt, __0:GoUInt64):Ref<Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_positiveInt, _s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_positiveInt, __0:GoInt64):Ref<Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_positiveInt, __0:Slice<GoUInt8>):Ref<Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_positiveInt, __0:Slice<Word>):Ref<Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_positiveInt, _x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_positiveInt, _x:Ref<Int_>):Ref<Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_positiveInt, _s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_positiveInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_positiveInt, _rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_positiveInt, _i:GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_positiveInt, _x:Ref<Int_>):Ref<Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_positiveInt, _x:Ref<Int_>):Ref<Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_positiveInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_positiveInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_positiveInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_positiveInt, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_positiveInt):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_positiveInt):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_positiveInt):GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_positiveInt):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_positiveInt, __0:Slice<GoUInt8>):Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_positiveInt, _s:stdgo.fmt.Fmt.State, _ch:GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function fillBytes( __self__:T_positiveInt, __0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_positiveInt, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_positiveInt, _x:Ref<Int_>):GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_positiveInt, _x:Ref<Int_>):GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_positiveInt):Slice<GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_positiveInt):Slice<Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_positiveInt):GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_positiveInt, _i:GoInt):GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_positiveInt, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_positiveInt, _buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_positiveInt, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_positiveInt, _x:Ref<Int_>):Ref<Int_> return __self__.abs(_x);
}
class T_prime_asInterface {
    @:keep
    public function generate(_r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_r, _size);
    @:embedded
    public function _setFromScanner(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public function _scan(_r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public function _scaleDenom(_x:Ref<Int_>, _f:T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public function _modSqrtTonelliShanks(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public function _modSqrt5Mod8Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public function _modSqrt3Mod4Prime(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public function _lehmerGCD(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public function _expSlow(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public function _exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public function xor(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.xor(_z, _x);
    @:embedded
    public function unmarshalText(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalText(__0);
    @:embedded
    public function unmarshalJSON(__0:Slice<GoUInt8>):Error return __self__.value.unmarshalJSON(__0);
    @:embedded
    public function uint64():GoUInt64 return __self__.value.uint64();
    @:embedded
    public function trailingZeroBits():GoUInt return __self__.value.trailingZeroBits();
    @:embedded
    public function text(_i:GoInt):GoString return __self__.value.text(_i);
    @:embedded
    public function sub(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public function string():GoString return __self__.value.string();
    @:embedded
    public function sqrt(_x:Ref<Int_>):Ref<Int_> return __self__.value.sqrt(_x);
    @:embedded
    public function sign():GoInt return __self__.value.sign();
    @:embedded
    public function setUint64(__0:GoUInt64):Ref<Int_> return __self__.value.setUint64(__0);
    @:embedded
    public function setString(_s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public function setInt64(__0:GoInt64):Ref<Int_> return __self__.value.setInt64(__0);
    @:embedded
    public function setBytes(__0:Slice<GoUInt8>):Ref<Int_> return __self__.value.setBytes(__0);
    @:embedded
    public function setBits(__0:Slice<Word>):Ref<Int_> return __self__.value.setBits(__0);
    @:embedded
    public function setBit(_x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public function set(_x:Ref<Int_>):Ref<Int_> return __self__.value.set(_x);
    @:embedded
    public function scan(_s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.value.scan(_s, _ch);
    @:embedded
    public function rsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public function rem(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public function rand(_rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public function quoRem(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public function quo(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public function probablyPrime(_i:GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public function or(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.or(_z, _x);
    @:embedded
    public function not(_x:Ref<Int_>):Ref<Int_> return __self__.value.not(_x);
    @:embedded
    public function neg(_x:Ref<Int_>):Ref<Int_> return __self__.value.neg(_x);
    @:embedded
    public function mulRange(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public function mul(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public function modSqrt(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public function modInverse(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public function mod(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public function marshalText():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalText();
    @:embedded
    public function marshalJSON():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.marshalJSON();
    @:embedded
    public function lsh(_x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.value.lsh(_x, _n);
    @:embedded
    public function isUint64():Bool return __self__.value.isUint64();
    @:embedded
    public function isInt64():Bool return __self__.value.isInt64();
    @:embedded
    public function int64():GoInt64 return __self__.value.int64();
    @:embedded
    public function gobEncode():{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.value.gobEncode();
    @:embedded
    public function gobDecode(__0:Slice<GoUInt8>):Error return __self__.value.gobDecode(__0);
    @:embedded
    public function gcd(_x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public function format(_s:stdgo.fmt.Fmt.State, _ch:GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public function fillBytes(__0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public function exp(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public function divMod(_x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public function div(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.div(_z, _x);
    @:embedded
    public function cmpAbs(_x:Ref<Int_>):GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public function cmp(_x:Ref<Int_>):GoInt return __self__.value.cmp(_x);
    @:embedded
    public function bytes():Slice<GoUInt8> return __self__.value.bytes();
    @:embedded
    public function bits():Slice<Word> return __self__.value.bits();
    @:embedded
    public function bitLen():GoInt return __self__.value.bitLen();
    @:embedded
    public function bit(_i:GoInt):GoUInt return __self__.value.bit(_i);
    @:embedded
    public function binomial(_n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public function append(_buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public function andNot(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public function and(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.and(_z, _x);
    @:embedded
    public function add(_z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.value.add(_z, _x);
    @:embedded
    public function abs(_x:Ref<Int_>):Ref<Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_prime>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_prime_asInterface) class T_prime_static_extension {
    @:keep
    static public function generate( _:T_prime, _r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        var __tmp__ = stdgo.crypto.rand.Rand.prime(Go.asInterface(_r), _r.intn((_size * (8 : GoInt)) - (2 : GoInt)) + (2 : GoInt)), _n:Ref<Int_> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_prime(_n) : T_prime)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_prime(_n) : T_prime)))).__copy__());
    }
    @:embedded
    public static function _setFromScanner( __self__:T_prime, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__._setFromScanner(_r, _base);
    @:embedded
    public static function _scan( __self__:T_prime, _r:stdgo.io.Io.ByteScanner, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : GoInt; var _2 : Error; } return __self__._scan(_r, _base);
    @:embedded
    public static function _scaleDenom( __self__:T_prime, _x:Ref<Int_>, _f:T_nat) __self__._scaleDenom(_x, _f);
    @:embedded
    public static function _modSqrtTonelliShanks( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public static function _modSqrt5Mod8Prime( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public static function _modSqrt3Mod4Prime( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public static function _lehmerGCD( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public static function _expSlow( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__._expSlow(_x, _y, _m);
    @:embedded
    public static function _exp( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>, _slow:Bool):Ref<Int_> return __self__._exp(_x, _y, _m, _slow);
    @:embedded
    public static function xor( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.xor(_z, _x);
    @:embedded
    public static function unmarshalText( __self__:T_prime, __0:Slice<GoUInt8>):Error return __self__.unmarshalText(__0);
    @:embedded
    public static function unmarshalJSON( __self__:T_prime, __0:Slice<GoUInt8>):Error return __self__.unmarshalJSON(__0);
    @:embedded
    public static function uint64( __self__:T_prime):GoUInt64 return __self__.uint64();
    @:embedded
    public static function trailingZeroBits( __self__:T_prime):GoUInt return __self__.trailingZeroBits();
    @:embedded
    public static function text( __self__:T_prime, _i:GoInt):GoString return __self__.text(_i);
    @:embedded
    public static function sub( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.sub(_z, _x);
    @:embedded
    public static function string( __self__:T_prime):GoString return __self__.string();
    @:embedded
    public static function sqrt( __self__:T_prime, _x:Ref<Int_>):Ref<Int_> return __self__.sqrt(_x);
    @:embedded
    public static function sign( __self__:T_prime):GoInt return __self__.sign();
    @:embedded
    public static function setUint64( __self__:T_prime, __0:GoUInt64):Ref<Int_> return __self__.setUint64(__0);
    @:embedded
    public static function setString( __self__:T_prime, _s:GoString, _base:GoInt):{ var _0 : Ref<Int_>; var _1 : Bool; } return __self__.setString(_s, _base);
    @:embedded
    public static function setInt64( __self__:T_prime, __0:GoInt64):Ref<Int_> return __self__.setInt64(__0);
    @:embedded
    public static function setBytes( __self__:T_prime, __0:Slice<GoUInt8>):Ref<Int_> return __self__.setBytes(__0);
    @:embedded
    public static function setBits( __self__:T_prime, __0:Slice<Word>):Ref<Int_> return __self__.setBits(__0);
    @:embedded
    public static function setBit( __self__:T_prime, _x:Ref<Int_>, _i:GoInt, _b:GoUInt):Ref<Int_> return __self__.setBit(_x, _i, _b);
    @:embedded
    public static function set( __self__:T_prime, _x:Ref<Int_>):Ref<Int_> return __self__.set(_x);
    @:embedded
    public static function scan( __self__:T_prime, _s:stdgo.fmt.Fmt.ScanState, _ch:GoInt32):Error return __self__.scan(_s, _ch);
    @:embedded
    public static function rsh( __self__:T_prime, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.rsh(_x, _n);
    @:embedded
    public static function rem( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.rem(_z, _x);
    @:embedded
    public static function rand( __self__:T_prime, _rnd:Ref<stdgo.math.rand.Rand.Rand>, _n:Ref<Int_>):Ref<Int_> return __self__.rand(_rnd, _n);
    @:embedded
    public static function quoRem( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.quoRem(_x, _y, _m);
    @:embedded
    public static function quo( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.quo(_z, _x);
    @:embedded
    public static function probablyPrime( __self__:T_prime, _i:GoInt):Bool return __self__.probablyPrime(_i);
    @:embedded
    public static function or( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.or(_z, _x);
    @:embedded
    public static function not( __self__:T_prime, _x:Ref<Int_>):Ref<Int_> return __self__.not(_x);
    @:embedded
    public static function neg( __self__:T_prime, _x:Ref<Int_>):Ref<Int_> return __self__.neg(_x);
    @:embedded
    public static function mulRange( __self__:T_prime, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.mulRange(_n, _k);
    @:embedded
    public static function mul( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mul(_z, _x);
    @:embedded
    public static function modSqrt( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modSqrt(_z, _x);
    @:embedded
    public static function modInverse( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.modInverse(_z, _x);
    @:embedded
    public static function mod( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.mod(_z, _x);
    @:embedded
    public static function marshalText( __self__:T_prime):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalText();
    @:embedded
    public static function marshalJSON( __self__:T_prime):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.marshalJSON();
    @:embedded
    public static function lsh( __self__:T_prime, _x:Ref<Int_>, _n:GoUInt):Ref<Int_> return __self__.lsh(_x, _n);
    @:embedded
    public static function isUint64( __self__:T_prime):Bool return __self__.isUint64();
    @:embedded
    public static function isInt64( __self__:T_prime):Bool return __self__.isInt64();
    @:embedded
    public static function int64( __self__:T_prime):GoInt64 return __self__.int64();
    @:embedded
    public static function gobEncode( __self__:T_prime):{ var _0 : Slice<GoUInt8>; var _1 : Error; } return __self__.gobEncode();
    @:embedded
    public static function gobDecode( __self__:T_prime, __0:Slice<GoUInt8>):Error return __self__.gobDecode(__0);
    @:embedded
    public static function gcd( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _a:Ref<Int_>, _b:Ref<Int_>):Ref<Int_> return __self__.gcd(_x, _y, _a, _b);
    @:embedded
    public static function format( __self__:T_prime, _s:stdgo.fmt.Fmt.State, _ch:GoInt32) __self__.format(_s, _ch);
    @:embedded
    public static function fillBytes( __self__:T_prime, __0:Slice<GoUInt8>):Slice<GoUInt8> return __self__.fillBytes(__0);
    @:embedded
    public static function exp( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):Ref<Int_> return __self__.exp(_x, _y, _m);
    @:embedded
    public static function divMod( __self__:T_prime, _x:Ref<Int_>, _y:Ref<Int_>, _m:Ref<Int_>):{ var _0 : Ref<Int_>; var _1 : Ref<Int_>; } return __self__.divMod(_x, _y, _m);
    @:embedded
    public static function div( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.div(_z, _x);
    @:embedded
    public static function cmpAbs( __self__:T_prime, _x:Ref<Int_>):GoInt return __self__.cmpAbs(_x);
    @:embedded
    public static function cmp( __self__:T_prime, _x:Ref<Int_>):GoInt return __self__.cmp(_x);
    @:embedded
    public static function bytes( __self__:T_prime):Slice<GoUInt8> return __self__.bytes();
    @:embedded
    public static function bits( __self__:T_prime):Slice<Word> return __self__.bits();
    @:embedded
    public static function bitLen( __self__:T_prime):GoInt return __self__.bitLen();
    @:embedded
    public static function bit( __self__:T_prime, _i:GoInt):GoUInt return __self__.bit(_i);
    @:embedded
    public static function binomial( __self__:T_prime, _n:GoInt64, _k:GoInt64):Ref<Int_> return __self__.binomial(_n, _k);
    @:embedded
    public static function append( __self__:T_prime, _buf:Slice<GoUInt8>, _base:GoInt):Slice<GoUInt8> return __self__.append(_buf, _base);
    @:embedded
    public static function andNot( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.andNot(_z, _x);
    @:embedded
    public static function and( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.and(_z, _x);
    @:embedded
    public static function add( __self__:T_prime, _z:Ref<Int_>, _x:Ref<Int_>):Ref<Int_> return __self__.add(_z, _x);
    @:embedded
    public static function abs( __self__:T_prime, _x:Ref<Int_>):Ref<Int_> return __self__.abs(_x);
}
class T_zeroOrOne_asInterface {
    @:keep
    public function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_zeroOrOne>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_zeroOrOne_asInterface) class T_zeroOrOne_static_extension {
    @:keep
    static public function generate( _:T_zeroOrOne, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_zeroOrOne((_rand.intn((2 : GoInt)) : GoUInt)) : T_zeroOrOne)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_zeroOrOne((_rand.intn((2 : GoInt)) : GoUInt)) : T_zeroOrOne)))).__copy__());
    }
}
class T_smallUint_asInterface {
    @:keep
    public function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_rand, _size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_smallUint>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.math.big_test.Big_test.T_smallUint_asInterface) class T_smallUint_static_extension {
    @:keep
    static public function generate( _:T_smallUint, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        return (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_smallUint((_rand.intn((1024 : GoInt)) : GoUInt)) : T_smallUint)))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((new T_smallUint((_rand.intn((1024 : GoInt)) : GoUInt)) : T_smallUint)))).__copy__());
    }
}
