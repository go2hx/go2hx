package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrivateKey_static_extension) abstract PrivateKey(stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey) from stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey to stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey {
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
    public var primes(get, set) : Array<stdgo._internal.math.big.Big_Int_.Int_>;
    function get_primes():Array<stdgo._internal.math.big.Big_Int_.Int_> return [for (i in this.primes) i];
    function set_primes(v:Array<stdgo._internal.math.big.Big_Int_.Int_>):Array<stdgo._internal.math.big.Big_Int_.Int_> {
        this.primes = ([for (i in v) (i : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        return v;
    }
    public var precomputed(get, set) : PrecomputedValues;
    function get_precomputed():PrecomputedValues return this.precomputed;
    function set_precomputed(v:PrecomputedValues):PrecomputedValues {
        this.precomputed = v;
        return v;
    }
    public function new(?publicKey:PublicKey, ?d:stdgo._internal.math.big.Big_Int_.Int_, ?primes:Array<stdgo._internal.math.big.Big_Int_.Int_>, ?precomputed:PrecomputedValues) this = new stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey(publicKey, (d : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), ([for (i in primes) (i : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
