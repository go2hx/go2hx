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
function _buildCSRExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } {
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        if (((((((((@:checkr _template ?? throw "null pointer dereference").dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalSANs._marshalSANs((@:checkr _template ?? throw "null pointer dereference").dNSNames, (@:checkr _template ?? throw "null pointer dereference").emailAddresses, (@:checkr _template ?? throw "null pointer dereference").iPAddresses, (@:checkr _template ?? throw "null pointer dereference").uRIs), _sanBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
            };
            _ret = (_ret.__append__(({ id : stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, value : _sanBytes } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)));
        };
        return { _0 : (_ret.__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>))), _1 : (null : stdgo.Error) };
    }
