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
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_distributionPointName_static_extension.T_distributionPointName_static_extension) class T_distributionPointName {
    @:tag("`asn1:\"optional,tag:0\"`")
    public var fullName : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
    @:tag("`asn1:\"optional,tag:1\"`")
    public var relativeName : stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
    public function new(?fullName:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>, ?relativeName:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence) {
        if (fullName != null) this.fullName = fullName;
        if (relativeName != null) this.relativeName = relativeName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_distributionPointName(fullName, relativeName);
    }
}
