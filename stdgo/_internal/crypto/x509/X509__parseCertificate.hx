package stdgo._internal.crypto.x509;
function _parseCertificate(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
        var _cert = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_Certificate.Certificate() : stdgo._internal.crypto.x509.X509_Certificate.Certificate)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _input = (_der : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _input__pointer__ = (stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_input.readASN1Element(_input__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        _cert.raw = _input;
        if (!_input.readASN1(_input__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        var _tbs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _tbs__pointer__ = (stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_input.readASN1Element(_tbs__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        _cert.rawTBSCertificate = _tbs;
        if (!_tbs.readASN1(_tbs__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        if (!_tbs.readOptionalASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer(_cert.version)), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).constructed().contextSpecific(), stdgo.Go.toInterface((0 : stdgo.GoInt)))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        if ((_cert.version < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        _cert.version++;
        if ((_cert.version > (3 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid version" : stdgo.GoString)) };
        };
        var _serial = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if (!_tbs.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_serial)))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
        };
        _cert.serialNumber = _serial;
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
        _cert.signatureAlgorithm = stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _issuerSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _issuerSeq__pointer__ = (stdgo.Go.setRef(_issuerSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1Element(_issuerSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        _cert.rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseName._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _cert.issuer.fillFromRDNSequence(_issuerRDNs);
        var _validity:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _validity__pointer__ = (stdgo.Go.setRef(_validity) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1(_validity__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed validity" : stdgo.GoString)) };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parseValidity._parseValidity(_validity);
            _cert.notBefore = __tmp__._0?.__copy__();
            _cert.notAfter = __tmp__._1?.__copy__();
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _subjectSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _subjectSeq__pointer__ = (stdgo.Go.setRef(_subjectSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1Element(_subjectSeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        _cert.rawSubject = _subjectSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseName._parseName(_subjectSeq), _subjectRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _cert.subject.fillFromRDNSequence(_subjectRDNs);
        var _spki:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _spki__pointer__ = (stdgo.Go.setRef(_spki) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_tbs.readASN1Element(_spki__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        _cert.rawSubjectPublicKeyInfo = _spki;
        if (!_spki.readASN1(_spki__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        var _pkAISeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _pkAISeq__pointer__ = (stdgo.Go.setRef(_pkAISeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_spki.readASN1(_pkAISeq__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed public key algorithm identifier" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseAI._parseAI(_pkAISeq), _pkAI:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _cert.publicKeyAlgorithm = stdgo._internal.crypto.x509.X509__getPublicKeyAlgorithmFromOID._getPublicKeyAlgorithmFromOID(_pkAI.algorithm);
        var _spk:stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        var _spk__pointer__ = (stdgo.Go.setRef(_spk) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>);
        if (!_spki.readASN1BitString(_spk__pointer__)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectPublicKey" : stdgo.GoString)) };
        };
        if (_cert.publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsePublicKey._parsePublicKey((stdgo.Go.setRef(({ algorithm : _pkAI?.__copy__(), publicKey : _spk?.__copy__() } : stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo>));
                _cert.publicKey = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((_cert.version > (1 : stdgo.GoInt) : Bool)) {
            if (!_tbs.skipOptionalASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuerUniqueID" : stdgo.GoString)) };
            };
            if (!_tbs.skipOptionalASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectUniqueID" : stdgo.GoString)) };
            };
            if (_cert.version == ((3 : stdgo.GoInt))) {
                var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _extensions__pointer__ = (stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                var _present:Bool = false;
                var _present__pointer__ = stdgo.Go.pointer(_present);
                if (!_tbs.readOptionalASN1(_extensions__pointer__, _present__pointer__, (3 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).constructed().contextSpecific())) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                if (_present) {
                    var _seenExts = ({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>);
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
                        var _oidStr = ((_ext.id.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        if ((_seenExts[_oidStr] ?? false)) {
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate contains duplicate extensions" : stdgo.GoString)) };
                        };
                        _seenExts[_oidStr] = true;
                        _cert.extensions = (_cert.extensions.__append__(_ext?.__copy__()));
                    };
                    _err = stdgo._internal.crypto.x509.X509__processExtensions._processExtensions(_cert);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        var _signature:stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        var _signature__pointer__ = (stdgo.Go.setRef(_signature) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>);
        if (!_input.readASN1BitString(_signature__pointer__)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        _cert.signature = _signature.rightAlign();
        return { _0 : _cert, _1 : (null : stdgo.Error) };
    }
