package stdgo._internal.crypto.tls;
function versionName(_version:stdgo.GoUInt16):stdgo.GoString {
        {
            final __value__ = _version;
            if (__value__ == ((768 : stdgo.GoUInt16))) {
                return ("SSLv3" : stdgo.GoString);
            } else if (__value__ == ((769 : stdgo.GoUInt16))) {
                return ("TLS 1.0" : stdgo.GoString);
            } else if (__value__ == ((770 : stdgo.GoUInt16))) {
                return ("TLS 1.1" : stdgo.GoString);
            } else if (__value__ == ((771 : stdgo.GoUInt16))) {
                return ("TLS 1.2" : stdgo.GoString);
            } else if (__value__ == ((772 : stdgo.GoUInt16))) {
                return ("TLS 1.3" : stdgo.GoString);
            } else {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("0x%04X" : stdgo.GoString), stdgo.Go.toInterface(_version))?.__copy__();
            };
        };
    }
