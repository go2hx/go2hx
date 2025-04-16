package stdgo.crypto.des;
var blockSize : stdgo.GoUInt64 = 8i32;
typedef CryptTest = stdgo._internal.crypto.des.Des_crypttest.CryptTest;
typedef KeySizeError = stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError;
typedef CryptTestPointer = stdgo._internal.crypto.des.Des_crypttestpointer.CryptTestPointer;
typedef KeySizeErrorPointer = stdgo._internal.crypto.des.Des_keysizeerrorpointer.KeySizeErrorPointer;
/**
    * Package des implements the Data Encryption Standard (DES) and the
    * Triple Data Encryption Algorithm (TDEA) as defined
    * in U.S. Federal Information Processing Standards Publication 46-3.
    * 
    * DES is cryptographically broken and should not be used for secure
    * applications.
**/
class Des {
    /**
        * NewCipher creates and returns a new cipher.Block.
    **/
    static public inline function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.des.Des_newcipher.newCipher(_key);
    /**
        * NewTripleDESCipher creates and returns a new cipher.Block.
    **/
    static public inline function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(_key);
    /**
        * Use the known weak keys to test DES implementation
    **/
    static public inline function testWeakKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testweakkeys.testWeakKeys(_t);
    /**
        * Use the known semi-weak key pairs to test DES implementation
    **/
    static public inline function testSemiWeakKeyPairs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testsemiweakkeypairs.testSemiWeakKeyPairs(_t);
    static public inline function testDESEncryptBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testdesencryptblock.testDESEncryptBlock(_t);
    static public inline function testDESDecryptBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testdesdecryptblock.testDESDecryptBlock(_t);
    static public inline function testEncryptTripleDES(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testencrypttripledes.testEncryptTripleDES(_t);
    static public inline function testDecryptTripleDES(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testdecrypttripledes.testDecryptTripleDES(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testVariablePlaintextKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testvariableplaintextknownanswer.testVariablePlaintextKnownAnswer(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testVariableCiphertextKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testvariableciphertextknownanswer.testVariableCiphertextKnownAnswer(_t);
    /**
        * Defined in Pub 800-20
        * Encrypting the Table A.1 ciphertext with the
        * 0x01... key produces the original plaintext
    **/
    static public inline function testInversePermutationKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testinversepermutationknownanswer.testInversePermutationKnownAnswer(_t);
    /**
        * Defined in Pub 800-20
        * Decrypting the Table A.1 plaintext with the
        * 0x01... key produces the corresponding ciphertext
    **/
    static public inline function testInitialPermutationKnownAnswer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testinitialpermutationknownanswer.testInitialPermutationKnownAnswer(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testVariableKeyKnownAnswerEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testvariablekeyknownanswerencrypt.testVariableKeyKnownAnswerEncrypt(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testVariableKeyKnownAnswerDecrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testvariablekeyknownanswerdecrypt.testVariableKeyKnownAnswerDecrypt(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testPermutationOperationKnownAnswerEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testpermutationoperationknownanswerencrypt.testPermutationOperationKnownAnswerEncrypt(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testPermutationOperationKnownAnswerDecrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testpermutationoperationknownanswerdecrypt.testPermutationOperationKnownAnswerDecrypt(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testSubstitutionTableKnownAnswerEncrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testsubstitutiontableknownanswerencrypt.testSubstitutionTableKnownAnswerEncrypt(_t);
    /**
        * Defined in Pub 800-20
    **/
    static public inline function testSubstitutionTableKnownAnswerDecrypt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testsubstitutiontableknownanswerdecrypt.testSubstitutionTableKnownAnswerDecrypt(_t);
    static public inline function testInitialPermute(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testinitialpermute.testInitialPermute(_t);
    static public inline function testFinalPermute(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.des.Des_testfinalpermute.testFinalPermute(_t);
    static public inline function benchmarkEncrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.des.Des_benchmarkencrypt.benchmarkEncrypt(_b);
    static public inline function benchmarkDecrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.des.Des_benchmarkdecrypt.benchmarkDecrypt(_b);
    static public inline function benchmarkTDESEncrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.des.Des_benchmarktdesencrypt.benchmarkTDESEncrypt(_b);
    static public inline function benchmarkTDESDecrypt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.crypto.des.Des_benchmarktdesdecrypt.benchmarkTDESDecrypt(_b);
}
