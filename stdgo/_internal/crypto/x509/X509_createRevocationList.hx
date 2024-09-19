package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function createRevocationList(_rand:stdgo._internal.io.Io_Reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>, _issuer:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _priv:stdgo._internal.crypto.Crypto_Signer.Signer):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (_template == null || (_template : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template can not be nil" : stdgo.GoString)) };
        };
        if (_issuer == null || (_issuer : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer can not be nil" : stdgo.GoString)) };
        };
        if (((_issuer.keyUsage & (64 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) == ((0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer must have the crlSign key usage bit set" : stdgo.GoString)) };
        };
        if ((_issuer.subjectKeyId.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer certificate doesn\'t contain a subject key identifier" : stdgo.GoString)) };
        };
        if (_template.nextUpdate.before(_template.thisUpdate?.__copy__())) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template.ThisUpdate is after template.NextUpdate" : stdgo.GoString)) };
        };
        if (_template.number == null || (_template.number : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains nil Number field" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingParamsForPublicKey._signingParamsForPublicKey(stdgo.Go.toInterface(_priv.public_()), _template.signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        if ((((_template.revokedCertificates.length) > (0 : stdgo.GoInt) : Bool) && (_template.revokedCertificateEntries.length == (0 : stdgo.GoInt)) : Bool)) {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>((_template.revokedCertificates.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_template.revokedCertificates.length : stdgo.GoInt).toBasic() > 0 ? (_template.revokedCertificates.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
            for (_i => _rc in _template.revokedCertificates) {
                _rc.revocationTime = _rc.revocationTime.utc()?.__copy__();
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        } else {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>((_template.revokedCertificateEntries.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_template.revokedCertificateEntries.length : stdgo.GoInt).toBasic() > 0 ? (_template.revokedCertificateEntries.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
            for (_i => _rce in _template.revokedCertificateEntries) {
                if (_rce.serialNumber == null || (_rce.serialNumber : Dynamic).__nil__) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with nil SerialNumber field" : stdgo.GoString)) };
                };
                if (_rce.revocationTime.isZero()) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with zero RevocationTime field" : stdgo.GoString)) };
                };
                var _rc = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime.utc()?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate);
                var _exts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>((0 : stdgo.GoInt).toBasic(), (_rce.extraExtensions.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_rce.extraExtensions.length) ? (0 : stdgo.GoInt).toBasic() : (_rce.extraExtensions.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
                for (__1 => _ext in _rce.extraExtensions) {
                    if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionReasonCode._oidExtensionReasonCode)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with ReasonCode ExtraExtension; use ReasonCode field instead" : stdgo.GoString)) };
                    };
                    _exts = (_exts.__append__(_ext?.__copy__()));
                };
                if (_rce.reasonCode != ((0 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface((_rce.reasonCode : stdgo._internal.encoding.asn1.Asn1_Enumerated.Enumerated))), _reasonBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                    _exts = (_exts.__append__(({ id : stdgo._internal.crypto.x509.X509__oidExtensionReasonCode._oidExtensionReasonCode, value : _reasonBytes } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)));
                };
                if (((_exts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _rc.extensions = _exts;
                };
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ id : _issuer.subjectKeyId } : stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId))), _aki:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        {
            var _numBytes = _template.number.bytes();
            if ((((_numBytes.length) > (20 : stdgo.GoInt) : Bool) || (((_numBytes.length == (20 : stdgo.GoInt)) && ((_numBytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: CRL number exceeds 20 octets" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_template.number))), _crlNum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectBytes._subjectBytes(_issuer), _issuerSubject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tbsCertList = ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _issuerSubject } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue), thisUpdate : _template.thisUpdate.utc()?.__copy__(), nextUpdate : _template.nextUpdate.utc()?.__copy__(), extensions : (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>(2, 2, ...[({ id : stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId, value : _aki } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension), ({ id : stdgo._internal.crypto.x509.X509__oidExtensionCRLNumber._oidExtensionCRLNumber, value : _crlNum } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) } : stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList);
        if (((_revokedCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.revokedCertificates = _revokedCerts;
        };
        if (((_template.extraExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(...(_template.extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>)));
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_tbsCertList)), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _tbsCertList.raw = _tbsCertListContents;
        var _input = _tbsCertListContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _h.write(_tbsCertListContents);
            _input = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts = stdgo.Go.asInterface(_hashFunc);
        if (_template.signatureAlgorithm._isRSAPSS()) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = _priv.sign(_rand, _input, _signerOpts), _signature:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ tbscertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList)));
    }
