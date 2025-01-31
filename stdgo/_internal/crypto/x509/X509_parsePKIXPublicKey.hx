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
function parsePKIXPublicKey(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _pub = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
        var _pki:stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo = ({} : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_pki) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey() : stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs1PublicKey.T_pkcs1PublicKey>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse public key (use ParsePKCS1PublicKey instead for this key format)" : stdgo.GoString)) };
                            _pub = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    _pub = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after ASN.1 of public-key" : stdgo.GoString)) };
                    _pub = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = stdgo._internal.crypto.x509.X509__parsePublicKey._parsePublicKey((stdgo.Go.setRef(_pki) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>));
            _pub = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
