package stdgo.crypto.ed25519;
@:structInit @:using(stdgo.crypto.ed25519.Ed25519.Options_static_extension) abstract Options(stdgo._internal.crypto.ed25519.Ed25519_Options.Options) from stdgo._internal.crypto.ed25519.Ed25519_Options.Options to stdgo._internal.crypto.ed25519.Ed25519_Options.Options {
    public var hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_Hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.hash = v;
        return v;
    }
    public var context(get, set) : String;
    function get_context():String return this.context;
    function set_context(v:String):String {
        this.context = (v : stdgo.GoString);
        return v;
    }
    public function new(?hash:stdgo._internal.crypto.Crypto_Hash.Hash, ?context:String) this = new stdgo._internal.crypto.ed25519.Ed25519_Options.Options(hash, (context : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
