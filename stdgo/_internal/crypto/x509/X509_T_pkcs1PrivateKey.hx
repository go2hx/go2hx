package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_pkcs1PrivateKey {
    public var version : stdgo.GoInt = 0;
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var e : stdgo.GoInt = 0;
    public var d : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var q : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var dp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var dq : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    @:tag("`asn1:\"optional\"`")
    public var qinv : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    @:tag("`asn1:\"optional,omitempty\"`")
    public var additionalPrimes : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>);
    public function new(?version:stdgo.GoInt, ?n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?e:stdgo.GoInt, ?d:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?dp:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?dq:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?qinv:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?additionalPrimes:stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>) {
        if (version != null) this.version = version;
        if (n != null) this.n = n;
        if (e != null) this.e = e;
        if (d != null) this.d = d;
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (dp != null) this.dp = dp;
        if (dq != null) this.dq = dq;
        if (qinv != null) this.qinv = qinv;
        if (additionalPrimes != null) this.additionalPrimes = additionalPrimes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkcs1PrivateKey(version, n, e, d, p, q, dp, dq, qinv, additionalPrimes);
    }
}