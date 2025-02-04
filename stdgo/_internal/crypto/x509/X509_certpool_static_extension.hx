package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.CertPool_asInterface) class CertPool_static_extension {
    @:keep
    @:tdfield
    static public function equal( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _other:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if (((_s == null || (_s : Dynamic).__nil__) || (_other == null || (_other : Dynamic).__nil__) : Bool)) {
            return _s == (_other);
        };
        if ((((@:checkr _s ?? throw "null pointer dereference")._systemPool != (@:checkr _other ?? throw "null pointer dereference")._systemPool) || ((@:checkr _s ?? throw "null pointer dereference")._haveSum.length != ((@:checkr _other ?? throw "null pointer dereference")._haveSum.length)) : Bool)) {
            return false;
        };
        for (_h => _ in (@:checkr _s ?? throw "null pointer dereference")._haveSum) {
            if (!((@:checkr _other ?? throw "null pointer dereference")._haveSum[_h] ?? false)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function subjects( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        var _res = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((@:check2r _s._len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _lc in (@:checkr _s ?? throw "null pointer dereference")._lazyCerts) {
            _res[(_i : stdgo.GoInt)] = _lc._rawSubject;
        };
        return _res;
    }
    @:keep
    @:tdfield
    static public function appendCertsFromPEM( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _pemCerts:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        var _ok = false;
        while (((_pemCerts.length) > (0 : stdgo.GoInt) : Bool)) {
            var _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_pemCerts);
                _block = @:tmpset0 __tmp__._0;
                _pemCerts = @:tmpset0 __tmp__._1;
            };
            if ((_block == null || (_block : Dynamic).__nil__)) {
                break;
            };
            if ((((@:checkr _block ?? throw "null pointer dereference").type != ("CERTIFICATE" : stdgo.GoString)) || ((@:checkr _block ?? throw "null pointer dereference").headers.length != (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            var _certBytes = (@:checkr _block ?? throw "null pointer dereference").bytes;
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_certBytes), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var _lazyCert:stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0 = ({ once : ({} : stdgo._internal.sync.Sync_once.Once), _v : (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>) } : stdgo._internal.crypto.x509.X509_t__struct_0.T__struct_0);
            @:check2r _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)?.__copy__(), ((@:checkr _cert ?? throw "null pointer dereference").rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
                _lazyCert.do_(function():Void {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_certBytes);
                        _lazyCert._v = @:tmpset0 __tmp__._0;
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
    @:tdfield
    static public function _addCertFunc( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _rawSum224:stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, _rawSubject:stdgo.GoString, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; }):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if (_getCert == null) {
            throw stdgo.Go.toInterface(("getCert can\'t be nil" : stdgo.GoString));
        };
        if (((@:checkr _s ?? throw "null pointer dereference")._haveSum[_rawSum224] ?? false)) {
            return;
        };
        (@:checkr _s ?? throw "null pointer dereference")._haveSum[_rawSum224] = true;
        (@:checkr _s ?? throw "null pointer dereference")._lazyCerts = ((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.__append__(({ _rawSubject : (_rawSubject : stdgo.Slice<stdgo.GoUInt8>), _getCert : _getCert } : stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert)));
        (@:checkr _s ?? throw "null pointer dereference")._byName[_rawSubject] = (((@:checkr _s ?? throw "null pointer dereference")._byName[_rawSubject] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__((((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
    }
    @:keep
    @:tdfield
    static public function addCert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if ((_cert == null || (_cert : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("adding nil Certificate to CertPool" : stdgo.GoString));
        };
        @:check2r _s._addCertFunc(stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)?.__copy__(), ((@:checkr _cert ?? throw "null pointer dereference").rawSubject : stdgo.GoString)?.__copy__(), function():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
            return { _0 : _cert, _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    @:tdfield
    static public function _contains( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return false;
        };
        return ((@:checkr _s ?? throw "null pointer dereference")._haveSum[stdgo._internal.crypto.sha256.Sha256_sum224.sum224((@:checkr _cert ?? throw "null pointer dereference").raw)] ?? false);
    }
    @:keep
    @:tdfield
    static public function _findPotentialParents( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        };
        var __0:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), __1:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), __2:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
var _mismatchKeyID = __2, _oneKeyID = __1, _matchingKeyID = __0;
        for (__1 => _c in ((@:checkr _s ?? throw "null pointer dereference")._byName[((@:checkr _cert ?? throw "null pointer dereference").rawIssuer : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoInt>))) {
            var __tmp__ = @:check2r _s._cert(_c), _candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            var _kidMatch = (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId, (@:checkr _cert ?? throw "null pointer dereference").authorityKeyId) : Bool);
            if (_kidMatch) {
                _matchingKeyID = (_matchingKeyID.__append__(_candidate));
            } else if ((((((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId.length == (0 : stdgo.GoInt)) && (((@:checkr _cert ?? throw "null pointer dereference").authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) : Bool)) || (((((@:checkr _candidate ?? throw "null pointer dereference").subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _cert ?? throw "null pointer dereference").authorityKeyId.length == (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                _oneKeyID = (_oneKeyID.__append__(_candidate));
            } else {
                _mismatchKeyID = (_mismatchKeyID.__append__(_candidate));
            };
        };
        var _found = (((_matchingKeyID.length) + (_oneKeyID.length) : stdgo.GoInt) + (_mismatchKeyID.length) : stdgo.GoInt);
        if (_found == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        };
        var _candidates = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((0 : stdgo.GoInt).toBasic(), _found) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        _candidates = (_candidates.__append__(...(_matchingKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)));
        _candidates = (_candidates.__append__(...(_oneKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)));
        _candidates = (_candidates.__append__(...(_mismatchKeyID : Array<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)));
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
        for (_k => _v in (@:checkr _s ?? throw "null pointer dereference")._byName) {
            var _indexes = (new stdgo.Slice<stdgo.GoInt>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            _indexes.__copyTo__(_v);
            (@:checkr _p ?? throw "null pointer dereference")._byName[_k] = _indexes;
        };
        for (_k => _ in (@:checkr _s ?? throw "null pointer dereference")._haveSum) {
            (@:checkr _p ?? throw "null pointer dereference")._haveSum[_k] = true;
        };
        (@:checkr _p ?? throw "null pointer dereference")._lazyCerts.__copyTo__((@:checkr _s ?? throw "null pointer dereference")._lazyCerts);
        return _p;
    }
    @:keep
    @:tdfield
    static public function _cert( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, _n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._lazyCerts[(_n : stdgo.GoInt)]._getCert();
    }
    @:keep
    @:tdfield
    static public function _len( _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return (0 : stdgo.GoInt);
        };
        return ((@:checkr _s ?? throw "null pointer dereference")._lazyCerts.length);
    }
}
