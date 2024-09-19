package _internal.crypto.internal.bigmod;
class Nat_asInterface {
    @:keep
    public dynamic function expShort(_x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _e:stdgo.GoUInt, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.expShort(_x, _e, _m);
    @:keep
    public dynamic function exp(_x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _e:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.exp(_x, _e, _m);
    @:keep
    public dynamic function mul(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.mul(_y, _m);
    @:keep
    public dynamic function _montgomeryMul(_a:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _b:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._montgomeryMul(_a, _b, _m);
    @:keep
    public dynamic function _montgomeryReduction(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._montgomeryReduction(_m);
    @:keep
    public dynamic function _montgomeryRepresentation(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._montgomeryRepresentation(_m);
    @:keep
    public dynamic function add(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.add(_y, _m);
    @:keep
    public dynamic function sub(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.sub(_y, _m);
    @:keep
    public dynamic function _maybeSubtractModulus(_always:_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):Void __self__.value._maybeSubtractModulus(_always, _m);
    @:keep
    public dynamic function _resetFor(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._resetFor(_m);
    @:keep
    public dynamic function expandFor(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.expandFor(_m);
    @:keep
    public dynamic function mod(_x:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value.mod(_x, _m);
    @:keep
    public dynamic function _shiftIn(_y:stdgo.GoUInt, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._shiftIn(_y, _m);
    @:keep
    public dynamic function _sub(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.GoUInt return __self__.value._sub(_y);
    @:keep
    public dynamic function _add(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.GoUInt return __self__.value._add(_y);
    @:keep
    public dynamic function _assign(_on:_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice, _y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._assign(_on, _y);
    @:keep
    public dynamic function _cmpGeq(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice return __self__.value._cmpGeq(_y);
    @:keep
    public dynamic function isZero():_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice return __self__.value.isZero();
    @:keep
    public dynamic function equal(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):_internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice return __self__.value.equal(_y);
    @:keep
    public dynamic function _setBytes(_b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Error return __self__.value._setBytes(_b, _m);
    @:keep
    public dynamic function setOverflowingBytes(_b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):{ var _0 : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>; var _1 : stdgo.Error; } return __self__.value.setOverflowingBytes(_b, _m);
    @:keep
    public dynamic function setBytes(_b:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):{ var _0 : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>; var _1 : stdgo.Error; } return __self__.value.setBytes(_b, _m);
    @:keep
    public dynamic function bytes(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes(_m);
    @:keep
    public dynamic function _setBig(_n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._setBig(_n);
    @:keep
    public dynamic function _set(_y:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._set(_y);
    @:keep
    public dynamic function _reset(_n:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._reset(_n);
    @:keep
    public dynamic function _expand(_n:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> return __self__.value._expand(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}