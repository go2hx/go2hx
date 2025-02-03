package stdgo.crypto.dsa;
@:structInit @:using(stdgo.crypto.dsa.Dsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey) from stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey to stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var x(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_x():stdgo._internal.math.big.Big_Int_.Int_ return this.x;
    function set_x(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.x = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?publicKey:PublicKey, ?x:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey(publicKey, (x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
