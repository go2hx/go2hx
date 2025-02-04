package stdgo._internal.crypto.rsa;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_pssoptions_static_extension.PSSOptions_static_extension) class PSSOptions {
    public var saltLength : stdgo.GoInt = 0;
    public var hash : stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
    public function new(?saltLength:stdgo.GoInt, ?hash:stdgo._internal.crypto.Crypto_hash.Hash) {
        if (saltLength != null) this.saltLength = saltLength;
        if (hash != null) this.hash = hash;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PSSOptions(saltLength, hash);
    }
}
