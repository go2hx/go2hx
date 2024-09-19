package _internal.crypto_test;
function testCFBDecryptOutOfBoundsWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.crypto_test.Crypto_test__testBlock._testBlock(_t, ("CFB Decrypt" : stdgo.GoString), stdgo._internal.crypto.cipher.Cipher_newCFBDecrypter.newCFBDecrypter);
    }
