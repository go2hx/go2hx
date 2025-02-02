package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_pssParameters_static_extension.T_pssParameters_static_extension) class T_pssParameters {
    @:tag("`asn1:\"explicit,tag:0\"`")
    public var hash : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    @:tag("`asn1:\"explicit,tag:1\"`")
    public var mGF : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    @:tag("`asn1:\"explicit,tag:2\"`")
    public var saltLength : stdgo.GoInt = 0;
    @:tag("`asn1:\"optional,explicit,tag:3,default:1\"`")
    public var trailerField : stdgo.GoInt = 0;
    public function new(?hash:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?mGF:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?saltLength:stdgo.GoInt, ?trailerField:stdgo.GoInt) {
        if (hash != null) this.hash = hash;
        if (mGF != null) this.mGF = mGF;
        if (saltLength != null) this.saltLength = saltLength;
        if (trailerField != null) this.trailerField = trailerField;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pssParameters(hash, mGF, saltLength, trailerField);
    }
}
