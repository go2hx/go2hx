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
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_T_zr_static_extension.T_zr_static_extension) class T_zr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zr();
    }
}
