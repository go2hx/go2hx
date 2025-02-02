package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest_static_extension.T_tbsCertificateRequest_static_extension) class T_tbsCertificateRequest {
    public var raw : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent = new stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent(0, 0);
    public var version : stdgo.GoInt = 0;
    public var subject : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public var publicKey : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo);
    @:tag("`asn1:\"tag:0\"`")
    public var rawAttributes : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:stdgo.GoInt, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo, ?rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) {
        if (raw != null) this.raw = raw;
        if (version != null) this.version = version;
        if (subject != null) this.subject = subject;
        if (publicKey != null) this.publicKey = publicKey;
        if (rawAttributes != null) this.rawAttributes = rawAttributes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tbsCertificateRequest(raw, version, subject, publicKey, rawAttributes);
    }
}
