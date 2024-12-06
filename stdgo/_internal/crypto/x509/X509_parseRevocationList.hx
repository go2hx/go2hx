package stdgo._internal.crypto.x509;
function parseRevocationList(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>; var _1 : stdgo.Error; } {
        var _rl = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_RevocationList.RevocationList() : stdgo._internal.crypto.x509.X509_RevocationList.RevocationList)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>);
        var _input = (_der : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _input__pointer__ = (stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_input.readASN1Element(_input__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        _rl.raw = _input;
        if (!_input.readASN1(_input__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        var _tbs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _tbs__pointer__ = (stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_input.readASN1Element(_tbs__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        _rl.rawTBSRevocationList = _tbs;
        if (!_tbs.readASN1(_tbs__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt);
        var _version__pointer__ = stdgo.Go.pointer(_version);
        if (!_tbs.peekASN1Tag((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported crl version" : stdgo.GoString)) };
        };
        if (!_tbs.readASN1Integer(stdgo.Go.toInterface(_version__pointer__))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        if (_version != ((1 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported crl version: %d" : stdgo.GoString), stdgo.Go.toInterface(_version)) };
        };
        var _sigAISeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _sigAISeq__pointer__ = (stdgo.Go.setRef(_sigAISeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1(_sigAISeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _outerSigAISeq__pointer__ = (stdgo.Go.setRef(_outerSigAISeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_input.readASN1(_outerSigAISeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseAI._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _rl.signatureAlgorithm = stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _signature:stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        var _signature__pointer__ = (stdgo.Go.setRef(_signature) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>);
        if (!_input.readASN1BitString(_signature__pointer__)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        _rl.signature = _signature.rightAlign();
        var _issuerSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _issuerSeq__pointer__ = (stdgo.Go.setRef(_issuerSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1Element(_issuerSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        _rl.rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseName._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _rl.issuer.fillFromRDNSequence(_issuerRDNs);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parseTime._parseTime(_tbs__pointer__);
            _rl.thisUpdate = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_tbs.peekASN1Tag((24 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || _tbs.peekASN1Tag((23 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseTime._parseTime(_tbs__pointer__);
                _rl.nextUpdate = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (_tbs.peekASN1Tag((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            var _revokedSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            var _revokedSeq__pointer__ = (stdgo.Go.setRef(_revokedSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
            if (!_tbs.readASN1(_revokedSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
            };
            while (!_revokedSeq.empty()) {
                var _rce = (new stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry() : stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry);
                var _certSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _certSeq__pointer__ = (stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                if (!_revokedSeq.readASN1Element(_certSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.raw = _certSeq;
                if (!_certSeq.readASN1(_certSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.serialNumber = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                if (!_certSeq.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_rce.serialNumber)))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseTime._parseTime(_certSeq__pointer__);
                    _rce.revocationTime = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _extensions__pointer__ = (stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                var _present:Bool = false;
                var _present__pointer__ = stdgo.Go.pointer(_present);
                if (!_certSeq.readOptionalASN1(_extensions__pointer__, _present__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                if (_present) {
                    while (!_extensions.empty()) {
                        var _extension:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        var _extension__pointer__ = (stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                        if (!_extensions.readASN1(_extension__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseExtension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionReasonCode._oidExtensionReasonCode)) {
                            var _val = (_ext.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                            if (!_val.readASN1Enum(stdgo.Go.pointer(_rce.reasonCode))) {
                                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: malformed reasonCode extension" : stdgo.GoString)) };
                            };
                        };
                        _rce.extensions = (_rce.extensions.__append__(_ext?.__copy__()));
                    };
                };
                _rl.revokedCertificateEntries = (_rl.revokedCertificateEntries.__append__(_rce?.__copy__()));
                var _rcDeprecated = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime?.__copy__(), extensions : _rce.extensions } : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate);
                _rl.revokedCertificates = (_rl.revokedCertificates.__append__(_rcDeprecated?.__copy__()));
            };
        };
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _extensions__pointer__ = (stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        var _present:Bool = false;
        var _present__pointer__ = stdgo.Go.pointer(_present);
        if (!_tbs.readOptionalASN1(_extensions__pointer__, _present__pointer__, (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).constructed().contextSpecific())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
        };
        if (_present) {
            if (!_extensions.readASN1(_extensions__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
            };
            while (!_extensions.empty()) {
                var _extension:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _extension__pointer__ = (stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                if (!_extensions.readASN1(_extension__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseExtension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId)) {
                    _rl.authorityKeyId = _ext.value;
                } else if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionCRLNumber._oidExtensionCRLNumber)) {
                    var _value = (_ext.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                    _rl.number = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    if (!_value.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_rl.number)))) {
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl number" : stdgo.GoString)) };
                    };
                };
                _rl.extensions = (_rl.extensions.__append__(_ext?.__copy__()));
            };
        };
        return { _0 : _rl, _1 : (null : stdgo.Error) };
    }
