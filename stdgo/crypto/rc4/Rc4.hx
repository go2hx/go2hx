package stdgo.crypto.rc4;
typedef Cipher = stdgo._internal.crypto.rc4.Rc4_cipher.Cipher;
typedef KeySizeError = stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError;
typedef CipherPointer = stdgo._internal.crypto.rc4.Rc4_cipherpointer.CipherPointer;
typedef KeySizeErrorPointer = stdgo._internal.crypto.rc4.Rc4_keysizeerrorpointer.KeySizeErrorPointer;
/**
    * Package rc4 implements RC4 encryption, as defined in Bruce Schneier's
    * Applied Cryptography.
    * 
    * RC4 is cryptographically broken and should not be used for secure
    * applications.
**/
class Rc4 {
    /**
        * NewCipher creates and returns a new Cipher. The key argument should be the
        * RC4 key, at least 1 byte and at most 256 bytes.
    **/
    static public inline function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(_key);
}
