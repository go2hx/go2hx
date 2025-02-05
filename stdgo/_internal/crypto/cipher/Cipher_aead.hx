package stdgo._internal.crypto.cipher;
@:interface typedef AEAD = stdgo.StructType & {
    /**
        * NonceSize returns the size of the nonce that must be passed to Seal
        * and Open.
        
        
    **/
    @:interfacetypeffun
    public dynamic function nonceSize():stdgo.GoInt;
    /**
        * Overhead returns the maximum difference between the lengths of a
        * plaintext and its ciphertext.
        
        
    **/
    @:interfacetypeffun
    public dynamic function overhead():stdgo.GoInt;
    /**
        * Seal encrypts and authenticates plaintext, authenticates the
        * additional data and appends the result to dst, returning the updated
        * slice. The nonce must be NonceSize() bytes long and unique for all
        * time, for a given key.
        * 
        * To reuse plaintext's storage for the encrypted output, use plaintext[:0]
        * as dst. Otherwise, the remaining capacity of dst must not overlap plaintext.
        
        
    **/
    @:interfacetypeffun
    public dynamic function seal(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    /**
        * Open decrypts and authenticates ciphertext, authenticates the
        * additional data and, if successful, appends the resulting plaintext
        * to dst, returning the updated slice. The nonce must be NonceSize()
        * bytes long and both it and the additional data must match the
        * value passed to Seal.
        * 
        * To reuse ciphertext's storage for the decrypted output, use ciphertext[:0]
        * as dst. Otherwise, the remaining capacity of dst must not overlap plaintext.
        * 
        * Even if the function fails, the contents of dst, up to its capacity,
        * may be overwritten.
        
        
    **/
    @:interfacetypeffun
    public dynamic function open(_dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
