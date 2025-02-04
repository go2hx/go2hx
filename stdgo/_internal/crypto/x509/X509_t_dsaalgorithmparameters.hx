package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_dsaalgorithmparameters_static_extension.T_dsaAlgorithmParameters_static_extension) class T_dsaAlgorithmParameters {
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var g : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?g:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dsaAlgorithmParameters(p, q, g);
    }
}
