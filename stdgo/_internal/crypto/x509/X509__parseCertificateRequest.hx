package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _parseCertificateRequest(_in:stdgo.Ref<stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _out = (stdgo.Go.setRef(({ raw : _in.raw, rawTBSCertificateRequest : _in.tbscsr.raw, rawSubjectPublicKeyInfo : _in.tbscsr.publicKey.raw, rawSubject : _in.tbscsr.subject.fullBytes, signature : _in.signatureValue.rightAlign(), signatureAlgorithm : stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI(_in.signatureAlgorithm?.__copy__()), publicKeyAlgorithm : stdgo._internal.crypto.x509.X509__getPublicKeyAlgorithmFromOID._getPublicKeyAlgorithmFromOID(_in.tbscsr.publicKey.algorithm.algorithm), version : _in.tbscsr.version, attributes : stdgo._internal.crypto.x509.X509__parseRawAttributes._parseRawAttributes(_in.tbscsr.rawAttributes) } : stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_out.publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsePublicKey._parsePublicKey((stdgo.Go.setRef(_in.tbscsr.publicKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>));
                _out.publicKey = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _subject:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_in.tbscsr.subject.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after X.509 Subject" : stdgo.GoString)) };
            };
        };
        _out.subject.fillFromRDNSequence((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>));
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseCSRExtensions._parseCSRExtensions(_in.tbscsr.rawAttributes);
                _out.extensions = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        for (__1 => _extension in _out.extensions) {
            if (_extension.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseSANExtension._parseSANExtension(_extension.value);
                    _out.dnsnames = __tmp__._0;
                    _out.emailAddresses = __tmp__._1;
                    _out.ipaddresses = __tmp__._2;
                    _out.uris = __tmp__._3;
                    _err = __tmp__._4;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
            };
        };
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
