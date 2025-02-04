package stdgo._internal.crypto.x509;
function newCertPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> {
        return (stdgo.Go.setRef(({ _byName : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>), _haveSum : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.crypto.x509.X509_t_sum224.T_sum224", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 28), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>) : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>) } : stdgo._internal.crypto.x509.X509_certpool.CertPool)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    }
