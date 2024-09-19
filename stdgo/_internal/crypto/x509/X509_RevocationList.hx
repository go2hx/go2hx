package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_RevocationList_static_extension.RevocationList_static_extension) class RevocationList {
    public var raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawTBSRevocationList : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var rawIssuer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var issuer : stdgo._internal.crypto.x509.pkix.Pkix_Name.Name = ({} : stdgo._internal.crypto.x509.pkix.Pkix_Name.Name);
    public var authorityKeyId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
    public var revokedCertificateEntries : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>);
    public var revokedCertificates : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
    public var number : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var thisUpdate : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var nextUpdate : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public var extraExtensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public function new(?raw:stdgo.Slice<stdgo.GoUInt8>, ?rawTBSRevocationList:stdgo.Slice<stdgo.GoUInt8>, ?rawIssuer:stdgo.Slice<stdgo.GoUInt8>, ?issuer:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name, ?authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, ?signature:stdgo.Slice<stdgo.GoUInt8>, ?signatureAlgorithm:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, ?revokedCertificateEntries:stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>, ?revokedCertificates:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>, ?number:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?thisUpdate:stdgo._internal.time.Time_Time.Time, ?nextUpdate:stdgo._internal.time.Time_Time.Time, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>, ?extraExtensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) {
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
