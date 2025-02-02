package stdgo._internal.crypto.rsa;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_OAEPOptions_static_extension.OAEPOptions_static_extension) class OAEPOptions {
    public var hash : stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
    public var mGFHash : stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
    public var label : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?hash:stdgo._internal.crypto.Crypto_Hash.Hash, ?mGFHash:stdgo._internal.crypto.Crypto_Hash.Hash, ?label:stdgo.Slice<stdgo.GoUInt8>) {
        if (hash != null) this.hash = hash;
        if (mGFHash != null) this.mGFHash = mGFHash;
        if (label != null) this.label = label;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OAEPOptions(hash, mGFHash, label);
    }
}
