package stdgo._internal.crypto.tls;
function cipherSuiteName(_id:stdgo.GoUInt16):stdgo.GoString {
        for (__65 => _c in stdgo._internal.crypto.tls.Tls_ciphersuites.cipherSuites()) {
            if ((@:checkr _c ?? throw "null pointer dereference").iD == (_id)) {
                return (@:checkr _c ?? throw "null pointer dereference").name?.__copy__();
            };
        };
        for (__66 => _c in stdgo._internal.crypto.tls.Tls_insecureciphersuites.insecureCipherSuites()) {
            if ((@:checkr _c ?? throw "null pointer dereference").iD == (_id)) {
                return (@:checkr _c ?? throw "null pointer dereference").name?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("0x%04X" : stdgo.GoString), stdgo.Go.toInterface(_id))?.__copy__();
    }
