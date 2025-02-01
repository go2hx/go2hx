package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.rsa.Rsa__hashPrefixes._hashPrefixes, __tmp__1 = stdgo._internal.crypto.rsa.Rsa__invalidSaltLenErr._invalidSaltLenErr, __tmp__2 = stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne, __tmp__3 = stdgo._internal.crypto.rsa.Rsa__errPublicModulus._errPublicModulus, __tmp__4 = stdgo._internal.crypto.rsa.Rsa__errPublicExponentSmall._errPublicExponentSmall, __tmp__5 = stdgo._internal.crypto.rsa.Rsa__errPublicExponentLarge._errPublicExponentLarge, __tmp__6 = stdgo._internal.crypto.rsa.Rsa_errMessageTooLong.errMessageTooLong, __tmp__7 = stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption, __tmp__8 = stdgo._internal.crypto.rsa.Rsa_errVerification.errVerification;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
