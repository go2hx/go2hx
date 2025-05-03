package stdgo._internal.crypto.x509;
function _parseCertificate(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        var _cert = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_certificate.Certificate() : stdgo._internal.crypto.x509.X509_certificate.Certificate)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _input = (_der : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L807"
        if (!_input.readASN1Element((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L808"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").raw = _input;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L811"
        if (!_input.readASN1((stdgo.Go.setRef(_input) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L812"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        var _tbs:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L818"
        if (!_input.readASN1Element((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L819"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").rawTBSCertificate = _tbs;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L822"
        if (!_tbs.readASN1((stdgo.Go.setRef(_tbs) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L823"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L826"
        if (!_tbs.readOptionalASN1Integer(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _cert ?? throw "null pointer dereference").version)), (0 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific(), stdgo.Go.toInterface((0 : stdgo.GoInt)))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L827"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L829"
        if (((@:checkr _cert ?? throw "null pointer dereference").version < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L830"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L834"
        (@:checkr _cert ?? throw "null pointer dereference").version++;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L835"
        if (((@:checkr _cert ?? throw "null pointer dereference").version > (3 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L836"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid version" : stdgo.GoString)) };
        };
        var _serial = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L840"
        if (!_tbs.readASN1Integer(stdgo.Go.toInterface(stdgo.Go.asInterface(_serial)))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L841"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").serialNumber = _serial;
        var _sigAISeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L851"
        if (!_tbs.readASN1((stdgo.Go.setRef(_sigAISeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L852"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L858"
        if (!_input.readASN1((stdgo.Go.setRef(_outerSigAISeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L859"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L861"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L862"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L865"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L866"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _cert ?? throw "null pointer dereference").signatureAlgorithm = stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _issuerSeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L871"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_issuerSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L872"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L876"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L877"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L879"
        (@:checkr _cert ?? throw "null pointer dereference").issuer.fillFromRDNSequence(_issuerRDNs);
        var _validity:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L882"
        if (!_tbs.readASN1((stdgo.Go.setRef(_validity) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L883"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed validity" : stdgo.GoString)) };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsevalidity._parseValidity(_validity);
            (@:checkr _cert ?? throw "null pointer dereference").notBefore = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr _cert ?? throw "null pointer dereference").notAfter = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L886"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L887"
            return { _0 : null, _1 : _err };
        };
        var _subjectSeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L891"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_subjectSeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L892"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").rawSubject = _subjectSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_subjectSeq), _subjectRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L896"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L897"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L899"
        (@:checkr _cert ?? throw "null pointer dereference").subject.fillFromRDNSequence(_subjectRDNs);
        var _spki:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L902"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_spki) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L903"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").rawSubjectPublicKeyInfo = _spki;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L906"
        if (!_spki.readASN1((stdgo.Go.setRef(_spki) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L907"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        var _pkAISeq:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L910"
        if (!_spki.readASN1((stdgo.Go.setRef(_pkAISeq) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L911"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed public key algorithm identifier" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_pkAISeq), _pkAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L914"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L915"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _cert ?? throw "null pointer dereference").publicKeyAlgorithm = stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID(_pkAI.algorithm);
        var _spk:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L919"
        if (!_spki.readASN1BitString((stdgo.Go.setRef(_spk) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L920"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectPublicKey" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L922"
        if ((@:checkr _cert ?? throw "null pointer dereference").publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsepublickey._parsePublicKey((stdgo.Go.setRef(({ algorithm : _pkAI?.__copy__(), publicKey : _spk?.__copy__() } : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>));
                (@:checkr _cert ?? throw "null pointer dereference").publicKey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L927"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L928"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L932"
        if (((@:checkr _cert ?? throw "null pointer dereference").version > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L933"
            if (!_tbs.skipOptionalASN1((1 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L934"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuerUniqueID" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L936"
            if (!_tbs.skipOptionalASN1((2 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L937"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectUniqueID" : stdgo.GoString)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L939"
            if ((@:checkr _cert ?? throw "null pointer dereference").version == ((3 : stdgo.GoInt))) {
                var _extensions:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L942"
                if (!_tbs.readOptionalASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (3 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L943"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L945"
                if (_present) {
                    var _seenExts = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L947"
                    if (!_extensions.readASN1((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L948"
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L950"
                    while (!_extensions.empty()) {
                        var _extension:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L952"
                        if (!_extensions.readASN1((stdgo.Go.setRef(_extension) : stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L953"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L956"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L957"
                            return { _0 : null, _1 : _err };
                        };
                        var _oidStr = ((_ext.id.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L960"
                        if ((_seenExts[_oidStr] ?? false)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L961"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate contains duplicate extensions" : stdgo.GoString)) };
                        };
                        _seenExts[_oidStr] = true;
                        (@:checkr _cert ?? throw "null pointer dereference").extensions = ((@:checkr _cert ?? throw "null pointer dereference").extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    };
                    _err = stdgo._internal.crypto.x509.X509__processextensions._processExtensions(_cert);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L967"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L968"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        var _signature:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L975"
        if (!_input.readASN1BitString((stdgo.Go.setRef(_signature) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L976"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw "null pointer dereference").signature = _signature.rightAlign();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/parser.go#L980"
        return { _0 : _cert, _1 : (null : stdgo.Error) };
    }
