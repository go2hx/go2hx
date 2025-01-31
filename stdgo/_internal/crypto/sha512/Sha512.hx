package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.sha512.Sha512___K.__K;
            stdgo._internal.crypto.Crypto_registerHash.registerHash((6u32 : stdgo._internal.crypto.Crypto_Hash.Hash), stdgo._internal.crypto.sha512.Sha512_new384.new384);
            stdgo._internal.crypto.Crypto_registerHash.registerHash((7u32 : stdgo._internal.crypto.Crypto_Hash.Hash), stdgo._internal.crypto.sha512.Sha512_new_.new_);
            stdgo._internal.crypto.Crypto_registerHash.registerHash((14u32 : stdgo._internal.crypto.Crypto_Hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224);
            stdgo._internal.crypto.Crypto_registerHash.registerHash((15u32 : stdgo._internal.crypto.Crypto_Hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
