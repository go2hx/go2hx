package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_tbscertificaterequest_static_extension.T_tbsCertificateRequest_static_extension) class T_tbsCertificateRequest {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    public var version : stdgo.GoInt = 0;
    public var subject : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public var publicKey : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo);
    @:tag("`asn1:\"tag:0\"`")
    public var rawAttributes : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:stdgo.GoInt, ?subject:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue, ?publicKey:stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo, ?rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) {
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
