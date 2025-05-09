package stdgo._internal.crypto.x509;
function createCertificateRequest(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _csr = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_priv : stdgo._internal.crypto.Crypto_signer.Signer)) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1933"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1934"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _hashFunc:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
        var _sigAlgo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__signingparamsforpublickey._signingParamsForPublicKey(stdgo.Go.toInterface(_key.public_()), (@:checkr _template ?? throw "null pointer dereference").signatureAlgorithm);
            _hashFunc = @:tmpset0 __tmp__._0;
            _sigAlgo = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1940"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1941"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalpublickey._marshalPublicKey(stdgo.Go.toInterface(_key.public_()));
            _publicKeyBytes = @:tmpset0 __tmp__._0;
            _publicKeyAlgorithm = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1947"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1948"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__buildcsrextensions._buildCSRExtensions(_template), _extensions:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1952"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1953"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _csr = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _attributes = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>((0 : stdgo.GoInt).toBasic(), ((@:checkr _template ?? throw "null pointer dereference").attributes.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((@:checkr _template ?? throw "null pointer dereference").attributes.length) ? (0 : stdgo.GoInt).toBasic() : ((@:checkr _template ?? throw "null pointer dereference").attributes.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1958"
        for (__1 => _attr in (@:checkr _template ?? throw "null pointer dereference").attributes) {
            var _values = (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>((_attr.value.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1960"
            _values.__copyTo__(_attr.value);
            _attributes = (_attributes.__append__(({ type : _attr.type, value : _values } : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        };
        var _extensionsAppended = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1968"
        if (((_extensions.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1970"
            for (__2 => _atvSet in _attributes) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1971"
                if ((!_atvSet.type.equal(stdgo._internal.crypto.x509.X509__oidextensionrequest._oidExtensionRequest) || (_atvSet.value.length == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1972"
                    continue;
                };
                var _specifiedExtensions = (({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1979"
                for (__3 => _atvs in _atvSet.value) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1980"
                    for (__4 => _atv in _atvs) {
                        _specifiedExtensions[(_atv.type.string() : stdgo.GoString)] = true;
                    };
                };
                var _newValue = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>((0 : stdgo.GoInt).toBasic(), ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_atvSet.value[(0 : stdgo.GoInt)].length) + (_extensions.length) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                _newValue = (_newValue.__append__(...(_atvSet.value[(0 : stdgo.GoInt)] : Array<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1988"
                for (__4 => _e in _extensions) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1989"
                    if ((_specifiedExtensions[(_e.id.string() : stdgo.GoString)] ?? false)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1992"
                        continue;
                    };
                    _newValue = (_newValue.__append__(({ type : _e.id, value : stdgo.Go.toInterface(_e.value) } : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                };
                _atvSet.value[(0 : stdgo.GoInt)] = _newValue;
                _extensionsAppended = true;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2005"
                break;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__newrawattributes._newRawAttributes(_attributes), _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2010"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2011"
            return { _0 : _csr, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2016"
        if ((((_extensions.length) > (0 : stdgo.GoInt) : Bool) && !_extensionsAppended : Bool)) {
            var _attr = ({ type : stdgo._internal.crypto.x509.X509__oidextensionrequest._oidExtensionRequest, value : (new stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>(1, 1, ...[_extensions]) : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>) } : stdgo._internal.crypto.x509.X509_t__struct_3.T__struct_3);
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_attr))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2026"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2027"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("x509: failed to serialise extensions attribute: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _csr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _rawValue:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2031"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawValue) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2032"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _csr = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawAttributes = (_rawAttributes.__append__(_rawValue?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        };
        var _asn1Subject = (@:checkr _template ?? throw "null pointer dereference").rawSubject;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2039"
        if ((_asn1Subject.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _template ?? throw "null pointer dereference").subject.toRDNSequence())));
                _asn1Subject = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2041"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2042"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    _csr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var _tbsCSR = ({ version : (0 : stdgo.GoInt), subject : ({ fullBytes : _asn1Subject } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue), publicKey : ({ algorithm : _publicKeyAlgorithm?.__copy__(), publicKey : ({ bytes : _publicKeyBytes, bitLength : ((_publicKeyBytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), rawAttributes : _rawAttributes } : stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tbsCSR))), _tbsCSRContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2060"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2061"
            return { _0 : _csr, _1 : _err };
        };
        _tbsCSR.raw = _tbsCSRContents;
        var _signed = _tbsCSRContents;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2066"
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2068"
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, stdgo.Go.asInterface(_hashFunc));
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2074"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2075"
            return { _0 : _csr, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2078"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ tBSCSR : _tbsCSR?.__copy__(), signatureAlgorithm : _sigAlgo?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest))));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
