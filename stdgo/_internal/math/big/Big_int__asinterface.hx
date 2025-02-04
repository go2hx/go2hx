package stdgo._internal.math.big;
class Int__asInterface {
    @:keep
    @:tdfield
    public dynamic function _scaleDenom(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _f:stdgo._internal.math.big.Big_t_nat.T_nat):Void @:_0 __self__.value._scaleDenom(_x, _f);
    @:keep
    @:tdfield
    public dynamic function probablyPrime(_n:stdgo.GoInt):Bool return @:_0 __self__.value.probablyPrime(_n);
    @:keep
    @:tdfield
    public dynamic function unmarshalJSON(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalJSON(_text);
    @:keep
    @:tdfield
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalJSON();
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function gobDecode(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.gobDecode(_buf);
    @:keep
    @:tdfield
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.gobEncode();
    @:keep
    @:tdfield
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error return @:_0 __self__.value.scan(_s, _ch);
    @:keep
    @:tdfield
    public dynamic function _scan(_r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._scan(_r, _base);
    @:keep
    @:tdfield
    public dynamic function format(_s:stdgo._internal.fmt.Fmt_state.State, _ch:stdgo.GoInt32):Void @:_0 __self__.value.format(_s, _ch);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function append(_buf:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.append(_buf, _base);
    @:keep
    @:tdfield
    public dynamic function text(_base:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.text(_base);
    @:keep
    @:tdfield
    public dynamic function sqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.sqrt(_x);
    @:keep
    @:tdfield
    public dynamic function not(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.not(_x);
    @:keep
    @:tdfield
    public dynamic function xor(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.xor(_x, _y);
    @:keep
    @:tdfield
    public dynamic function or(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.or(_x, _y);
    @:keep
    @:tdfield
    public dynamic function andNot(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.andNot(_x, _y);
    @:keep
    @:tdfield
    public dynamic function and(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.and(_x, _y);
    @:keep
    @:tdfield
    public dynamic function setBit(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _i:stdgo.GoInt, _b:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.setBit(_x, _i, _b);
    @:keep
    @:tdfield
    public dynamic function bit(_i:stdgo.GoInt):stdgo.GoUInt return @:_0 __self__.value.bit(_i);
    @:keep
    @:tdfield
    public dynamic function rsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.rsh(_x, _n);
    @:keep
    @:tdfield
    public dynamic function lsh(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.GoUInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.lsh(_x, _n);
    @:keep
    @:tdfield
    public dynamic function modSqrt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.modSqrt(_x, _p);
    @:keep
    @:tdfield
    public dynamic function _modSqrtTonelliShanks(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._modSqrtTonelliShanks(_x, _p);
    @:keep
    @:tdfield
    public dynamic function _modSqrt5Mod8Prime(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._modSqrt5Mod8Prime(_x, _p);
    @:keep
    @:tdfield
    public dynamic function _modSqrt3Mod4Prime(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._modSqrt3Mod4Prime(_x, _p);
    @:keep
    @:tdfield
    public dynamic function modInverse(_g:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.modInverse(_g, _n);
    @:keep
    @:tdfield
    public dynamic function rand(_rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.rand(_rnd, _n);
    @:keep
    @:tdfield
    public dynamic function _lehmerGCD(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._lehmerGCD(_x, _y, _a, _b);
    @:keep
    @:tdfield
    public dynamic function gCD(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.gCD(_x, _y, _a, _b);
    @:keep
    @:tdfield
    public dynamic function _exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _slow:Bool):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._exp(_x, _y, _m, _slow);
    @:keep
    @:tdfield
    public dynamic function _expSlow(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._expSlow(_x, _y, _m);
    @:keep
    @:tdfield
    public dynamic function exp(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.exp(_x, _y, _m);
    @:keep
    @:tdfield
    public dynamic function trailingZeroBits():stdgo.GoUInt return @:_0 __self__.value.trailingZeroBits();
    @:keep
    @:tdfield
    public dynamic function bitLen():stdgo.GoInt return @:_0 __self__.value.bitLen();
    @:keep
    @:tdfield
    public dynamic function fillBytes(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.fillBytes(_buf);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function setBytes(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.setBytes(_buf);
    @:keep
    @:tdfield
    public dynamic function _setFromScanner(_r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } return @:_0 __self__.value._setFromScanner(_r, _base);
    @:keep
    @:tdfield
    public dynamic function setString(_s:stdgo.GoString, _base:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : Bool; } return @:_0 __self__.value.setString(_s, _base);
    @:keep
    @:tdfield
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo._internal.math.big.Big_accuracy.Accuracy; } return @:_0 __self__.value.float64();
    @:keep
    @:tdfield
    public dynamic function isUint64():Bool return @:_0 __self__.value.isUint64();
    @:keep
    @:tdfield
    public dynamic function isInt64():Bool return @:_0 __self__.value.isInt64();
    @:keep
    @:tdfield
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:keep
    @:tdfield
    public dynamic function int64():stdgo.GoInt64 return @:_0 __self__.value.int64();
    @:keep
    @:tdfield
    public dynamic function cmpAbs(_y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt return @:_0 __self__.value.cmpAbs(_y);
    @:keep
    @:tdfield
    public dynamic function cmp(_y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt return @:_0 __self__.value.cmp(_y);
    @:keep
    @:tdfield
    public dynamic function divMod(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _m:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.divMod(_x, _y, _m);
    @:keep
    @:tdfield
    public dynamic function mod(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.mod(_x, _y);
    @:keep
    @:tdfield
    public dynamic function div(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.div(_x, _y);
    @:keep
    @:tdfield
    public dynamic function quoRem(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.quoRem(_x, _y, _r);
    @:keep
    @:tdfield
    public dynamic function rem(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.rem(_x, _y);
    @:keep
    @:tdfield
    public dynamic function quo(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.quo(_x, _y);
    @:keep
    @:tdfield
    public dynamic function binomial(_n:stdgo.GoInt64, _k:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.binomial(_n, _k);
    @:keep
    @:tdfield
    public dynamic function mulRange(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.mulRange(_a, _b);
    @:keep
    @:tdfield
    public dynamic function mul(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.mul(_x, _y);
    @:keep
    @:tdfield
    public dynamic function sub(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.sub(_x, _y);
    @:keep
    @:tdfield
    public dynamic function add(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.add(_x, _y);
    @:keep
    @:tdfield
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.neg(_x);
    @:keep
    @:tdfield
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.abs(_x);
    @:keep
    @:tdfield
    public dynamic function setBits(_abs:stdgo.Slice<stdgo._internal.math.big.Big_word.Word>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.setBits(_abs);
    @:keep
    @:tdfield
    public dynamic function bits():stdgo.Slice<stdgo._internal.math.big.Big_word.Word> return @:_0 __self__.value.bits();
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.set(_x);
    @:keep
    @:tdfield
    public dynamic function setUint64(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.setUint64(_x);
    @:keep
    @:tdfield
    public dynamic function setInt64(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.setInt64(_x);
    @:keep
    @:tdfield
    public dynamic function sign():stdgo.GoInt return @:_0 __self__.value.sign();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_int_pointer.Int_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
