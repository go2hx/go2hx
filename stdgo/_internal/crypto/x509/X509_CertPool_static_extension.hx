package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertPool_asInterface) class CertPool_static_extension {
    @:keep
    static public function equal( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _other:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if (((_s == null || (_s : Dynamic).__nil__) || (_other == null || (_other : Dynamic).__nil__) : Bool)) {
            return _s == (_other);
        };
        if (((_s._systemPool != _other._systemPool) || (_s._haveSum.length != (_other._haveSum.length)) : Bool)) {
            return false;
        };
        for (_h => _ in _s._haveSum) {
            if (!(_other._haveSum[_h] ?? false)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function subjects( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        var _res = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_s._len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _lc in _s._lazyCerts) {
            _res[(_i : stdgo.GoInt)] = _lc._rawSubject;
        };
        return _res;
    }
    @:keep
    static public function appendCertsFromPEM( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _pemCerts:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        var _ok = false;
        while (((_pemCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            var _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_pemCerts);
                _block = __tmp__._0;
                _pemCerts = __tmp__._1;
            };
            if ((_block == null || (_block : Dynamic).__nil__)) {
                break;
            };
            if (((_block.type != ("CERTIFICATE" : stdgo.GoString)) || (_block.headers.length != (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            var _certBytes = _block.bytes;
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_certBytes), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var _lazyCert:stdgo._internal.crypto.x509.X509_T__struct_0.T__struct_0 = ({ once : ({} : stdgo._internal.sync.Sync_Once.Once), _v : (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>) } : stdgo._internal.crypto.x509.X509_T__struct_0.T__struct_0);
            _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_cert.raw)?.__copy__(), (_cert.rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
                _lazyCert.do_(function():Void {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_certBytes);
                        _lazyCert._v = __tmp__._0;
                    };
                    _certBytes = (null : stdgo.Slice<stdgo.GoUInt8>);
                });
                return { _0 : _lazyCert._v, _1 : (null : stdgo.Error) };
            });
            _ok = true;
        };
        return _ok;
    }
    @:keep
    static public function _addCertFunc( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _rawSum224:stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, _rawSubject:stdgo.GoString, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if (_getCert == null) {
            throw stdgo.Go.toInterface(("getCert can\'t be nil" : stdgo.GoString));
        };
        if ((_s._haveSum[_rawSum224] ?? false)) {
            return;
        };
        _s._haveSum[_rawSum224] = true;
        _s._lazyCerts = (_s._lazyCerts.__append__(({ _rawSubject : (_rawSubject : stdgo.Slice<stdgo.GoUInt8>), _getCert : _getCert } : stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert)));
        _s._byName[_rawSubject] = ((_s._byName[_rawSubject] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__(((_s._lazyCerts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
    }
    @:keep
    static public function addCert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if ((_cert == null || (_cert : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("adding nil Certificate to CertPool" : stdgo.GoString));
        };
        _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_cert.raw)?.__copy__(), (_cert.rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
            return { _0 : _cert, _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    static public function _contains( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return false;
        };
        return (_s._haveSum[stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_cert.raw)] ?? false);
    }
    @:keep
    static public function _findPotentialParents( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        };
        var __0:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>), __1:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>), __2:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
var _mismatchKeyID = __2, _oneKeyID = __1, _matchingKeyID = __0;
        for (__1 => _c in (_s._byName[(_cert.rawIssuer : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoInt>))) {
            var __tmp__ = _s._cert(_c), _candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var _kidMatch = (stdgo._internal.bytes.Bytes_equal.equal(_candidate.subjectKeyId, _cert.authorityKeyId) : Bool);
            if (_kidMatch) {
                _matchingKeyID = (_matchingKeyID.__append__(_candidate));
            } else if (((((_candidate.subjectKeyId.length == (0 : stdgo.GoInt)) && ((_cert.authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) || ((((_candidate.subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && (_cert.authorityKeyId.length == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                _oneKeyID = (_oneKeyID.__append__(_candidate));
            } else {
                _mismatchKeyID = (_mismatchKeyID.__append__(_candidate));
            };
        };
        var _found = (((_matchingKeyID.length) + (_oneKeyID.length) : stdgo.GoInt) + (_mismatchKeyID.length) : stdgo.GoInt);
        if (_found == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        };
        var _candidates = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>((0 : stdgo.GoInt).toBasic(), _found) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        _candidates = (_candidates.__append__(...(_matchingKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)));
        _candidates = (_candidates.__append__(...(_oneKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)));
        _candidates = (_candidates.__append__(...(_mismatchKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)));
        return _candidates;
    }
    @:keep
    static public function clone( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        var _p = (stdgo.Go.setRef(({ _byName : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>), _lazyCerts : (new stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>((_s._lazyCerts.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_s._lazyCerts.length : stdgo.GoInt).toBasic() > 0 ? (_s._lazyCerts.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>), _haveSum : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_T_sum224.T_sum224", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 28), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>), _systemPool : _s._systemPool } : stdgo._internal.crypto.x509.X509_CertPool.CertPool)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        for (_k => _v in _s._byName) {
            var _indexes = (new stdgo.Slice<stdgo.GoInt>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            stdgo.Go.copySlice(_indexes, _v);
            _p._byName[_k] = _indexes;
        };
        for (_k => _ in _s._haveSum) {
            _p._haveSum[_k] = true;
        };
        stdgo.Go.copySlice(_p._lazyCerts, _s._lazyCerts);
        return _p;
    }
    @:keep
    static public function _cert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>, _n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        return _s._lazyCerts[(_n : stdgo.GoInt)]._getCert();
    }
    @:keep
    static public function _len( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return (0 : stdgo.GoInt);
        };
        return (_s._lazyCerts.length);
    }
}
