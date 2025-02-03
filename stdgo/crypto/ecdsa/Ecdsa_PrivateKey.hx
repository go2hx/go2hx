package stdgo.crypto.ecdsa;
@:structInit @:using(stdgo.crypto.ecdsa.Ecdsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey) from stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey to stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey {
    public var publicKey(get, set) : PublicKey;
    function get_publicKey():PublicKey return this.publicKey;
    function set_publicKey(v:PublicKey):PublicKey {
        this.publicKey = v;
        return v;
    }
    public var d(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_d():stdgo._internal.math.big.Big_Int_.Int_ return this.d;
    function set_d(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.d = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?publicKey:PublicKey, ?d:stdgo._internal.math.big.Big_Int_.Int_) this = new stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey(publicKey, (d : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
