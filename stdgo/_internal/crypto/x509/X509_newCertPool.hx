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
function newCertPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> {
        return (stdgo.Go.setRef(({ _byName : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>), _haveSum : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_T_sum224.T_sum224", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 28), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>) : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>) } : stdgo._internal.crypto.x509.X509_CertPool.CertPool)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
    }
