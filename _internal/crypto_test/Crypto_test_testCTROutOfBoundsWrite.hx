package _internal.crypto_test;
function testCTROutOfBoundsWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.crypto_test.Crypto_test__testBlock._testBlock(_t, ("CTR" : stdgo.GoString), stdgo._internal.crypto.cipher.Cipher_newCTR.newCTR);
    }
