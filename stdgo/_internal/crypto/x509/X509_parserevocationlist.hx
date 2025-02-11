package stdgo._internal.crypto.x509;
function parseRevocationList(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>; var _1 : stdgo.Error; } {
        var _rl = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_revocationlist.RevocationList() : stdgo._internal.crypto.x509.X509_revocationlist.RevocationList)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>);
        var _input = (_der : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _input.readASN1Element((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").raw = _input;
        if (!@:check2 _input.readASN1((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        var _tbs:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _input.readASN1Element((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").rawTBSRevocationList = _tbs;
        if (!@:check2 _tbs.readASN1((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt);
        var _version__pointer__ = stdgo.Go.pointer(_version);
        if (!_tbs.peekASN1Tag((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported crl version" : stdgo.GoString)) };
        };
        if (!@:check2 _tbs.readASN1Integer(stdgo.Go.toInterface(_version__pointer__))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        if (_version != ((1 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported crl version: %d" : stdgo.GoString), stdgo.Go.toInterface(_version)) };
        };
        var _sigAISeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _tbs.readASN1((stdgo.Go.setRef(_sigAISeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _input.readASN1((stdgo.Go.setRef(_outerSigAISeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _rl ?? throw "null pointer dereference").signatureAlgorithm = stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _signature:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        if (!@:check2 _input.readASN1BitString((stdgo.Go.setRef(_signature) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").signature = _signature.rightAlign();
        var _issuerSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2 _tbs.readASN1Element((stdgo.Go.setRef(_issuerSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        @:check2 (@:checkr _rl ?? throw "null pointer dereference").issuer.fillFromRDNSequence(_issuerRDNs);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
            (@:checkr _rl ?? throw "null pointer dereference").thisUpdate = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_tbs.peekASN1Tag((24 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || _tbs.peekASN1Tag((23 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                (@:checkr _rl ?? throw "null pointer dereference").nextUpdate = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (_tbs.peekASN1Tag((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            var _revokedSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if (!@:check2 _tbs.readASN1((stdgo.Go.setRef(_revokedSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
            };
            while (!_revokedSeq.empty()) {
                var _rce = (new stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry() : stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry);
                var _certSeq:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                if (!@:check2 _revokedSeq.readASN1Element((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.raw = _certSeq;
                if (!@:check2 _certSeq.readASN1((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.serialNumber = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                if (!@:check2 _certSeq.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_rce.serialNumber)))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                    _rce.revocationTime = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _present:Bool = false;
                var _present__pointer__ = stdgo.Go.pointer(_present);
                if (!@:check2 _certSeq.readOptionalASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                if (_present) {
                    while (!_extensions.empty()) {
                        var _extension:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        if (!@:check2 _extensions.readASN1((stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode)) {
                            var _val = (_ext.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            if (!@:check2 _val.readASN1Enum(stdgo.Go.pointer(_rce.reasonCode))) {
                                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: malformed reasonCode extension" : stdgo.GoString)) };
                            };
                        };
                        _rce.extensions = (_rce.extensions.__append__(_ext?.__copy__()));
                    };
                };
                (@:checkr _rl ?? throw "null pointer dereference").revokedCertificateEntries = ((@:checkr _rl ?? throw "null pointer dereference").revokedCertificateEntries.__append__(_rce?.__copy__()));
                var _rcDeprecated = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime?.__copy__(), extensions : _rce.extensions } : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate);
                (@:checkr _rl ?? throw "null pointer dereference").revokedCertificates = ((@:checkr _rl ?? throw "null pointer dereference").revokedCertificates.__append__(_rcDeprecated?.__copy__()));
            };
        };
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _present:Bool = false;
        var _present__pointer__ = stdgo.Go.pointer(_present);
        if (!@:check2 _tbs.readOptionalASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
        };
        if (_present) {
            if (!@:check2 _extensions.readASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
            };
            while (!_extensions.empty()) {
                var _extension:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                if (!@:check2 _extensions.readASN1((stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId)) {
                    (@:checkr _rl ?? throw "null pointer dereference").authorityKeyId = _ext.value;
                } else if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensioncrlnumber._oidExtensionCRLNumber)) {
                    var _value = (_ext.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    (@:checkr _rl ?? throw "null pointer dereference").number = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    if (!@:check2 _value.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _rl ?? throw "null pointer dereference").number)))) {
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl number" : stdgo.GoString)) };
                    };
                };
                (@:checkr _rl ?? throw "null pointer dereference").extensions = ((@:checkr _rl ?? throw "null pointer dereference").extensions.__append__(_ext?.__copy__()));
            };
        };
        return { _0 : _rl, _1 : (null : stdgo.Error) };
    }
