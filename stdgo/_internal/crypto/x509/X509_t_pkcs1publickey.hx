package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pkcs1publickey_static_extension.T_pkcs1PublicKey_static_extension) class T_pkcs1PublicKey {
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public function new(?n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?e:stdgo.GoInt) {
        if (n != null) this.n = n;
        if (e != null) this.e = e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs1PublicKey(n, e);
    }
}
