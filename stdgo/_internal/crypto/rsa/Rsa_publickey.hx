package stdgo._internal.crypto.rsa;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_publickey_static_extension.PublicKey_static_extension) class PublicKey {
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public function new(?n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?e:stdgo.GoInt) {
        if (n != null) this.n = n;
        if (e != null) this.e = e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(n, e);
    }
}
