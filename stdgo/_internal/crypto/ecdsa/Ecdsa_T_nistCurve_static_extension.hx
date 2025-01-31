package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function _pointToAffine( _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<Dynamic>>, _p:Dynamic):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function _pointFromAffine( _curve:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : Dynamic; var _1 : stdgo.Error; } throw "generic function is not supported";
}
