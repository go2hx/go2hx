package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_verifyoptions_static_extension.VerifyOptions_static_extension) class VerifyOptions {
    public var dNSName : stdgo.GoString = "";
    public var intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var currentTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var keyUsages : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
    public var maxConstraintComparisions : stdgo.GoInt = 0;
    public function new(?dNSName:stdgo.GoString, ?intermediates:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?currentTime:stdgo._internal.time.Time_time.Time, ?keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, ?maxConstraintComparisions:stdgo.GoInt) {
        if (dNSName != null) this.dNSName = dNSName;
        if (intermediates != null) this.intermediates = intermediates;
        if (roots != null) this.roots = roots;
        if (currentTime != null) this.currentTime = currentTime;
        if (keyUsages != null) this.keyUsages = keyUsages;
        if (maxConstraintComparisions != null) this.maxConstraintComparisions = maxConstraintComparisions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VerifyOptions(dNSName, intermediates, roots, currentTime, keyUsages, maxConstraintComparisions);
    }
}
