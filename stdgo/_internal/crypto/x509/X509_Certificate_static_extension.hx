package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.Certificate_asInterface) class Certificate_static_extension {
    @:keep
    @:tdfield
    static public function createCRL( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>, _now:stdgo._internal.time.Time_Time.Time, _expiry:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _crlBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_priv : stdgo._internal.crypto.Crypto_Signer.Signer)) : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.Crypto_Signer.Signer), _1 : false };
        }, _key = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate private key does not implement crypto.Signer" : stdgo.GoString)) };
                _crlBytes = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__signingParamsForPublicKey._signingParamsForPublicKey(stdgo.Go.toInterface(_key.public_()), (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)), _hashFunc:stdgo._internal.crypto.Crypto_Hash.Hash = __tmp__._0, _signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _crlBytes = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _revokedCertsUTC = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>((_revokedCerts.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_revokedCerts.length : stdgo.GoInt).toBasic() > 0 ? (_revokedCerts.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        for (_i => _rc in _revokedCerts) {
            _rc.revocationTime = _rc.revocationTime.uTC()?.__copy__();
            _revokedCertsUTC[(_i : stdgo.GoInt)] = _rc?.__copy__();
        };
        var _tbsCertList = ({ version : (1 : stdgo.GoInt), signature : _signatureAlgorithm?.__copy__(), issuer : (@:checkr _c ?? throw "null pointer dereference").subject.toRDNSequence(), thisUpdate : _now.uTC()?.__copy__(), nextUpdate : _expiry.uTC()?.__copy__(), revokedCertificates : _revokedCertsUTC } : stdgo._internal.crypto.x509.pkix.Pkix_TBSCertificateList.TBSCertificateList);
        if ((((@:checkr _c ?? throw "null pointer dereference").subjectKeyId.length) > (0 : stdgo.GoInt) : Bool)) {
            var _aki:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension = ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
            _aki.id = stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ id : (@:checkr _c ?? throw "null pointer dereference").subjectKeyId } : stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId))));
                _aki.value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _crlBytes, _1 : _err };
            };
            _tbsCertList.extensions = (_tbsCertList.extensions.__append__(_aki?.__copy__()));
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tbsCertList))), _tbsCertListContents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _crlBytes, _1 : _err };
        };
        var _signed = _tbsCertListContents;
        if (_hashFunc != ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            var _h = (_hashFunc.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _h.write(_signed);
            _signed = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _signature:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _key.sign(_rand, _signed, stdgo.Go.asInterface(_hashFunc));
            _signature = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _crlBytes, _1 : _err };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ tBSCertList : _tbsCertList?.__copy__(), signatureAlgorithm : _signatureAlgorithm?.__copy__(), signatureValue : ({ bytes : _signature, bitLength : ((_signature.length) * (8 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList))));
            _crlBytes = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function checkCRLSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _crl:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _algo = (stdgo._internal.crypto.x509.X509__getSignatureAlgorithmFromAI._getSignatureAlgorithmFromAI((@:checkr _crl ?? throw "null pointer dereference").signatureAlgorithm?.__copy__()) : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        return @:check2r _c.checkSignature(_algo, (@:checkr _crl ?? throw "null pointer dereference").tBSCertList.raw, (@:checkr _crl ?? throw "null pointer dereference").signatureValue.rightAlign());
    }
    @:keep
    @:tdfield
    static public function _getSANExtension( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        for (__1 => _e in (@:checkr _c ?? throw "null pointer dereference").extensions) {
            if (_e.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                return _e.value;
            };
        };
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _hasNameConstraints( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        return stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionNameConstraints._oidExtensionNameConstraints, (@:checkr _c ?? throw "null pointer dereference").extensions);
    }
    @:keep
    @:tdfield
    static public function checkSignature( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        return stdgo._internal.crypto.x509.X509__checkSignature._checkSignature(_algo, _signed, _signature, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").publicKey), true);
    }
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        if ((((@:checkr _parent ?? throw "null pointer dereference").version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid && !(@:checkr _parent ?? throw "null pointer dereference").isCA : Bool) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if ((((@:checkr _parent ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) && (((@:checkr _parent ?? throw "null pointer dereference").keyUsage & (32 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if ((@:checkr _parent ?? throw "null pointer dereference").publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            return stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
        };
        return stdgo._internal.crypto.x509.X509__checkSignature._checkSignature((@:checkr _c ?? throw "null pointer dereference").signatureAlgorithm, (@:checkr _c ?? throw "null pointer dereference").rawTBSCertificate, (@:checkr _c ?? throw "null pointer dereference").signature, stdgo.Go.toInterface((@:checkr _parent ?? throw "null pointer dereference").publicKey), false);
    }
    @:keep
    @:tdfield
    static public function _hasSANExtension( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        return stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, (@:checkr _c ?? throw "null pointer dereference").extensions);
    }
    @:keep
    @:tdfield
    static public function equal( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _other:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        if (((_c == null || (_c : Dynamic).__nil__) || (_other == null || (_other : Dynamic).__nil__) : Bool)) {
            return _c == (_other);
        };
        return stdgo._internal.bytes.Bytes_equal.equal((@:checkr _c ?? throw "null pointer dereference").raw, (@:checkr _other ?? throw "null pointer dereference").raw);
    }
    @:keep
    @:tdfield
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _h:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _candidateIP = (_h?.__copy__() : stdgo.GoString);
        if (((((_h.length) >= (3 : stdgo.GoInt) : Bool) && _h[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_h[((_h.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _candidateIP = (_h.__slice__((1 : stdgo.GoInt), ((_h.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _ip = (stdgo._internal.net.Net_parseIP.parseIP(_candidateIP?.__copy__()) : stdgo._internal.net.Net_IP.IP);
            if (_ip != null) {
                for (__1 => _candidate in (@:checkr _c ?? throw "null pointer dereference").iPAddresses) {
                    if (_ip.equal(_candidate)) {
                        return (null : stdgo.Error);
                    };
                };
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_HostnameError.HostnameError(_c, _candidateIP?.__copy__()) : stdgo._internal.crypto.x509.X509_HostnameError.HostnameError));
            };
        };
        var _candidateName = (stdgo._internal.crypto.x509.X509__toLowerCaseASCII._toLowerCaseASCII(_h?.__copy__())?.__copy__() : stdgo.GoString);
        var _validCandidateName = (stdgo._internal.crypto.x509.X509__validHostnameInput._validHostnameInput(_candidateName?.__copy__()) : Bool);
        for (__1 => _match in (@:checkr _c ?? throw "null pointer dereference").dNSNames) {
            if ((_validCandidateName && stdgo._internal.crypto.x509.X509__validHostnamePattern._validHostnamePattern(_match?.__copy__()) : Bool)) {
                if (stdgo._internal.crypto.x509.X509__matchHostnames._matchHostnames(_match?.__copy__(), _candidateName?.__copy__())) {
                    return (null : stdgo.Error);
                };
            } else {
                if (stdgo._internal.crypto.x509.X509__matchExactly._matchExactly(_match?.__copy__(), _candidateName?.__copy__())) {
                    return (null : stdgo.Error);
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_HostnameError.HostnameError(_c, _h?.__copy__()) : stdgo._internal.crypto.x509.X509_HostnameError.HostnameError));
    }
    @:keep
    @:tdfield
    static public function _buildChains( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _sigChecks:stdgo.Pointer<stdgo.GoInt>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _err = (null : stdgo.Error);
        var __0:stdgo.Error = (null : stdgo.Error), __1:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
var _hintCert = __1, _hintErr = __0;
        var _considerCandidate = function(_certType:stdgo.GoInt, _candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Void {
            if (stdgo._internal.crypto.x509.X509__alreadyInChain._alreadyInChain(_candidate, _currentChain)) {
                return;
            };
            if (_sigChecks == null) {
                _sigChecks = stdgo.Go.pointer((0 : stdgo.GoInt));
            };
            _sigChecks.value++;
            if ((_sigChecks.value > (100 : stdgo.GoInt) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("x509: signature check attempts limit reached while verifying certificate chain" : stdgo.GoString));
                return;
            };
            {
                var _err = (@:check2r _c.checkSignatureFrom(_candidate) : stdgo.Error);
                if (_err != null) {
                    if (_hintErr == null) {
                        _hintErr = _err;
                        _hintCert = _candidate;
                    };
                    return;
                };
            };
            _err = @:check2r _candidate._isValid(_certType, _currentChain, _opts);
            if (_err != null) {
                if (_hintErr == null) {
                    _hintErr = _err;
                    _hintCert = _candidate;
                };
                return;
            };
            {
                final __value__ = _certType;
                if (__value__ == ((2 : stdgo.GoInt))) {
                    _chains = (_chains.__append__(stdgo._internal.crypto.x509.X509__appendToFreshChain._appendToFreshChain(_currentChain, _candidate)));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _childChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
                    {
                        var __tmp__ = @:check2r _candidate._buildChains(stdgo._internal.crypto.x509.X509__appendToFreshChain._appendToFreshChain(_currentChain, _candidate), _sigChecks, _opts);
                        _childChains = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _chains = (_chains.__append__(...(_childChains : Array<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>)));
                };
            };
        };
        for (__1 => _root in @:check2r (@:checkr _opts ?? throw "null pointer dereference").roots._findPotentialParents(_c)) {
            _considerCandidate((2 : stdgo.GoInt), _root);
        };
        for (__2 => _intermediate in @:check2r (@:checkr _opts ?? throw "null pointer dereference").intermediates._findPotentialParents(_c)) {
            _considerCandidate((1 : stdgo.GoInt), _intermediate);
        };
        if (((_chains.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = (null : stdgo.Error);
        };
        if (((_chains.length == (0 : stdgo.GoInt)) && (_err == null) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError(_c, _hintErr, _hintCert) : stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError));
        };
        return { _0 : _chains, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function verify( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _opts:stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _err = (null : stdgo.Error);
        if (((@:checkr _c ?? throw "null pointer dereference").raw.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : stdgo._internal.crypto.x509.X509__errNotParsed._errNotParsed };
                _chains = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < @:check2r _opts.intermediates._len() : Bool)) {
                var __tmp__ = @:check2r _opts.intermediates._cert(_i), _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/x509: error fetching intermediate: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
if (((@:checkr _c ?? throw "null pointer dereference").raw.length) == ((0 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : stdgo._internal.crypto.x509.X509__errNotParsed._errNotParsed };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        if (false) {
            var _systemPool = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            if (((_opts.roots == null || (_opts.roots : Dynamic).__nil__) && (((_systemPool == null || (_systemPool : Dynamic).__nil__) || (@:checkr _systemPool ?? throw "null pointer dereference")._systemPool : Bool)) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = @:check2r _c._systemVerify((stdgo.Go.setRef(_opts) : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>));
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (((_opts.roots != null && ((_opts.roots : Dynamic).__nil__ == null || !(_opts.roots : Dynamic).__nil__)) && (@:checkr _opts.roots ?? throw "null pointer dereference")._systemPool : Bool)) {
                var __tmp__ = @:check2r _c._systemVerify((stdgo.Go.setRef(_opts) : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>)), _platformChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) || (@:check2r _opts.roots._len() == (0 : stdgo.GoInt)) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _platformChains, _1 : _err };
                        _chains = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        if ((_opts.roots == null || (_opts.roots : Dynamic).__nil__)) {
            _opts.roots = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            if ((_opts.roots == null || (_opts.roots : Dynamic).__nil__)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError(stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr) : stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError)) };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _err = @:check2r _c._isValid((0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>), (stdgo.Go.setRef(_opts) : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>));
        if (_err != null) {
            return { _0 : _chains, _1 : _err };
        };
        if (((_opts.dNSName.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = @:check2r _c.verifyHostname(_opts.dNSName?.__copy__());
            if (_err != null) {
                return { _0 : _chains, _1 : _err };
            };
        };
        var _candidateChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        if (@:check2r _opts.roots._contains(_c)) {
            _candidateChains = (new stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>(1, 1, ...[(new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)]) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        } else {
            {
                var __tmp__ = @:check2r _c._buildChains((new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>), (null : stdgo.Pointer<stdgo.GoInt>), (stdgo.Go.setRef(_opts) : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>));
                _candidateChains = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : _err };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if ((_opts.keyUsages.length) == ((0 : stdgo.GoInt))) {
            _opts.keyUsages = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>(1, 1, ...[(1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        };
        for (__1 => _eku in _opts.keyUsages) {
            if (_eku == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _candidateChains, _1 : (null : stdgo.Error) };
                    _chains = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _chains = (new stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>((0 : stdgo.GoInt).toBasic(), (_candidateChains.length)) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        for (__2 => _candidate in _candidateChains) {
            if (stdgo._internal.crypto.x509.X509__checkChainForKeyUsage._checkChainForKeyUsage(_candidate, _opts.keyUsages)) {
                _chains = (_chains.__append__(_candidate));
            };
        };
        if ((_chains.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (4 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError)) };
                _chains = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : _chains, _1 : (null : stdgo.Error) };
            _chains = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _isValid( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _certType:stdgo.GoInt, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        if ((((@:checkr _c ?? throw "null pointer dereference").unhandledCriticalExtensions.length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension() : stdgo._internal.crypto.x509.X509_UnhandledCriticalExtension.UnhandledCriticalExtension));
        };
        if (((_currentChain.length) > (0 : stdgo.GoInt) : Bool)) {
            var _child = _currentChain[((_currentChain.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _child ?? throw "null pointer dereference").rawIssuer, (@:checkr _c ?? throw "null pointer dereference").rawSubject)) {
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (5 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
            };
        };
        var _now = ((@:checkr _opts ?? throw "null pointer dereference").currentTime?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_now.isZero()) {
            _now = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        if (_now.before((@:checkr _c ?? throw "null pointer dereference").notBefore?.__copy__())) {
            return stdgo.Go.asInterface(({ cert : _c, reason : (1 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), detail : stdgo._internal.fmt.Fmt_sprintf.sprintf(("current time %s is before %s" : stdgo.GoString), stdgo.Go.toInterface(_now.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").notBefore.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))))?.__copy__() } : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        } else if (_now.after((@:checkr _c ?? throw "null pointer dereference").notAfter?.__copy__())) {
            return stdgo.Go.asInterface(({ cert : _c, reason : (1 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), detail : stdgo._internal.fmt.Fmt_sprintf.sprintf(("current time %s is after %s" : stdgo.GoString), stdgo.Go.toInterface(_now.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").notAfter.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))))?.__copy__() } : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        var _maxConstraintComparisons = ((@:checkr _opts ?? throw "null pointer dereference").maxConstraintComparisions : stdgo.GoInt);
        if (_maxConstraintComparisons == ((0 : stdgo.GoInt))) {
            _maxConstraintComparisons = (250000 : stdgo.GoInt);
        };
        var _comparisonCount = (0 : stdgo.GoInt);
        var _comparisonCount__pointer__ = stdgo.Go.pointer(_comparisonCount);
        if (((_certType == (1 : stdgo.GoInt)) || (_certType == (2 : stdgo.GoInt)) : Bool)) {
            if ((_currentChain.length) == ((0 : stdgo.GoInt))) {
                return stdgo._internal.errors.Errors_new_.new_(("x509: internal error: empty chain when appending CA cert" : stdgo.GoString));
            };
        };
        if (((((_certType == (1 : stdgo.GoInt)) || (_certType == (2 : stdgo.GoInt)) : Bool)) && @:check2r _c._hasNameConstraints() : Bool)) {
            var _toCheck = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
            for (__1 => _c in _currentChain) {
                if (@:check2r _c._hasSANExtension()) {
                    _toCheck = (_toCheck.__append__(_c));
                };
            };
            for (__2 => _sanCert in _toCheck) {
                var _err = (stdgo._internal.crypto.x509.X509__forEachSAN._forEachSAN(@:check2r _sanCert._getSANExtension(), function(_tag:stdgo.GoInt, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
                    {
                        final __value__ = _tag;
                        if (__value__ == ((1 : stdgo.GoInt))) {
                            var _name = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            var __tmp__ = stdgo._internal.crypto.x509.X509__parseRFC2821Mailbox._parseRFC2821Mailbox(_name?.__copy__()), _mailbox:stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse rfc822Name %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mailbox)));
                            };
                            {
                                var _err = (@:check2r _c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("email address" : stdgo.GoString), _name?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_mailbox)), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    return stdgo._internal.crypto.x509.X509__matchEmailConstraint._matchEmailConstraint((stdgo.Go.typeAssert((_parsedName : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox)) : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox)?.__copy__(), (stdgo.Go.typeAssert((_constraint : stdgo.GoString)) : stdgo.GoString)?.__copy__());
                                }, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").permittedEmailAddresses), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").excludedEmailAddresses)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _name = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_name?.__copy__()), __3:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse dnsName %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
                                };
                            };
                            {
                                var _err = (@:check2r _c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("DNS name" : stdgo.GoString), _name?.__copy__(), stdgo.Go.toInterface(_name), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    return stdgo._internal.crypto.x509.X509__matchDomainConstraint._matchDomainConstraint((stdgo.Go.typeAssert((_parsedName : stdgo.GoString)) : stdgo.GoString)?.__copy__(), (stdgo.Go.typeAssert((_constraint : stdgo.GoString)) : stdgo.GoString)?.__copy__());
                                }, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").permittedDNSDomains), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").excludedDNSDomains)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            var _name = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_name?.__copy__()), _uri:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: URI SAN %q failed to parse" : stdgo.GoString), stdgo.Go.toInterface(_name));
                            };
                            {
                                var _err = (@:check2r _c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("URI" : stdgo.GoString), _name?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_uri)), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    return stdgo._internal.crypto.x509.X509__matchURIConstraint._matchURIConstraint((stdgo.Go.typeAssert((_parsedName : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>), (stdgo.Go.typeAssert((_constraint : stdgo.GoString)) : stdgo.GoString)?.__copy__());
                                }, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").permittedURIDomains), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").excludedURIDomains)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            var _ip = (_data : stdgo._internal.net.Net_IP.IP);
                            {
                                var _l = (_ip.length : stdgo.GoInt);
                                if (((_l != (4 : stdgo.GoInt)) && (_l != (16 : stdgo.GoInt)) : Bool)) {
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: IP SAN %x failed to parse" : stdgo.GoString), stdgo.Go.toInterface(_data));
                                };
                            };
                            {
                                var _err = (@:check2r _c._checkNameConstraints(_comparisonCount__pointer__, _maxConstraintComparisons, ("IP address" : stdgo.GoString), (_ip.string() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), function(_parsedName:stdgo.AnyInterface, _constraint:stdgo.AnyInterface):{ var _0 : Bool; var _1 : stdgo.Error; } {
                                    return stdgo._internal.crypto.x509.X509__matchIPConstraint._matchIPConstraint((stdgo.Go.typeAssert((_parsedName : stdgo._internal.net.Net_IP.IP)) : stdgo._internal.net.Net_IP.IP), (stdgo.Go.typeAssert((_constraint : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)) : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>));
                                }, stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").permittedIPRanges), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").excludedIPRanges)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else {};
                    };
                    return (null : stdgo.Error);
                }) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((_certType == (1 : stdgo.GoInt)) && ((!(@:checkr _c ?? throw "null pointer dereference").basicConstraintsValid || !(@:checkr _c ?? throw "null pointer dereference").isCA : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (0 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        if (((@:checkr _c ?? throw "null pointer dereference").basicConstraintsValid && ((@:checkr _c ?? throw "null pointer dereference").maxPathLen >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _numIntermediates = ((_currentChain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_numIntermediates > (@:checkr _c ?? throw "null pointer dereference").maxPathLen : Bool)) {
                return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (3 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
            };
        };
        if (!stdgo._internal.crypto.x509.X509__boringAllowCert._boringAllowCert(_c)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (4 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkNameConstraints( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _count:stdgo.Pointer<stdgo.GoInt>, _maxConstraintComparisons:stdgo.GoInt, _nameType:stdgo.GoString, _name:stdgo.GoString, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _excludedValue = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_excluded)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _count.value = (_count.value + (_excludedValue.len()) : stdgo.GoInt);
        if ((_count.value > _maxConstraintComparisons : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (8 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _excludedValue.len() : Bool)) {
                var _constraint = (_excludedValue.index(_i).interface_() : stdgo.AnyInterface);
var __tmp__ = _match(_parsedName, _constraint), _match:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), _err.error().__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
                };
if (_match) {
                    return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q is excluded by constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_nameType), stdgo.Go.toInterface(_name), _constraint).__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
                };
                _i++;
            };
        };
        var _permittedValue = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_permitted)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _count.value = (_count.value + (_permittedValue.len()) : stdgo.GoInt);
        if ((_count.value > _maxConstraintComparisons : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (8 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo.Go.str()?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        var _ok = (true : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _permittedValue.len() : Bool)) {
                var _constraint = (_permittedValue.index(_i).interface_() : stdgo.AnyInterface);
var _err:stdgo.Error = (null : stdgo.Error);
{
                    {
                        var __tmp__ = _match(_parsedName, _constraint);
                        _ok = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), _err.error().__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
                    };
                };
if (_ok) {
                    break;
                };
                _i++;
            };
        };
        if (!_ok) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError(_c, (2 : stdgo._internal.crypto.x509.X509_InvalidReason.InvalidReason), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q is not permitted by any constraint" : stdgo.GoString), stdgo.Go.toInterface(_nameType), stdgo.Go.toInterface(_name))?.__copy__()) : stdgo._internal.crypto.x509.X509_CertificateInvalidError.CertificateInvalidError));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _systemVerify( _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = _c;
        var _chains = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>), _1 : (null : stdgo.Error) };
            _chains = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
