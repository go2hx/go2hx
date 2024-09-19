package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_pkcs1PublicKey {
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public function new(?n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?e:stdgo.GoInt) {
        if (n != null) this.n = n;
        if (e != null) this.e = e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs1PublicKey(n, e);
    }
}
