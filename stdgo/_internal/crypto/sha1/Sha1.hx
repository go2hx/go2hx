package stdgo._internal.crypto.sha1;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.sha1.Sha1__golden._golden, __tmp__1 = stdgo._internal.crypto.sha1.Sha1__largeUnmarshalTests._largeUnmarshalTests, __tmp__2 = stdgo._internal.crypto.sha1.Sha1__bench._bench, __tmp__3 = stdgo._internal.crypto.sha1.Sha1__buf._buf;
            stdgo._internal.crypto.Crypto_registerHash.registerHash((3u32 : stdgo._internal.crypto.Crypto_Hash.Hash), stdgo._internal.crypto.sha1.Sha1_new_.new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
