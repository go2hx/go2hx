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
function _parseCSRExtensions(_rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } {
        {};
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        var _requestedExts = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__1 => _rawAttr in _rawAttributes) {
            var _attr:stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 = ({} : stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_rawAttr.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_attr) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null || (_rest.length) != ((0 : stdgo.GoInt)) : Bool) || (_attr.values.length == (0 : stdgo.GoInt)) : Bool)) {
                    continue;
                };
            };
            if (!_attr.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionRequest._oidExtensionRequest)) {
                continue;
            };
            var _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_attr.values[(0 : stdgo.GoInt)].fullBytes, stdgo.Go.toInterface((stdgo.Go.setRef(_extensions) : stdgo.Ref<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                };
            };
            for (__3 => _ext in _extensions) {
                var _oidStr = ((_ext.id.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_requestedExts[_oidStr] ?? false)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate request contains duplicate requested extensions" : stdgo.GoString)) };
                };
                _requestedExts[_oidStr] = true;
            };
            _ret = (_ret.__append__(...(_extensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>)));
        };
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
