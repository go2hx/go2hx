package stdgo.crypto.aes;
var blockSize : stdgo.GoUInt64 = 16i64;
typedef KeyTest = stdgo._internal.crypto.aes.Aes_keytest.KeyTest;
typedef CryptTest = stdgo._internal.crypto.aes.Aes_crypttest.CryptTest;
typedef KeySizeError = stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError;
typedef KeyTestPointer = stdgo._internal.crypto.aes.Aes_keytestpointer.KeyTestPointer;
typedef CryptTestPointer = stdgo._internal.crypto.aes.Aes_crypttestpointer.CryptTestPointer;
typedef KeySizeErrorPointer = stdgo._internal.crypto.aes.Aes_keysizeerrorpointer.KeySizeErrorPointer;
/**
    * Package aes implements AES encryption (formerly Rijndael), as defined in
    * U.S. Federal Information Processing Standards Publication 197.
    * 
    * The AES operations in this package are not implemented using constant-time algorithms.
    * An exception is when running on systems with enabled hardware support for AES
    * that makes these operations constant-time. Examples include amd64 systems using AES-NI
    * extensions and s390x systems using Message-Security-Assist extensions.
    * On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    * the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        * Test that powx is initialized correctly.
        * (Can adapt this code to generate it too.)
    **/
    static public inline function testPowx(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testpowx.testPowx(_t);
    /**
        * Test all mul inputs against bit-by-bit n² algorithm.
    **/
    static public inline function testMul(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testmul.testMul(_t);
    /**
        * Check that S-boxes are inverses of each other.
        * They have more structure that we could test,
        * but if this sanity check passes, we'll assume
        * the cut and paste from the FIPS PDF worked.
    **/
    static public inline function testSboxes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testsboxes.testSboxes(_t);
    /**
        * Test that encryption tables are correct.
        * (Can adapt this code to generate them too.)
    **/
    static public inline function testTe(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testte.testTe(_t);
    /**
        * Test that decryption tables are correct.
        * (Can adapt this code to generate them too.)
    **/
    static public inline function testTd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testtd.testTd(_t);
    /**
        * Test key expansion against FIPS 197 examples.
    **/
    static public inline function testExpandKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testexpandkey.testExpandKey(_t);
    /**
        * Test Cipher Encrypt method against FIPS 197 examples.
    **/
    static public inline function testCipherEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testcipherencrypt.testCipherEncrypt(_t);
    /**
        * Test Cipher Decrypt against FIPS 197 examples.
    **/
    static public inline function testCipherDecrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testcipherdecrypt.testCipherDecrypt(_t);
    /**
        * Test short input/output.
        * Assembly used to not notice.
        * See issue 7928.
    **/
    static public inline function testShortBlocks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testshortblocks.testShortBlocks(_t);
    static public inline function benchmarkEncrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.aes.Aes_benchmarkencrypt.benchmarkEncrypt(_b);
    static public inline function benchmarkDecrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.aes.Aes_benchmarkdecrypt.benchmarkDecrypt(_b);
    static public inline function benchmarkExpand(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.aes.Aes_benchmarkexpand.benchmarkExpand(_b);
    /**
        * NewCipher creates and returns a new cipher.Block.
        * The key argument should be the AES key,
        * either 16, 24, or 32 bytes to select
        * AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key);
    /**
        * Test the gcmAble interface is detected correctly by the cipher package.
    **/
    static public inline function testGCMAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testgcmable.testGCMAble(_t);
    /**
        * Test the cbcEncAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCBCEncAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testcbcencable.testCBCEncAble(_t);
    /**
        * Test the cbcDecAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCBCDecAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testcbcdecable.testCBCDecAble(_t);
    /**
        * Test the ctrAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCTRAble(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.aes.Aes_testctrable.testCTRAble(_t);
}
