package stdgo.crypto.cipher;
var newCBCGenericEncrypter(get, set) : (Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode;
private function get_newCBCGenericEncrypter():(Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode return stdgo._internal.crypto.cipher.Cipher_newcbcgenericencrypter.newCBCGenericEncrypter;
private function set_newCBCGenericEncrypter(v:(Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode):(stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        stdgo._internal.crypto.cipher.Cipher_newcbcgenericencrypter.newCBCGenericEncrypter = v;
        return v;
    }
var newCBCGenericDecrypter(get, set) : (Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode;
private function get_newCBCGenericDecrypter():(Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode return stdgo._internal.crypto.cipher.Cipher_newcbcgenericdecrypter.newCBCGenericDecrypter;
private function set_newCBCGenericDecrypter(v:(Block, stdgo.Slice<stdgo.GoUInt8>) -> BlockMode):(stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        stdgo._internal.crypto.cipher.Cipher_newcbcgenericdecrypter.newCBCGenericDecrypter = v;
        return v;
    }
typedef Block = stdgo._internal.crypto.cipher.Cipher_block.Block;
typedef Stream = stdgo._internal.crypto.cipher.Cipher_stream.Stream;
typedef BlockMode = stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode;
typedef AEAD = stdgo._internal.crypto.cipher.Cipher_aead.AEAD;
typedef StreamReader = stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader;
typedef StreamWriter = stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter;
typedef StreamReaderPointer = stdgo._internal.crypto.cipher.Cipher_streamreaderpointer.StreamReaderPointer;
typedef StreamWriterPointer = stdgo._internal.crypto.cipher.Cipher_streamwriterpointer.StreamWriterPointer;
/**
    * Package cipher implements standard block cipher modes that can be wrapped
    * around low-level block cipher implementations.
    * See https://csrc.nist.gov/groups/ST/toolkit/BCM/current_modes.html
    * and NIST Special Publication 800-38A.
**/
class Cipher {
    /**
        * NewCBCEncrypter returns a BlockMode which encrypts in cipher block chaining
        * mode, using the given Block. The length of iv must be the same as the
        * Block's block size.
    **/
    static public inline function newCBCEncrypter(_b:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode return stdgo._internal.crypto.cipher.Cipher_newcbcencrypter.newCBCEncrypter(_b, _iv);
    /**
        * NewCBCDecrypter returns a BlockMode which decrypts in cipher block chaining
        * mode, using the given Block. The length of iv must be the same as the
        * Block's block size and must match the iv used to encrypt the data.
    **/
    static public inline function newCBCDecrypter(_b:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode return stdgo._internal.crypto.cipher.Cipher_newcbcdecrypter.newCBCDecrypter(_b, _iv);
    /**
        * NewCFBEncrypter returns a Stream which encrypts with cipher feedback mode,
        * using the given Block. The iv must be the same length as the Block's block
        * size.
    **/
    static public inline function newCFBEncrypter(_block:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return stdgo._internal.crypto.cipher.Cipher_newcfbencrypter.newCFBEncrypter(_block, _iv);
    /**
        * NewCFBDecrypter returns a Stream which decrypts with cipher feedback mode,
        * using the given Block. The iv must be the same length as the Block's block
        * size.
    **/
    static public inline function newCFBDecrypter(_block:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return stdgo._internal.crypto.cipher.Cipher_newcfbdecrypter.newCFBDecrypter(_block, _iv);
    /**
        * NewCTR returns a Stream which encrypts/decrypts using the given Block in
        * counter mode. The length of iv must be the same as the Block's block size.
    **/
    static public inline function newCTR(_block:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv);
    /**
        * NewGCM returns the given 128-bit, block cipher wrapped in Galois Counter Mode
        * with the standard nonce length.
        * 
        * In general, the GHASH operation performed by this implementation of GCM is not constant-time.
        * An exception is when the underlying Block was created by aes.NewCipher
        * on systems with hardware support for AES. See the crypto/aes package documentation for details.
    **/
    static public inline function newGCM(_cipher:Block):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return stdgo._internal.crypto.cipher.Cipher_newgcm.newGCM(_cipher);
    /**
        * NewGCMWithNonceSize returns the given 128-bit, block cipher wrapped in Galois
        * Counter Mode, which accepts nonces of the given length. The length must not
        * be zero.
        * 
        * Only use this function if you require compatibility with an existing
        * cryptosystem that uses non-standard nonce lengths. All other users should use
        * NewGCM, which is faster and more resistant to misuse.
    **/
    static public inline function newGCMWithNonceSize(_cipher:Block, _size:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return stdgo._internal.crypto.cipher.Cipher_newgcmwithnoncesize.newGCMWithNonceSize(_cipher, _size);
    /**
        * NewGCMWithTagSize returns the given 128-bit, block cipher wrapped in Galois
        * Counter Mode, which generates tags with the given length.
        * 
        * Tag sizes between 12 and 16 bytes are allowed.
        * 
        * Only use this function if you require compatibility with an existing
        * cryptosystem that uses non-standard tag lengths. All other users should use
        * NewGCM, which is more resistant to misuse.
    **/
    static public inline function newGCMWithTagSize(_cipher:Block, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return stdgo._internal.crypto.cipher.Cipher_newgcmwithtagsize.newGCMWithTagSize(_cipher, _tagSize);
    /**
        * NewOFB returns a Stream that encrypts or decrypts using the block cipher b
        * in output feedback mode. The initialization vector iv's length must be equal
        * to b's block size.
    **/
    static public inline function newOFB(_b:Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return stdgo._internal.crypto.cipher.Cipher_newofb.newOFB(_b, _iv);
}
