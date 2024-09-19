package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_basicConstraints {
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
