package stdgo._internal.crypto.tls;
function _rsaKA(_version:stdgo.GoUInt16):stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement {
        return stdgo.Go.asInterface((new stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement() : stdgo._internal.crypto.tls.Tls_t_rsakeyagreement.T_rsaKeyAgreement));
    }
