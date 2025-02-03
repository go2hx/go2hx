package stdgo.crypto.x509;
class CertPool_static_extension {
    static public function equal(_s:CertPool, _other:CertPool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _other = (_other : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.equal(_s, _other);
    }
    static public function subjects(_s:CertPool):Array<Array<std.UInt>> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return [for (i in stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.subjects(_s)) [for (i in i) i]];
    }
    static public function appendCertsFromPEM(_s:CertPool, _pemCerts:Array<std.UInt>):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _pemCerts = ([for (i in _pemCerts) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.appendCertsFromPEM(_s, _pemCerts);
    }
    static public function _addCertFunc(_s:CertPool, _rawSum224:T_sum224, _rawSubject:String, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _rawSubject = (_rawSubject : stdgo.GoString);
        final _getCert = _getCert;
        stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._addCertFunc(_s, _rawSum224, _rawSubject, _getCert);
    }
    static public function addCert(_s:CertPool, _cert:Certificate):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.addCert(_s, _cert);
    }
    static public function _contains(_s:CertPool, _cert:Certificate):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._contains(_s, _cert);
    }
    static public function _findPotentialParents(_s:CertPool, _cert:Certificate):Array<Certificate> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _cert = (_cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return [for (i in stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._findPotentialParents(_s, _cert)) i];
    }
    static public function clone(_s:CertPool):CertPool {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension.clone(_s);
    }
    static public function _cert(_s:CertPool, _n:StdTypes.Int):stdgo.Tuple<Certificate, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._cert(_s, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _len(_s:CertPool):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        return stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension._len(_s);
    }
}
