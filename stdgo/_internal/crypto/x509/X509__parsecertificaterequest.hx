package stdgo._internal.crypto.x509;
function _parseCertificateRequest(_in:stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _out = (stdgo.Go.setRef(({ raw : (@:checkr _in ?? throw "null pointer dereference").raw, rawTBSCertificateRequest : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.raw, rawSubjectPublicKeyInfo : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey.raw, rawSubject : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.subject.fullBytes, signature : (@:checkr _in ?? throw "null pointer dereference").signatureValue.rightAlign(), signatureAlgorithm : stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI((@:checkr _in ?? throw "null pointer dereference").signatureAlgorithm?.__copy__()), publicKeyAlgorithm : stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID((@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey.algorithm.algorithm), version : (@:checkr _in ?? throw "null pointer dereference").tBSCSR.version, attributes : stdgo._internal.crypto.x509.X509__parserawattributes._parseRawAttributes((@:checkr _in ?? throw "null pointer dereference").tBSCSR.rawAttributes) } : stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>);
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _out ?? throw "null pointer dereference").publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsepublickey._parsePublicKey((stdgo.Go.setRef((@:checkr _in ?? throw "null pointer dereference").tBSCSR.publicKey) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>));
                (@:checkr _out ?? throw "null pointer dereference").publicKey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        var _subject:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal((@:checkr _in ?? throw "null pointer dereference").tBSCSR.subject.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after X.509 Subject" : stdgo.GoString)) };
            };
        };
        @:check2 (@:checkr _out ?? throw "null pointer dereference").subject.fillFromRDNSequence((stdgo.Go.setRef(_subject) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>));
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsecsrextensions._parseCSRExtensions((@:checkr _in ?? throw "null pointer dereference").tBSCSR.rawAttributes);
                (@:checkr _out ?? throw "null pointer dereference").extensions = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        for (__1 => _extension in (@:checkr _out ?? throw "null pointer dereference").extensions) {
            if (_extension.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsesanextension._parseSANExtension(_extension.value);
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
