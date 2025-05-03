package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertPool_asInterface) class CertPool_static_extension {
    @:keep
    @:tdfield
    static public function equal( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _other:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L256"
        if ((({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = _other;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L257"
            return _s == (_other);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L259"
        if ((((@:checkr _s ?? throw "null pointer dereference")._systemPool != (@:checkr _other ?? throw "null pointer dereference")._systemPool) || ((@:checkr _s ?? throw "null pointer dereference")._haveSum.length != ((@:checkr _other ?? throw "null pointer dereference")._haveSum.length)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L260"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L262"
        for (_h => _ in (@:checkr _s ?? throw "null pointer dereference")._haveSum) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L263"
            if (!((@:checkr _other ?? throw "null pointer dereference")._haveSum[_h] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L264"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L267"
        return true;
    }
    @:keep
    @:tdfield
    static public function subjects( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        var _res = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_s._len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L248"
        for (_i => _lc in (@:checkr _s ?? throw "null pointer dereference")._lazyCerts) {
            _res[(_i : stdgo.GoInt)] = _lc._rawSubject;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L251"
        return _res;
    }
    @:keep
    @:tdfield
    static public function appendCertsFromPEM( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _pemCerts:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        var _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L208"
        while (((_pemCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            var _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_pemCerts);
                _block = @:tmpset0 __tmp__._0;
                _pemCerts = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L211"
            if (({
                final value = _block;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L212"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L214"
            if ((((@:checkr _block ?? throw "null pointer dereference").type != ("CERTIFICATE" : stdgo.GoString)) || ((@:checkr _block ?? throw "null pointer dereference").headers.length != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L215"
                continue;
            };
            var _certBytes = (@:checkr _block ?? throw "null pointer dereference").bytes;
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_certBytes), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L220"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L221"
                continue;
            };
            var _lazyCert:stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0 = ({ once : ({} : stdgo._internal.sync.Sync_once.Once), _v : (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>) } : stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L227"
            _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)?.__copy__(), ((@:checkr _cert ?? throw "null pointer dereference").rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L228"
                _lazyCert.do_(function():Void {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_certBytes);
                        _lazyCert._v = @:tmpset0 __tmp__._0;
                    };
                    _certBytes = (null : stdgo.Slice<stdgo.GoUInt8>);
                });
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L233"
                return { _0 : _lazyCert._v, _1 : (null : stdgo.Error) };
            });
            _ok = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L238"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _addCertFunc( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _rawSum224:stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, _rawSubject:stdgo.GoString, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; }):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L184"
        if (_getCert == null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L185"
            throw stdgo.Go.toInterface(("getCert can\'t be nil" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L189"
        if (((@:checkr _s ?? throw "null pointer dereference")._haveSum[_rawSum224] ?? false)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L190"
            return;
        };
        (@:checkr _s ?? throw "null pointer dereference")._haveSum[_rawSum224] = true;
        (@:checkr _s ?? throw "null pointer dereference")._lazyCerts = ((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.__append__(({ _rawSubject : (_rawSubject : stdgo.Slice<stdgo.GoUInt8>), _getCert : _getCert } : stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert)) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>);
        (@:checkr _s ?? throw "null pointer dereference")._byName[_rawSubject] = (((@:checkr _s ?? throw "null pointer dereference")._byName[_rawSubject] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__((((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function addCert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L170"
        if (({
            final value = _cert;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L171"
            throw stdgo.Go.toInterface(("adding nil Certificate to CertPool" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L173"
        _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)?.__copy__(), ((@:checkr _cert ?? throw "null pointer dereference").rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L174"
            return { _0 : _cert, _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    @:tdfield
    static public function _contains( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L162"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L163"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L165"
        return ((@:checkr _s ?? throw "null pointer dereference")._haveSum[stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)] ?? false);
    }
    @:keep
    @:tdfield
    static public function _findPotentialParents( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L122"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L123"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        };
        var _matchingKeyID:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), _oneKeyID:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), _mismatchKeyID:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L133"
        for (__1 => _c in ((@:checkr _s ?? throw "null pointer dereference")._byName[((@:checkr _cert ?? throw "null pointer dereference").rawIssuer : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoInt>))) {
            var __tmp__ = _s._cert(_c), _candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L135"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L136"
                continue;
            };
            var _kidMatch = (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId, (@:checkr _cert ?? throw "null pointer dereference").authorityKeyId) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L139"
            if (_kidMatch) {
                _matchingKeyID = (_matchingKeyID.__append__(_candidate) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            } else if ((((((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId.length == (0 : stdgo.GoInt)) && (((@:checkr _cert ?? throw "null pointer dereference").authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) || (((((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _cert ?? throw "null pointer dereference").authorityKeyId.length == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                _oneKeyID = (_oneKeyID.__append__(_candidate) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            } else {
                _mismatchKeyID = (_mismatchKeyID.__append__(_candidate) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            };
        };
        var _found = (((_matchingKeyID.length) + (_oneKeyID.length) : stdgo.GoInt) + (_mismatchKeyID.length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L151"
        if (_found == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L152"
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        };
        var _candidates = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((0 : stdgo.GoInt).toBasic(), _found) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        _candidates = (_candidates.__append__(...(_matchingKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        _candidates = (_candidates.__append__(...(_oneKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        _candidates = (_candidates.__append__(...(_mismatchKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L158"
        return _candidates;
    }
    @:keep
    @:tdfield
    static public function clone( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        var _p = (stdgo.Go.setRef(({ _byName : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>), _lazyCerts : (new stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>(((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>), _haveSum : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_t_sum224.T_sum224", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 28), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>) : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>), _systemPool : (@:checkr _s ?? throw "null pointer dereference")._systemPool } : stdgo._internal.crypto.x509.X509_certpool.CertPool)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L88"
        for (_k => _v in (@:checkr _s ?? throw "null pointer dereference")._byName) {
            var _indexes = (new stdgo.Slice<stdgo.GoInt>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L90"
            _indexes.__copyTo__(_v);
            (@:checkr _p ?? throw "null pointer dereference")._byName[_k] = _indexes;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L93"
        for (_k => _ in (@:checkr _s ?? throw "null pointer dereference")._haveSum) {
            (@:checkr _p ?? throw "null pointer dereference")._haveSum[_k] = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L96"
        (@:checkr _p ?? throw "null pointer dereference")._lazyCerts.__copyTo__((@:checkr _s ?? throw "null pointer dereference")._lazyCerts);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L97"
        return _p;
    }
    @:keep
    @:tdfield
    static public function _cert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L77"
        return (@:checkr _s ?? throw "null pointer dereference")._lazyCerts[(_n : stdgo.GoInt)]._getCert();
    }
    @:keep
    @:tdfield
    static public function _len( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L69"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L70"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/cert_pool.go#L72"
        return ((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length);
    }
}
