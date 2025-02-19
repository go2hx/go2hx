package stdgo._internal.crypto.sha512;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.sha512.Sha512___k.__K, __tmp__1 = stdgo._internal.crypto.sha512.Sha512__golden224._golden224, __tmp__2 = stdgo._internal.crypto.sha512.Sha512__golden256._golden256, __tmp__3 = stdgo._internal.crypto.sha512.Sha512__golden384._golden384, __tmp__4 = stdgo._internal.crypto.sha512.Sha512__golden512._golden512, __tmp__5 = stdgo._internal.crypto.sha512.Sha512__largeunmarshaltests._largeUnmarshalTests, __tmp__6 = stdgo._internal.crypto.sha512.Sha512__bench._bench, __tmp__7 = stdgo._internal.crypto.sha512.Sha512__buf._buf;
            stdgo._internal.crypto.Crypto_registerhash.registerHash((6u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new384.new384);
            stdgo._internal.crypto.Crypto_registerhash.registerHash((7u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new_.new_);
            stdgo._internal.crypto.Crypto_registerhash.registerHash((14u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224);
            stdgo._internal.crypto.Crypto_registerhash.registerHash((15u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
