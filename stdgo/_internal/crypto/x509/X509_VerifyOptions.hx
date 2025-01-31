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
@:structInit @:using(stdgo._internal.crypto.x509.X509_VerifyOptions_static_extension.VerifyOptions_static_extension) class VerifyOptions {
    public var dNSName : stdgo.GoString = "";
    public var intermediates : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    public var currentTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var keyUsages : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
    public var maxConstraintComparisions : stdgo.GoInt = 0;
    public function new(?dNSName:stdgo.GoString, ?intermediates:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, ?currentTime:stdgo._internal.time.Time_Time.Time, ?keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>, ?maxConstraintComparisions:stdgo.GoInt) {
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
