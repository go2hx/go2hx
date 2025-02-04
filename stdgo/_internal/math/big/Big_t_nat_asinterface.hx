package stdgo._internal.math.big;
class T_nat_asInterface {
    @:keep
    @:tdfield
    public dynamic function _probablyPrimeLucas():Bool return @:_0 __self__.value._probablyPrimeLucas();
    @:keep
    @:tdfield
    public dynamic function _probablyPrimeMillerRabin(_reps:stdgo.GoInt, _force2:Bool):Bool return @:_0 __self__.value._probablyPrimeMillerRabin(_reps, _force2);
    @:keep
    @:tdfield
    public dynamic function _divRecursiveStep(_u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat, _depth:stdgo.GoInt, _tmp:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>, _temps:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>>):Void @:_0 __self__.value._divRecursiveStep(_u, _v, _depth, _tmp, _temps);
    @:keep
    @:tdfield
    public dynamic function _divRecursive(_u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void @:_0 __self__.value._divRecursive(_u, _v);
    @:keep
    @:tdfield
    public dynamic function _divBasic(_u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):Void @:_0 __self__.value._divBasic(_u, _v);
    @:keep
    @:tdfield
    public dynamic function _divLarge(_u:stdgo._internal.math.big.Big_t_nat.T_nat, _uIn:stdgo._internal.math.big.Big_t_nat.T_nat, _vIn:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } return @:_0 __self__.value._divLarge(_u, _uIn, _vIn);
    @:keep
    @:tdfield
    public dynamic function _modW(_d:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_word.Word return @:_0 __self__.value._modW(_d);
    @:keep
    @:tdfield
    public dynamic function _divW(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_word.Word; } return @:_0 __self__.value._divW(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _div(_z2:stdgo._internal.math.big.Big_t_nat.T_nat, _u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo._internal.math.big.Big_t_nat.T_nat; } return @:_0 __self__.value._div(_z2, _u, _v);
    @:keep
    @:tdfield
    public dynamic function _rem(_u:stdgo._internal.math.big.Big_t_nat.T_nat, _v:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._rem(_u, _v);
    @:keep
    @:tdfield
    public dynamic function _expWW(_x:stdgo._internal.math.big.Big_word.Word, _y:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._expWW(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _convertWords(_s:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo._internal.math.big.Big_word.Word, _ndigits:stdgo.GoInt, _bb:stdgo._internal.math.big.Big_word.Word, _table:stdgo.Slice<stdgo._internal.math.big.Big_t_divisor.T_divisor>):Void @:_0 __self__.value._convertWords(_s, _b, _ndigits, _bb, _table);
    @:keep
    @:tdfield
    public dynamic function _itoa(_neg:Bool, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._itoa(_neg, _base);
    @:keep
    @:tdfield
    public dynamic function _utoa(_base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._utoa(_base);
    @:keep
    @:tdfield
    public dynamic function _scan(_r:stdgo._internal.io.Io_bytescanner.ByteScanner, _base:stdgo.GoInt, _fracOk:Bool):{ var _0 : stdgo._internal.math.big.Big_t_nat.T_nat; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._scan(_r, _base, _fracOk);
    @:keep
    @:tdfield
    public dynamic function _subMod2N(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._subMod2N(_x, _y, _n);
    @:keep
    @:tdfield
    public dynamic function _sqrt(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._sqrt(_x);
    @:keep
    @:tdfield
    public dynamic function _setBytes(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._setBytes(_buf);
    @:keep
    @:tdfield
    public dynamic function _bytes(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._bytes(_buf);
    @:keep
    @:tdfield
    public dynamic function _expNNMontgomery(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._expNNMontgomery(_x, _y, _m);
    @:keep
    @:tdfield
    public dynamic function _expNNWindowed(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _logM:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._expNNWindowed(_x, _y, _logM);
    @:keep
    @:tdfield
    public dynamic function _expNNMontgomeryEven(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._expNNMontgomeryEven(_x, _y, _m);
    @:keep
    @:tdfield
    public dynamic function _expNN(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _slow:Bool):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._expNN(_x, _y, _m, _slow);
    @:keep
    @:tdfield
    public dynamic function _random(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _limit:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._random(_rand, _limit, _n);
    @:keep
    @:tdfield
    public dynamic function _xor(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._xor(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _or(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._or(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _andNot(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._andNot(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _trunc(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._trunc(_x, _n);
    @:keep
    @:tdfield
    public dynamic function _and(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._and(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _sticky(_i:stdgo.GoUInt):stdgo.GoUInt return @:_0 __self__.value._sticky(_i);
    @:keep
    @:tdfield
    public dynamic function _bit(_i:stdgo.GoUInt):stdgo.GoUInt return @:_0 __self__.value._bit(_i);
    @:keep
    @:tdfield
    public dynamic function _setBit(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _i:stdgo.GoUInt, _b:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._setBit(_x, _i, _b);
    @:keep
    @:tdfield
    public dynamic function _shr(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._shr(_x, _s);
    @:keep
    @:tdfield
    public dynamic function _shl(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _s:stdgo.GoUInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._shl(_x, _s);
    @:keep
    @:tdfield
    public dynamic function _isPow2():{ var _0 : stdgo.GoUInt; var _1 : Bool; } return @:_0 __self__.value._isPow2();
    @:keep
    @:tdfield
    public dynamic function _trailingZeroBits():stdgo.GoUInt return @:_0 __self__.value._trailingZeroBits();
    @:keep
    @:tdfield
    public dynamic function _bitLen():stdgo.GoInt return @:_0 __self__.value._bitLen();
    @:keep
    @:tdfield
    public dynamic function _mulRange(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._mulRange(_a, _b);
    @:keep
    @:tdfield
    public dynamic function _sqr(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._sqr(_x);
    @:keep
    @:tdfield
    public dynamic function _mul(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._mul(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _montgomery(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat, _m:stdgo._internal.math.big.Big_t_nat.T_nat, _k:stdgo._internal.math.big.Big_word.Word, _n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._montgomery(_x, _y, _m, _k, _n);
    @:keep
    @:tdfield
    public dynamic function _mulAddWW(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_word.Word, _r:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._mulAddWW(_x, _y, _r);
    @:keep
    @:tdfield
    public dynamic function _cmp(_y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoInt return @:_0 __self__.value._cmp(_y);
    @:keep
    @:tdfield
    public dynamic function _sub(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._sub(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _add(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._add(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _set(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._set(_x);
    @:keep
    @:tdfield
    public dynamic function _setUint64(_x:stdgo.GoUInt64):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._setUint64(_x);
    @:keep
    @:tdfield
    public dynamic function _setWord(_x:stdgo._internal.math.big.Big_word.Word):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._setWord(_x);
    @:keep
    @:tdfield
    public dynamic function _make(_n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._make(_n);
    @:keep
    @:tdfield
    public dynamic function _norm():stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._norm();
    @:keep
    @:tdfield
    public dynamic function _clear():Void @:_0 __self__.value._clear();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _modInverse(_g:stdgo._internal.math.big.Big_t_nat.T_nat, _n:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat return @:_0 __self__.value._modInverse(_g, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t_natpointer.T_natPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
