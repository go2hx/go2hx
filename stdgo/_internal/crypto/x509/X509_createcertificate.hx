package stdgo._internal.crypto.x509;
function createCertificate(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_priv : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
        };
        if (((@:checkr _template ?? throw "null pointer dereference").serialNumber == null || ((@:checkr _template ?? throw "null pointer dereference").serialNumber : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: no SerialNumber given" : stdgo.GoString)) };
        };
        if (@:check2r (@:checkr _template ?? throw "null pointer dereference").serialNumber.sign() == ((-1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: serial number must be positive" : stdgo.GoString)) };
        };
        if (((((@:checkr _template ?? throw "null pointer dereference").basicConstraintsValid && !(@:checkr _template ?? throw "null pointer dereference").isCA : Bool) && (@:checkr _template ?? throw "null pointer dereference").maxPathLen != ((-1 : stdgo.GoInt)) : Bool) && ((((@:checkr _template ?? throw "null pointer dereference").maxPathLen != (0 : stdgo.GoInt)) || (@:checkr _template ?? throw "null pointer dereference").maxPathLenZero : Bool)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: only CAs are allowed to specify MaxPathLen" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(stdgo.Go.toInterface(_key.public_()), (@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm), _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__marshalpublickey._marshalPublicKey(_pub), _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID(_publicKeyAlgorithm.algorithm) == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported public key type: %T" : stdgo.GoString), _pub) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_parent), _asn1Issuer:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__subjectbytes._subjectBytes(_template), _asn1Subject:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _authorityKeyId = (@:checkr _template ?? throw "null pointer dereference").authorityKeyId;
        if ((!stdgo._internal.bytes.Bytes_equal.equal(_asn1Issuer, _asn1Subject) && (((@:checkr _parent ?? throw "null pointer dereference").subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _authorityKeyId = (@:checkr _parent ?? throw "null pointer dereference").subjectKeyId;
        };
        var _subjectKeyId = (@:checkr _template ?? throw "null pointer dereference").subjectKeyId;
        if (((_subjectKeyId.length == (0 : stdgo.GoInt)) && (@:checkr _template ?? throw "null pointer dereference").isCA : Bool)) {
            var _h = stdgo._internal.crypto.sha1.Sha1_sum.sum(_publicKeyBytes)?.__copy__();
            _subjectKeyId = (_h.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_key.public_() : stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152)) : stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.x509.X509_t_createcertificate___localname___privatekey_54152.T_createCertificate___localname___privateKey_54152), _1 : false };
            }, _privPub = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: internal error: supported public key does not implement Equal" : stdgo.GoString)) };
            } else if ((((@:checkr _parent ?? throw "null pointer dereference").publicKey != null) && !_privPub.equal(stdgo.Go.toInterface((@:checkr _parent ?? throw "null pointer dereference").publicKey)) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: provided PrivateKey doesn\'t match parent\'s PublicKey" : stdgo.GoString)) };
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildcertextensions._buildCertExtensions(_template, stdgo._internal.bytes.Bytes_equal.equal(_asn1Subject, stdgo._internal.crypto.x509.X509__emptyasn1subject._emptyASN1Subject), _authorityKeyId, _subjectKeyId), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _encodedPublicKey = ({ bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt), bytes : _publicKeyBytes } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        var _c = ({ version : (2 : stdgo.GoInt), serialNumber : (@:checkr _template ?? throw "null pointer dereference").serialNumber, signatureAlgorithm : _signatureAlgorithm?.__copy__(), issuer : ({ fullBytes : _asn1Issuer } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), validity : (new stdgo._internal.crypto.x509.X509_t_validity.T_validity((@:checkr _template ?? throw "null pointer dereference").notBefore.uTC()?.__copy__(), (@:checkr _template ?? throw "null pointer dereference").notAfter.uTC()?.__copy__()) : stdgo._internal.crypto.x509.X509_t_validity.T_validity), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), publicKey : (new stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo(null, _publicKeyAlgorithm?.__copy__(), _encodedPublicKey?.__copy__()) : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), extensions : _extensions } : stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_c))), _tbsCertContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _c.raw = _tbsCertContents;
        var _signed = _tbsCertContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signerOpts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts = stdgo.Go.asInterface(_hashFunc);
        if ((((@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm != (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) && (@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm._isRSAPSS() : Bool)) {
            _signerOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _hashFunc } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, _signerOpts);
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_certificate.T_certificate(_c?.__copy__(), _signatureAlgorithm?.__copy__(), ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString)) : stdgo._internal.crypto.x509.X509_t_certificate.T_certificate)))), _signedCert:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        {
            var _err = (stdgo._internal.crypto.x509.X509__checksignature._checkSignature(stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_signatureAlgorithm?.__copy__()), _c.raw, _signature, _key.public_(), true) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: signature over certificate returned by signer is invalid: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _signedCert, _1 : (null : stdgo.Error) };
    }
