package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class VerifyOptions {
    public var dnsname : stdgo.GoString = "";
    public var intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var currentTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var keyUsages : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
    public var maxConstraintComparisions : stdgo.GoInt = 0;
    public function new(?dnsname:stdgo.GoString, ?intermediates:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?currentTime:stdgo._internal.time.Time_Time.Time, ?keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>, ?maxConstraintComparisions:stdgo.GoInt) {
        if (dnsname != null) this.dnsname = dnsname;
        if (intermediates != null) this.intermediates = intermediates;
        if (roots != null) this.roots = roots;
        if (currentTime != null) this.currentTime = currentTime;
        if (keyUsages != null) this.keyUsages = keyUsages;
        if (maxConstraintComparisions != null) this.maxConstraintComparisions = maxConstraintComparisions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VerifyOptions(dnsname, intermediates, roots, currentTime, keyUsages, maxConstraintComparisions);
    }
}
