package _internal.math.big_test;
class T_bigInt_asInterface {
    @:keep
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.generate(_rand, _size);
    @:embedded
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return __self__.value._setFromScanner(_r, _base);
    @:embedded
    public dynamic function _scan(_r:stdgo._internal.io.Io_ByteScanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._scan(_r, _base);
    @:embedded
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _f:stdgo._internal.math.big.Big_T_nat.T_nat):Void __self__.value._scaleDenom(_x, _f);
    @:embedded
    public dynamic function _modSqrtTonelliShanks(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._modSqrtTonelliShanks(_z, _x);
    @:embedded
    public dynamic function _modSqrt5Mod8Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._modSqrt5Mod8Prime(_z, _x);
    @:embedded
    public dynamic function _modSqrt3Mod4Prime(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._modSqrt3Mod4Prime(_z, _x);
    @:embedded
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:embedded
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._expSlow(_x, _y, _m);
    @:embedded
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value._exp(_x, _y, _m, _slow);
    @:embedded
    public dynamic function xor(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.xor(_z, _x);
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
    public dynamic function sub(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.sub(_z, _x);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.sqrt(_x);
    @:embedded
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:embedded
    public dynamic function setUint64(__0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.setUint64(__0);
    @:embedded
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : Bool; } return __self__.value.setString(_s, _base);
    @:embedded
    public dynamic function setInt64(__0:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.setInt64(__0);
    @:embedded
    public dynamic function setBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.setBytes(__0);
    @:embedded
    public dynamic function setBits(__0:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.setBits(__0);
    @:embedded
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.setBit(_x, _i, _b);
    @:embedded
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.set(_x);
    @:embedded
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:embedded
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.rsh(_x, _n);
    @:embedded
    public dynamic function rem(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.rem(_z, _x);
    @:embedded
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.rand(_rnd, _n);
    @:embedded
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.quoRem(_x, _y, _m);
    @:embedded
    public dynamic function quo(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.quo(_z, _x);
    @:embedded
    public dynamic function probablyPrime(_i:stdgo.GoInt):Bool return __self__.value.probablyPrime(_i);
    @:embedded
    public dynamic function or(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.or(_z, _x);
    @:embedded
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.not(_x);
    @:embedded
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.neg(_x);
    @:embedded
    public dynamic function mulRange(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.mulRange(_n, _k);
    @:embedded
    public dynamic function mul(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.mul(_z, _x);
    @:embedded
    public dynamic function modSqrt(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.modSqrt(_z, _x);
    @:embedded
    public dynamic function modInverse(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.modInverse(_z, _x);
    @:embedded
    public dynamic function mod(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.mod(_z, _x);
    @:embedded
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:embedded
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:embedded
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.lsh(_x, _n);
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
    public dynamic function gcd(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.gcd(_x, _y, _a, _b);
    @:embedded
    public dynamic function format(_s:stdgo._internal.fmt.Fmt_State.State, _ch:stdgo.GoInt32):Void __self__.value.format(_s, _ch);
    @:embedded
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_Accuracy.Accuracy; } return __self__.value.float64();
    @:embedded
    public dynamic function fillBytes(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.fillBytes(__0);
    @:embedded
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.exp(_x, _y, _m);
    @:embedded
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.divMod(_x, _y, _m);
    @:embedded
    public dynamic function div(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.div(_z, _x);
    @:embedded
    public dynamic function cmpAbs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return __self__.value.cmpAbs(_x);
    @:embedded
    public dynamic function cmp(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt return __self__.value.cmp(_x);
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> return __self__.value.bits();
    @:embedded
    public dynamic function bitLen():stdgo.GoInt return __self__.value.bitLen();
    @:embedded
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return __self__.value.bit(_i);
    @:embedded
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.binomial(_n, _k);
    @:embedded
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.append(_buf, _base);
    @:embedded
    public dynamic function andNot(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.andNot(_z, _x);
    @:embedded
    public dynamic function and(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.and(_z, _x);
    @:embedded
    public dynamic function add(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.add(_z, _x);
    @:embedded
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.abs(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.math.big_test.Big_test_T_bigInt.T_bigInt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
