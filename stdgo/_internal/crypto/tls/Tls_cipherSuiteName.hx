package stdgo._internal.crypto.tls;
function cipherSuiteName(_id:stdgo.GoUInt16):stdgo.GoString {
        for (__65 => _c in stdgo._internal.crypto.tls.Tls_cipherSuites.cipherSuites()) {
            if (_c.id == (_id)) {
                return _c.name?.__copy__();
            };
        };
        for (__66 => _c in stdgo._internal.crypto.tls.Tls_insecureCipherSuites.insecureCipherSuites()) {
            if (_c.id == (_id)) {
                return _c.name?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("0x%04X" : stdgo.GoString), stdgo.Go.toInterface(_id))?.__copy__();
    }
