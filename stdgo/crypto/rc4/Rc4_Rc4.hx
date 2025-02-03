package stdgo.crypto.rc4;
/**
    Package rc4 implements RC4 encryption, as defined in Bruce Schneier's
    Applied Cryptography.
    
    RC4 is cryptographically broken and should not be used for secure
    applications.
**/
class Rc4 {
    /**
        NewCipher creates and returns a new Cipher. The key argument should be the
        RC4 key, at least 1 byte and at most 256 bytes.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<Cipher, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rc4.Rc4_newCipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
