package stdgo._internal.crypto.x509;
function createCertificateRequest(_rand:stdgo._internal.io.Io_Reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_priv : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
        };
        var _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash);
        var _sigAlgo:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__signingParamsForPublicKey._signingParamsForPublicKey(stdgo.Go.toInterface(_key.public_()), _template.signatureAlgorithm);
            _hashFunc = __tmp__._0;
            _sigAlgo = __tmp__._1?.__copy__();
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalPublicKey._marshalPublicKey(stdgo.Go.toInterface(_key.public_()));
            _publicKeyBytes = __tmp__._0;
            _publicKeyAlgorithm = __tmp__._1?.__copy__();
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildCSRExtensions._buildCSRExtensions(_template), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _attributes = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>((0 : stdgo.GoInt).toBasic(), (_template.attributes.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_template.attributes.length) ? (0 : stdgo.GoInt).toBasic() : (_template.attributes.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
        for (__1 => _attr in _template.attributes) {
            var _values = (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>((_attr.value.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>);
            stdgo.Go.copySlice(_values, _attr.value);
            _attributes = (_attributes.__append__(({ type : _attr.type, value : _values } : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET)));
        };
        var _extensionsAppended = (false : Bool);
        if (((_extensions.length) > (0 : stdgo.GoInt) : Bool)) {
            for (__2 => _atvSet in _attributes) {
                if ((!_atvSet.type.equal(stdgo._internal.crypto.x509.X509__oidExtensionRequest._oidExtensionRequest) || (_atvSet.value.length == (0 : stdgo.GoInt)) : Bool)) {
                    continue;
                };
                var _specifiedExtensions = ({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>);
                for (__3 => _atvs in _atvSet.value) {
                    for (__4 => _atv in _atvs) {
                        _specifiedExtensions[(_atv.type.string() : stdgo.GoString)] = true;
                    };
                };
                var _newValue = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>((0 : stdgo.GoInt).toBasic(), ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>);
                _newValue = (_newValue.__append__(...(_atvSet.value[(0 : stdgo.GoInt)] : Array<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>)));
                for (__4 => _e in _extensions) {
                    if ((_specifiedExtensions[(_e.id.string() : stdgo.GoString)] ?? false)) {
                        continue;
                    };
                    _newValue = (_newValue.__append__(({ type : _e.id, value : stdgo.Go.toInterface(_e.value) } : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue)));
                };
                _atvSet.value[(0 : stdgo.GoInt)] = _newValue;
                _extensionsAppended = true;
                break;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__newRawAttributes._newRawAttributes(_attributes), _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _csr, _1 : _err };
        };
        if ((((_extensions.length) > (0 : stdgo.GoInt) : Bool) && !_extensionsAppended : Bool)) {
            var _attr = ({ type : stdgo._internal.crypto.x509.X509__oidExtensionRequest._oidExtensionRequest, value : (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>>(1, 1, ...[_extensions]) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>>) } : stdgo._internal.crypto.x509.X509_T__struct_3.T__struct_3);
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_attr))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = stdgo._internal.errors.Errors_new_.new_((("x509: failed to serialise extensions attribute: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            var _rawValue:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_rawValue) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            _rawAttributes = (_rawAttributes.__append__(_rawValue?.__copy__()));
        };
        var _asn1Subject = _template.rawSubject;
        if ((_asn1Subject.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_template.subject.toRDNSequence())));
                _asn1Subject = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _tbsCSR = ({ version : (0 : stdgo.GoInt), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue), publicKey : ({ algorithm : _publicKeyAlgorithm?.__copy__(), publicKey : ({ bytes : _publicKeyBytes, bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo), rawAttributes : _rawAttributes } : stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_tbsCSR)), _tbsCSRContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _csr, _1 : _err };
        };
        _tbsCSR.raw = _tbsCSRContents;
        var _signed = _tbsCSRContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, stdgo.Go.asInterface(_hashFunc));
            _signature = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _csr, _1 : _err };
        };
        return {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(({ tbscsr : _tbsCSR?.__copy__(), signatureAlgorithm : _sigAlgo?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest)));
            _csr = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
