package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_basicconstraints_static_extension.T_basicConstraints_static_extension) class T_basicConstraints {
    @:tag("`asn1:\"optional\"`")
    public var isCA : Bool = false;
    @:tag("`asn1:\"optional,default:-1\"`")
    public var maxPathLen : stdgo.GoInt = 0;
    public function new(?isCA:Bool, ?maxPathLen:stdgo.GoInt) {
        if (isCA != null) this.isCA = isCA;
        if (maxPathLen != null) this.maxPathLen = maxPathLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicConstraints(isCA, maxPathLen);
    }
}
