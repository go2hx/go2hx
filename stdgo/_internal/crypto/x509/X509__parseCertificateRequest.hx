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
function _parseCertificateRequest(_in:stdgo.Ref<stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _out = (stdgo.Go.setRef(({ raw : (@:checkr _in ?? throw "null pointer dereference").raw, rawTBSCertificateRequest : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.raw, rawSubjectPublicKeyInfo : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey.raw, rawSubject : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.subject.fullBytes, signature : (@:checkr _in ?? throw "null pointer dereference").signatureValue.rightAlign(), signatureAlgorithm : stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI((@:checkr _in ?? throw "null pointer dereference").signatureAlgorithm?.__copy__()), publicKeyAlgorithm : stdgo._internal.crypto.x509.X509__getPublicKeyAlgorithmFromOID._getPublicKeyAlgorithmFromOID((@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey.algorithm.algorithm), version : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.version, attributes : stdgo._internal.crypto.x509.X509__parseRawAttributes._parseRawAttributes((@:checkr _in ?? throw "null pointer dereference").tBSCSR.rawAttributes) } : stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>);
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _out ?? throw "null pointer dereference").publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsePublicKey._parsePublicKey((stdgo.Go.setRef((@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>));
                (@:checkr _out ?? throw "null pointer dereference").publicKey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _subject:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal((@:checkr _in ?? throw "null pointer dereference").tBSCSR.subject.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after X.509 Subject" : stdgo.GoString)) };
            };
        };
        @:check2 (@:checkr _out ?? throw "null pointer dereference").subject.fillFromRDNSequence((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>));
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseCSRExtensions._parseCSRExtensions((@:checkr _in ?? throw "null pointer dereference").tBSCSR.rawAttributes);
                (@:checkr _out ?? throw "null pointer dereference").extensions = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        for (__1 => _extension in (@:checkr _out ?? throw "null pointer dereference").extensions) {
            if (_extension.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseSANExtension._parseSANExtension(_extension.value);
                    (@:checkr _out ?? throw "null pointer dereference").dNSNames = @:tmpset0 __tmp__._0;
                    (@:checkr _out ?? throw "null pointer dereference").emailAddresses = @:tmpset0 __tmp__._1;
                    (@:checkr _out ?? throw "null pointer dereference").iPAddresses = @:tmpset0 __tmp__._2;
                    (@:checkr _out ?? throw "null pointer dereference").uRIs = @:tmpset0 __tmp__._3;
                    _err = @:tmpset0 __tmp__._4;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
