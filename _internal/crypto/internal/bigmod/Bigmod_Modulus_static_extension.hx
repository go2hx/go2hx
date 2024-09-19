package _internal.crypto.internal.bigmod;
@:keep @:allow(_internal.crypto.internal.bigmod.Bigmod.Modulus_asInterface) class Modulus_static_extension {
    @:keep
    static public function nat( _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return _m._nat;
    }
    @:keep
    static public function bitLen( _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return (((_m._nat._limbs.length) * (32 : stdgo.GoInt) : stdgo.GoInt) - (_m._leading : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function size( _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return (((_m.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
