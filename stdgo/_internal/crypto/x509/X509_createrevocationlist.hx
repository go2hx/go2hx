package stdgo._internal.crypto.x509;
function createRevocationList(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _issuer:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _priv:stdgo._internal.crypto.Crypto_signer.Signer):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((_template == null || (_template : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template can not be nil" : stdgo.GoString)) };
        };
        if ((_issuer == null || (_issuer : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer can not be nil" : stdgo.GoString)) };
        };
        if ((((@:checkr _issuer ?? throw "null pointer dereference").keyUsage & (64 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) == ((0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer must have the crlSign key usage bit set" : stdgo.GoString)) };
        };
        if (((@:checkr _issuer ?? throw "null pointer dereference").subjectKeyId.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer certificate doesn\'t contain a subject key identifier" : stdgo.GoString)) };
        };
        if ((@:checkr _template ?? throw "null pointer dereference").nextUpdate.before((@:checkr _template ?? throw "null pointer dereference").thisUpdate?.__copy__())) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template.ThisUpdate is after template.NextUpdate" : stdgo.GoString)) };
        };
        if (((@:checkr _template ?? throw "null pointer dereference").number == null || ((@:checkr _template ?? throw "null pointer dereference").number : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains nil Number field" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(stdgo.Go.toInterface(_priv.public_()), (@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        if (((((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length == (0 : stdgo.GoInt)) : Bool)) {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>(((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            for (_i => _rc in (@:checkr _template ?? throw "null pointer dereference").revokedCertificates) {
                _rc.revocationTime = _rc.revocationTime.uTC()?.__copy__();
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        } else {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>(((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            for (_i => _rce in (@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries) {
                if ((_rce.serialNumber == null || (_rce.serialNumber : Dynamic).__nil__)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with nil SerialNumber field" : stdgo.GoString)) };
                };
                if (_rce.revocationTime.isZero()) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with zero RevocationTime field" : stdgo.GoString)) };
                };
                var _rc = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime.uTC()?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate);
                var _exts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>((0 : stdgo.GoInt).toBasic(), (_rce.extraExtensions.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_rce.extraExtensions.length) ? (0 : stdgo.GoInt).toBasic() : (_rce.extraExtensions.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                for (__1 => _ext in _rce.extraExtensions) {
                    if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with ReasonCode ExtraExtension; use ReasonCode field instead" : stdgo.GoString)) };
                    };
                    _exts = (_exts.__append__(_ext?.__copy__()));
                };
                if (_rce.reasonCode != ((0 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface((_rce.reasonCode : stdgo._internal.encoding.asn1.Asn1_enumerated.Enumerated))), _reasonBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                    _exts = (_exts.__append__(({ id : stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode, value : _reasonBytes } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)));
                };
                if (((_exts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _rc.extensions = _exts;
                };
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ id : (@:checkr _issuer ?? throw "null pointer dereference").subjectKeyId } : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId)))), _aki:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        {
            var _numBytes = @:check2r (@:checkr _template ?? throw "null pointer dereference").number.bytes();
            if ((((_numBytes.length) > (20 : stdgo.GoInt) : Bool) || (((_numBytes.length == (20 : stdgo.GoInt)) && ((_numBytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: CRL number exceeds 20 octets" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _template ?? throw "null pointer dereference").number))), _crlNum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_issuer), _issuerSubject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tbsCertList = ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _issuerSubject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), thisUpdate : (@:checkr _template ?? throw "null pointer dereference").thisUpdate.uTC()?.__copy__(), nextUpdate : (@:checkr _template ?? throw "null pointer dereference").nextUpdate.uTC()?.__copy__(), extensions : (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>(2, 2, ...[({ id : stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId, value : _aki } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension), ({ id : stdgo._internal.crypto.x509.X509__oidextensioncrlnumber._oidExtensionCRLNumber, value : _crlNum } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>) } : stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList);
        if (((_revokedCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.revokedCertificates = _revokedCerts;
        };
        if ((((@:checkr _template ?? throw "null pointer dereference").extraExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)));
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tbsCertList))), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _tbsCertList.raw = _tbsCertListContents;
        var _input = _tbsCertListContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            _h.write(_tbsCertListContents);
            _input = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts = stdgo.Go.asInterface(_hashFunc);
        if ((@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm._isRSAPSS()) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
        };
        var __tmp__ = _priv.sign(_rand, _input, _signerOpts), _signature:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ tBSCertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_certificatelist.T_certificateList))));
    }
