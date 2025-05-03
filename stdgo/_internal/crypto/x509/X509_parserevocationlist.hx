package stdgo._internal.crypto.x509;
function parseRevocationList(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>; var _1 : stdgo.Error; } {
        var _rl = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_revocationlist.RevocationList() : stdgo._internal.crypto.x509.X509_revocationlist.RevocationList)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>);
        var _input = (_der : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1023"
        if (!_input.readASN1Element((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1024"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").raw = _input;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1027"
        if (!_input.readASN1((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1028"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        var _tbs:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1034"
        if (!_input.readASN1Element((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1035"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").rawTBSRevocationList = _tbs;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1038"
        if (!_tbs.readASN1((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1039"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt), _version__pointer__ = stdgo.Go.pointer(_version);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1043"
        if (!_tbs.peekASN1Tag((2 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1044"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported crl version" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1046"
        if (!_tbs.readASN1Integer(stdgo.Go.toInterface(_version__pointer__))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1047"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1049"
        if (_version != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1050"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported crl version: %d" : stdgo.GoString), stdgo.Go.toInterface(_version)) };
        };
        var _sigAISeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1054"
        if (!_tbs.readASN1((stdgo.Go.setRef(_sigAISeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1055"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1061"
        if (!_input.readASN1((stdgo.Go.setRef(_outerSigAISeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1062"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1064"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1065"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1068"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1069"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _rl ?? throw "null pointer dereference").signatureAlgorithm = stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _signature:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1074"
        if (!_input.readASN1BitString((stdgo.Go.setRef(_signature) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1075"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").signature = _signature.rightAlign();
        var _issuerSeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1080"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_issuerSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1081"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw "null pointer dereference").rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1085"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1086"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1088"
        (@:checkr _rl ?? throw "null pointer dereference").issuer.fillFromRDNSequence(_issuerRDNs);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
            (@:checkr _rl ?? throw "null pointer dereference").thisUpdate = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1091"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1092"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1094"
        if ((_tbs.peekASN1Tag((24 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || _tbs.peekASN1Tag((23 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                (@:checkr _rl ?? throw "null pointer dereference").nextUpdate = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1096"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1097"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1101"
        if (_tbs.peekASN1Tag((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            var _revokedSeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1103"
            if (!_tbs.readASN1((stdgo.Go.setRef(_revokedSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1104"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1106"
            while (!_revokedSeq.empty()) {
                var _rce = (new stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry() : stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry);
                var _certSeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1110"
                if (!_revokedSeq.readASN1Element((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1111"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.raw = _certSeq;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1114"
                if (!_certSeq.readASN1((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1115"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.serialNumber = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1119"
                if (!_certSeq.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_rce.serialNumber)))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1120"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_certSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                    _rce.revocationTime = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1123"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1124"
                    return { _0 : null, _1 : _err };
                };
                var _extensions:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1128"
                if (!_certSeq.readOptionalASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1129"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1131"
                if (_present) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1132"
                    while (!_extensions.empty()) {
                        var _extension:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1134"
                        if (!_extensions.readASN1((stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1135"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1138"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1139"
                            return { _0 : null, _1 : _err };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1141"
                        if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode)) {
                            var _val = (_ext.value : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1143"
                            if (!_val.readASN1Enum(stdgo.Go.pointer(_rce.reasonCode))) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1144"
                                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: malformed reasonCode extension" : stdgo.GoString)) };
                            };
                        };
                        _rce.extensions = (_rce.extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    };
                };
                (@:checkr _rl ?? throw "null pointer dereference").revokedCertificateEntries = ((@:checkr _rl ?? throw "null pointer dereference").revokedCertificateEntries.__append__(_rce?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>);
                var _rcDeprecated = ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime?.__copy__(), extensions : _rce.extensions } : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate);
                (@:checkr _rl ?? throw "null pointer dereference").revokedCertificates = ((@:checkr _rl ?? throw "null pointer dereference").revokedCertificates.__append__(_rcDeprecated?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            };
        };
        var _extensions:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1163"
        if (!_tbs.readOptionalASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (0 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1164"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1166"
        if (_present) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1167"
            if (!_extensions.readASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1168"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1170"
            while (!_extensions.empty()) {
                var _extension:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1172"
                if (!_extensions.readASN1((stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1173"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1176"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1177"
                    return { _0 : null, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1179"
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId)) {
                    (@:checkr _rl ?? throw "null pointer dereference").authorityKeyId = _ext.value;
                } else if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensioncrlnumber._oidExtensionCRLNumber)) {
                    var _value = (_ext.value : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    (@:checkr _rl ?? throw "null pointer dereference").number = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1184"
                    if (!_value.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _rl ?? throw "null pointer dereference").number)))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1185"
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl number" : stdgo.GoString)) };
                    };
                };
                (@:checkr _rl ?? throw "null pointer dereference").extensions = ((@:checkr _rl ?? throw "null pointer dereference").extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L1192"
        return { _0 : _rl, _1 : (null : stdgo.Error) };
    }
