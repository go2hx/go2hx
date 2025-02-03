package stdgo.crypto.x509;
class Certificate_static_extension {
    static public function createCRL(_c:Certificate, _rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:Array<RevokedCertificate>, _now:stdgo._internal.time.Time_Time.Time, _expiry:stdgo._internal.time.Time_Time.Time):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _priv = (_priv : stdgo.AnyInterface);
        final _revokedCerts = ([for (i in _revokedCerts) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.createCRL(_c, _rand, _priv, _revokedCerts, _now, _expiry);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function checkCRLSignature(_c:Certificate, _crl:CertificateList):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _crl = (_crl : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkCRLSignature(_c, _crl);
    }
    static public function _getSANExtension(_c:Certificate):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return [for (i in stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._getSANExtension(_c)) i];
    }
    static public function _hasNameConstraints(_c:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._hasNameConstraints(_c);
    }
    static public function checkSignature(_c:Certificate, _algo:SignatureAlgorithm, _signed:Array<std.UInt>, _signature:Array<std.UInt>):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _signed = ([for (i in _signed) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _signature = ([for (i in _signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkSignature(_c, _algo, _signed, _signature);
    }
    static public function checkSignatureFrom(_c:Certificate, _parent:Certificate):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.checkSignatureFrom(_c, _parent);
    }
    static public function _hasSANExtension(_c:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._hasSANExtension(_c);
    }
    static public function equal(_c:Certificate, _other:Certificate):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _other = (_other : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.equal(_c, _other);
    }
    static public function verifyHostname(_c:Certificate, _h:String):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _h = (_h : stdgo.GoString);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.verifyHostname(_c, _h);
    }
    static public function _buildChains(_c:Certificate, _currentChain:Array<Certificate>, _sigChecks:stdgo.Pointer<StdTypes.Int>, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _currentChain = ([for (i in _currentChain) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._buildChains(_c, _currentChain, _sigChecks, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function verify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension.verify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function _isValid(_c:Certificate, _certType:StdTypes.Int, _currentChain:Array<Certificate>, _opts:VerifyOptions):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _certType = (_certType : stdgo.GoInt);
        final _currentChain = ([for (i in _currentChain) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._isValid(_c, _certType, _currentChain, _opts);
    }
    static public function _checkNameConstraints(_c:Certificate, _count:stdgo.Pointer<StdTypes.Int>, _maxConstraintComparisons:StdTypes.Int, _nameType:String, _name:String, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _maxConstraintComparisons = (_maxConstraintComparisons : stdgo.GoInt);
        final _nameType = (_nameType : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        final _parsedName = (_parsedName : stdgo.AnyInterface);
        final _match = _match;
        final _permitted = (_permitted : stdgo.AnyInterface);
        final _excluded = (_excluded : stdgo.AnyInterface);
        return stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._checkNameConstraints(_c, _count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);
    }
    static public function _systemVerify(_c:Certificate, _opts:VerifyOptions):stdgo.Tuple<Array<Array<Certificate>>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_Certificate_static_extension.Certificate_static_extension._systemVerify(_c, _opts);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
}
