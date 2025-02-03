package stdgo.crypto.des;
/**
    Package des implements the Data Encryption Standard (DES) and the
    Triple Data Encryption Algorithm (TDEA) as defined
    in U.S. Federal Information Processing Standards Publication 46-3.
    
    DES is cryptographically broken and should not be used for secure
    applications.
**/
class Des {
    /**
        NewCipher creates and returns a new cipher.Block.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.des.Des_newCipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewTripleDESCipher creates and returns a new cipher.Block.
    **/
    static public inline function newTripleDESCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_Block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.des.Des_newTripleDESCipher.newTripleDESCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
