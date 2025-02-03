package stdgo.crypto.aes;
/**
    Package aes implements AES encryption (formerly Rijndael), as defined in
    U.S. Federal Information Processing Standards Publication 197.
    
    The AES operations in this package are not implemented using constant-time algorithms.
    An exception is when running on systems with enabled hardware support for AES
    that makes these operations constant-time. Examples include amd64 systems using AES-NI
    extensions and s390x systems using Message-Security-Assist extensions.
    On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        NewCipher creates and returns a new cipher.Block.
        The key argument should be the AES key,
        either 16, 24, or 32 bytes to select
        AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_newCipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
