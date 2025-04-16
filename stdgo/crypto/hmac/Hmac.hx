package stdgo.crypto.hmac;
/**
    * 
    * Package hmac implements the Keyed-Hash Message Authentication Code (HMAC) as
    * defined in U.S. Federal Information Processing Standards Publication 198.
    * An HMAC is a cryptographic hash that uses a key to sign a message.
    * The receiver verifies the hash by recomputing it using the same key.
    * 
    * Receivers should be careful to use Equal to compare MACs in order to avoid
    * timing side-channels:
    * 
    * 	// ValidMAC reports whether messageMAC is a valid HMAC tag for message.
    * 	func ValidMAC(message, messageMAC, key []byte) bool {
    * 		mac := hmac.New(sha256.New, key)
    * 		mac.Write(message)
    * 		expectedMAC := mac.Sum(nil)
    * 		return hmac.Equal(messageMAC, expectedMAC)
    * 	}
    * 
**/
class Hmac {
    /**
        * New returns a new HMAC hash using the given hash.Hash type and key.
        * New functions like sha256.New from crypto/sha256 can be used as h.
        * h must return a new Hash every time it is called.
        * Note that unlike other hash implementations in the standard library,
        * the returned Hash does not implement encoding.BinaryMarshaler
        * or encoding.BinaryUnmarshaler.
    **/
    static public inline function new_(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.hmac.Hmac_new_.new_(_h, _key);
    /**
        * Equal compares two MACs for equality without leaking timing information.
    **/
    static public inline function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool return stdgo._internal.crypto.hmac.Hmac_equal.equal(_mac1, _mac2);
}
