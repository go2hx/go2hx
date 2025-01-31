package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.crypto.internal.bigmod.Bigmod.Modulus_asInterface) class Modulus_static_extension {
    @:keep
    @:tdfield
    static public function nat( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._nat;
    }
    @:keep
    @:tdfield
    static public function bitLen( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return ((((@:checkr (@:checkr _m ?? throw "null pointer dereference")._nat ?? throw "null pointer dereference")._limbs.length) * (32 : stdgo.GoInt) : stdgo.GoInt) - ((@:checkr _m ?? throw "null pointer dereference")._leading : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function size( _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = _m;
        return (((@:check2r _m.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
