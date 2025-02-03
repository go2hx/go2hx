package stdgo.crypto.cipher;
/**
    Package cipher implements standard block cipher modes that can be wrapped
    around low-level block cipher implementations.
    See https://csrc.nist.gov/groups/ST/toolkit/BCM/current_modes.html
    and NIST Special Publication 800-38A.
**/
class Cipher {
    /**
        NewCBCEncrypter returns a BlockMode which encrypts in cipher block chaining
        mode, using the given Block. The length of iv must be the same as the
        Block's block size.
    **/
    static public inline function newCBCEncrypter(_b:Block, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newCBCEncrypter.newCBCEncrypter(_b, _iv);
    }
    /**
        NewCBCDecrypter returns a BlockMode which decrypts in cipher block chaining
        mode, using the given Block. The length of iv must be the same as the
        Block's block size and must match the iv used to encrypt the data.
    **/
    static public inline function newCBCDecrypter(_b:Block, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newCBCDecrypter.newCBCDecrypter(_b, _iv);
    }
    /**
        NewCFBEncrypter returns a Stream which encrypts with cipher feedback mode,
        using the given Block. The iv must be the same length as the Block's block
        size.
    **/
    static public inline function newCFBEncrypter(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newCFBEncrypter.newCFBEncrypter(_block, _iv);
    }
    /**
        NewCFBDecrypter returns a Stream which decrypts with cipher feedback mode,
        using the given Block. The iv must be the same length as the Block's block
        size.
    **/
    static public inline function newCFBDecrypter(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newCFBDecrypter.newCFBDecrypter(_block, _iv);
    }
    /**
        NewCTR returns a Stream which encrypts/decrypts using the given Block in
        counter mode. The length of iv must be the same as the Block's block size.
    **/
    static public inline function newCTR(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newCTR.newCTR(_block, _iv);
    }
    /**
        NewGCM returns the given 128-bit, block cipher wrapped in Galois Counter Mode
        with the standard nonce length.
        
        In general, the GHASH operation performed by this implementation of GCM is not constant-time.
        An exception is when the underlying Block was created by aes.NewCipher
        on systems with hardware support for AES. See the crypto/aes package documentation for details.
    **/
    static public inline function newGCM(_cipher:Block):stdgo.Tuple<AEAD, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newGCM.newGCM(_cipher);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewGCMWithNonceSize returns the given 128-bit, block cipher wrapped in Galois
        Counter Mode, which accepts nonces of the given length. The length must not
        be zero.
        
        Only use this function if you require compatibility with an existing
        cryptosystem that uses non-standard nonce lengths. All other users should use
        NewGCM, which is faster and more resistant to misuse.
    **/
    static public inline function newGCMWithNonceSize(_cipher:Block, _size:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _size = (_size : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newGCMWithNonceSize.newGCMWithNonceSize(_cipher, _size);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewGCMWithTagSize returns the given 128-bit, block cipher wrapped in Galois
        Counter Mode, which generates tags with the given length.
        
        Tag sizes between 12 and 16 bytes are allowed.
        
        Only use this function if you require compatibility with an existing
        cryptosystem that uses non-standard tag lengths. All other users should use
        NewGCM, which is more resistant to misuse.
    **/
    static public inline function newGCMWithTagSize(_cipher:Block, _tagSize:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newGCMWithTagSize.newGCMWithTagSize(_cipher, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewOFB returns a Stream that encrypts or decrypts using the block cipher b
        in output feedback mode. The initialization vector iv's length must be equal
        to b's block size.
    **/
    static public inline function newOFB(_b:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newOFB.newOFB(_b, _iv);
    }
}
