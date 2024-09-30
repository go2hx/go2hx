package stdgo._internal.crypto.x509;
function createCertificate(_rand:stdgo._internal.io.Io_Reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_priv : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
        };
        if (_template.serialNumber == null || (_template.serialNumber : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: no SerialNumber given" : stdgo.GoString)) };
        };
        if (_template.serialNumber.sign() == ((-1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: serial number must be positive" : stdgo.GoString)) };
        };
        if ((((_template.basicConstraintsValid && !_template.isCA : Bool) && _template.maxPathLen != ((-1 : stdgo.GoInt)) : Bool) && (((_template.maxPathLen != (0 : stdgo.GoInt)) || _template.maxPathLenZero : Bool)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: only CAs are allowed to specify MaxPathLen" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingParamsForPublicKey._signingParamsForPublicKey(stdgo.Go.toInterface(_key.public_()), _template.signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalPublicKey._marshalPublicKey(_pub), _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (stdgo._internal.crypto.x509.X509__getPublicKeyAlgorithmFromOID._getPublicKeyAlgorithmFromOID(_publicKeyAlgorithm.algorithm) == ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported public key type: %T" : stdgo.GoString), _pub) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectBytes._subjectBytes(_parent), _asn1Issuer:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectBytes._subjectBytes(_template), _asn1Subject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _authorityKeyId = _template.authorityKeyId;
        if ((!stdgo._internal.bytes.Bytes_equal.equal(_asn1Issuer, _asn1Subject) && ((_parent.subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _authorityKeyId = _parent.subjectKeyId;
        };
        var _subjectKeyId = _template.subjectKeyId;
        if (((_subjectKeyId.length == (0 : stdgo.GoInt)) && _template.isCA : Bool)) {
            var _h = stdgo._internal.crypto.sha1.Sha1_sum.sum(_publicKeyBytes)?.__copy__();
            _subjectKeyId = (_h.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_key.public_() : stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152.T_createCertificate___localname___privateKey_54152)) : stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152.T_createCertificate___localname___privateKey_54152), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.x509.X509_T_createCertificate___localname___privateKey_54152.T_createCertificate___localname___privateKey_54152), _1 : false };
            }, _privPub = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: internal error: supported public key does not implement Equal" : stdgo.GoString)) };
            } else if (((_parent.publicKey != null) && !_privPub.equal(stdgo.Go.toInterface(_parent.publicKey)) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: provided PrivateKey doesn\'t match parent\'s PublicKey" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildCertExtensions._buildCertExtensions(_template, stdgo._internal.bytes.Bytes_equal.equal(_asn1Subject, stdgo._internal.crypto.x509.X509__emptyASN1Subject._emptyASN1Subject), _authorityKeyId, _subjectKeyId), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _encodedPublicKey = ({ bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt), bytes : _publicKeyBytes } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        var _c = ({ version : (2 : stdgo.GoInt), serialNumber : _template.serialNumber, signatureAlgorithm : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _asn1Issuer } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue), validity : (new stdgo._internal.crypto.x509.X509_T_validity.T_validity(_template.notBefore.utc()?.__copy__(), _template.notAfter.utc()?.__copy__()) : stdgo._internal.crypto.x509.X509_T_validity.T_validity), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue), publicKey : (new stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo(null, _publicKeyAlgorithm?.__copy__(), _encodedPublicKey?.__copy__()) : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo), extensions : _extensions } : stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_c)), _tbsCertContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _c.raw = _tbsCertContents;
        var _signed = _tbsCertContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts = stdgo.Go.asInterface(_hashFunc);
        if (((_template.signatureAlgorithm != (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) && _template.signatureAlgorithm._isRSAPSS() : Bool)) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, _signerOpts);
            _signature = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface((new stdgo._internal.crypto.x509.X509_T_certificate.T_certificate(_c?.__copy__(), _signatureAlgorithm?.__copy__(), ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString)) : stdgo._internal.crypto.x509.X509_T_certificate.T_certificate))), _signedCert:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        {
            var _err = (stdgo._internal.crypto.x509.X509__checkSignature._checkSignature(stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI(_signatureAlgorithm?.__copy__()), _c.raw, _signature, _key.public_(), true) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: signature over certificate returned by signer is invalid: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _signedCert, _1 : (null : stdgo.Error) };
    }
