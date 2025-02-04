package stdgo._internal.net.http.httputil;
var _reqWriteExcludeHeaderDump : stdgo.GoMap<stdgo.GoString, Bool> = ({
        final x = new stdgo.GoMap.GoStringMap<Bool>();
        x.__defaultValue__ = () -> false;
        x.set(("Host" : stdgo.GoString), true);
x.set(("Transfer-Encoding" : stdgo.GoString), true);
x.set(("Trailer" : stdgo.GoString), true);
        x;
    } : stdgo.GoMap<stdgo.GoString, Bool>);
