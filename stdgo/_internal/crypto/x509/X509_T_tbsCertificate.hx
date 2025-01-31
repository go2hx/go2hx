package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_tbsCertificate_static_extension.T_tbsCertificate_static_extension) class T_tbsCertificate {
    public var raw : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent = new stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent(0, 0);
    @:tag("`asn1:\"optional,explicit,default:0,tag:0\"`")
    public var version : stdgo.GoInt = 0;
    public var serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var issuer : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public var validity : stdgo._internal.crypto.x509.X509_T_validity.T_validity = ({} : stdgo._internal.crypto.x509.X509_T_validity.T_validity);
    public var subject : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public var publicKey : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo);
    @:tag("`asn1:\"optional,tag:1\"`")
    public var uniqueId : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    @:tag("`asn1:\"optional,tag:2\"`")
    public var subjectUniqueId : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    @:tag("`asn1:\"omitempty,optional,explicit,tag:3\"`")
    public var extensions : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:stdgo.GoInt, ?serialNumber:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?issuer:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?validity:stdgo._internal.crypto.x509.X509_T_validity.T_validity, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo, ?uniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?subjectUniqueId:stdgo._internal.encoding.asn1.Asn1_BitString.BitString, ?extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) {
        if (raw != null) this.raw = raw;
        if (version != null) this.version = version;
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (issuer != null) this.issuer = issuer;
        if (validity != null) this.validity = validity;
        if (subject != null) this.subject = subject;
        if (publicKey != null) this.publicKey = publicKey;
        if (uniqueId != null) this.uniqueId = uniqueId;
        if (subjectUniqueId != null) this.subjectUniqueId = subjectUniqueId;
        if (extensions != null) this.extensions = extensions;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tbsCertificate(
raw,
version,
serialNumber,
signatureAlgorithm,
issuer,
validity,
subject,
publicKey,
uniqueId,
subjectUniqueId,
extensions);
    }
}
