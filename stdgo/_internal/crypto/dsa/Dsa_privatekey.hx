package stdgo._internal.crypto.dsa;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey = ({} : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?publicKey:stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey, ?x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (publicKey != null) this.publicKey = publicKey;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(publicKey, x);
    }
}
