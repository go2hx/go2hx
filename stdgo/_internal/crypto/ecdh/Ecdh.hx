package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.ecdh.Ecdh__errInvalidPrivateKey._errInvalidPrivateKey, __tmp__1 = stdgo._internal.crypto.ecdh.Ecdh__p256Order._p256Order, __tmp__2 = stdgo._internal.crypto.ecdh.Ecdh__p256._p256, __tmp__3 = stdgo._internal.crypto.ecdh.Ecdh__p384Order._p384Order, __tmp__4 = stdgo._internal.crypto.ecdh.Ecdh__p384._p384, __tmp__5 = stdgo._internal.crypto.ecdh.Ecdh__p521Order._p521Order, __tmp__6 = stdgo._internal.crypto.ecdh.Ecdh__p521._p521, __tmp__7 = stdgo._internal.crypto.ecdh.Ecdh__x25519PublicKeySize._x25519PublicKeySize, __tmp__8 = stdgo._internal.crypto.ecdh.Ecdh__x25519PrivateKeySize._x25519PrivateKeySize, __tmp__9 = stdgo._internal.crypto.ecdh.Ecdh__x25519SharedSecretSize._x25519SharedSecretSize, __tmp__10 = stdgo._internal.crypto.ecdh.Ecdh__x25519._x25519;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
