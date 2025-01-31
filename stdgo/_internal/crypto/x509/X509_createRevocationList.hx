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
function createRevocationList(_rand:stdgo._internal.io.Io_Reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>, _issuer:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _priv:stdgo._internal.crypto.Crypto_Signer.Signer):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((_template == null || (_template : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template can not be nil" : stdgo.GoString)) };
        };
        if ((_issuer == null || (_issuer : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: issuer can not be nil" : stdgo.GoString)) };
        };
        if ((((@:checkr _issuer ?? throw "null pointer dereference").keyUsage & (64 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) == ((0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage))) {
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
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingParamsForPublicKey._signingParamsForPublicKey(stdgo.Go.toInterface(_priv.public_()), (@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        if (((((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length == (0 : stdgo.GoInt)) : Bool)) {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>(((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw "null pointer dereference").revokedCertificates.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
            for (_i => _rc in (@:checkr _template ?? throw "null pointer dereference").revokedCertificates) {
                _rc.revocationTime = _rc.revocationTime.uTC()?.__copy__();
                _revokedCerts[(_i : stdgo.GoInt)] = _rc?.__copy__();
            };
        } else {
            _revokedCerts = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>(((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
            for (_i => _rce in (@:checkr _template ?? throw "null pointer dereference").revokedCertificateEntries) {
                if ((_rce.serialNumber == null || (_rce.serialNumber : Dynamic).__nil__)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with nil SerialNumber field" : stdgo.GoString)) };
                };
                if (_rce.revocationTime.isZero()) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: template contains entry with zero RevocationTime field" : stdgo.GoString)) };
                };
                var _rc = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime.uTC()?.__copy__() } : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate);
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
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ id : (@:checkr _issuer ?? throw "null pointer dereference").subjectKeyId } : stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId)))), _aki:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectBytes._subjectBytes(_issuer), _issuerSubject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tbsCertList = ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _issuerSubject } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue), thisUpdate : (@:checkr _template ?? throw "null pointer dereference").thisUpdate.uTC()?.__copy__(), nextUpdate : (@:checkr _template ?? throw "null pointer dereference").nextUpdate.uTC()?.__copy__(), extensions : (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>(2, 2, ...[({ id : stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId, value : _aki } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension), ({ id : stdgo._internal.crypto.x509.X509__oidExtensionCRLNumber._oidExtensionCRLNumber, value : _crlNum } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>) } : stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList);
        if (((_revokedCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.revokedCertificates = _revokedCerts;
        };
        if ((((@:checkr _template ?? throw "null pointer dereference").extraExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>)));
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tbsCertList))), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        if ((@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm._isRSAPSS()) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var __tmp__ = _priv.sign(_rand, _input, _signerOpts), _signature:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ tBSCertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList))));
    }
