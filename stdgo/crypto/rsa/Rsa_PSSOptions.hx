package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.PSSOptions_static_extension) abstract PSSOptions(stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions) from stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions to stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions {
    public var saltLength(get, set) : StdTypes.Int;
    function get_saltLength():StdTypes.Int return this.saltLength;
    function set_saltLength(v:StdTypes.Int):StdTypes.Int {
        this.saltLength = (v : stdgo.GoInt);
        return v;
    }
    public var hash(get, set) : stdgo._internal.crypto.Crypto_Hash.Hash;
    function get_hash():stdgo._internal.crypto.Crypto_Hash.Hash return this.hash;
    function set_hash(v:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo._internal.crypto.Crypto_Hash.Hash {
        this.hash = v;
        return v;
    }
    public function new(?saltLength:StdTypes.Int, ?hash:stdgo._internal.crypto.Crypto_Hash.Hash) this = new stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions((saltLength : stdgo.GoInt), hash);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
