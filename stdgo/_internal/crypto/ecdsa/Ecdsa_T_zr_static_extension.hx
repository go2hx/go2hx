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
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.T_zr_asInterface) class T_zr_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr, _dst:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_dst.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
