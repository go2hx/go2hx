package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_revocationlist_static_extension.RevocationList_static_extension) class RevocationList {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSRevocationList : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawIssuer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var issuer : stdgo._internal.crypto.x509.pkix.Pkix_name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_name.Name);
    public var authorityKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    public var revokedCertificateEntries : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>);
    public var revokedCertificates : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
    public var number : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var thisUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var nextUpdate : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSRevocationList:stdgo.Slice<stdgo.GoUInt8>, ?rawIssuer:stdgo.Slice<stdgo.GoUInt8>, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, ?authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, ?revokedCertificateEntries:stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>, ?revokedCertificates:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, ?number:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) {
        if (raw != null) this.raw = raw;
        if (rawTBSRevocationList != null) this.rawTBSRevocationList = rawTBSRevocationList;
        if (rawIssuer != null) this.rawIssuer = rawIssuer;
        if (issuer != null) this.issuer = issuer;
        if (authorityKeyId != null) this.authorityKeyId = authorityKeyId;
        if (signature != null) this.signature = signature;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (revokedCertificateEntries != null) this.revokedCertificateEntries = revokedCertificateEntries;
        if (revokedCertificates != null) this.revokedCertificates = revokedCertificates;
        if (number != null) this.number = number;
        if (thisUpdate != null) this.thisUpdate = thisUpdate;
        if (nextUpdate != null) this.nextUpdate = nextUpdate;
        if (extensions != null) this.extensions = extensions;
        if (extraExtensions != null) this.extraExtensions = extraExtensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RevocationList(
raw,
rawTBSRevocationList,
rawIssuer,
issuer,
authorityKeyId,
signature,
signatureAlgorithm,
revokedCertificateEntries,
revokedCertificates,
number,
thisUpdate,
nextUpdate,
extensions,
extraExtensions);
    }
}
