package stdgo.crypto.tls;
class Certificate_static_extension {
    static public function _leaf(_c:Certificate):stdgo.Tuple<stdgo._internal.crypto.x509.X509_Certificate.Certificate, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_Certificate_static_extension.Certificate_static_extension._leaf(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
