package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.OAEPOptions_static_extension) abstract OAEPOptions(stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions) from stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions to stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions {
    public var hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_Hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.hash = v;
        return v;
    }
    public var mGFHash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_mGFHash():stdgo._internal.crypto.Crypto_Hash.Hash return this.mGFHash;
    function set_mGFHash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.mGFHash = v;
        return v;
    }
    public var label(get, set) : Array<std.UInt>;
    function get_label():Array<std.UInt> return [for (i in this.label) i];
    function set_label(v:Array<std.UInt>):Array<std.UInt> {
        this.label = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.Crypto_Hash.Hash, ?mGFHash:stdgo._internal.crypto.Crypto_Hash.Hash, ?label:Array<std.UInt>) this = new stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions(hash, mGFHash, ([for (i in label) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
