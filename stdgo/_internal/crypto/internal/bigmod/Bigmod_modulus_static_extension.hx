package stdgo._internal.crypto.internal.bigmod;
@:keep @:allow(stdgo._internal.crypto.internal.bigmod.Bigmod.Modulus_asInterface) class Modulus_static_extension {
    @:keep
    @:tdfield
    static public function nat( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = _m;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L394"
        return (@:checkr _m ?? throw "null pointer dereference")._nat;
    }
    @:keep
    @:tdfield
    static public function bitLen( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = _m;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L389"
        return ((((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length) * (32 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _m ?? throw "null pointer dereference")._leading : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = _m;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L384"
        return (((_m.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
