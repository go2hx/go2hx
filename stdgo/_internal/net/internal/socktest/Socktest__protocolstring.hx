package stdgo._internal.net.internal.socktest;
function _protocolString(_proto:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _proto;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return ("default" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                return ("tcp" : stdgo.GoString);
            } else if (__value__ == ((17 : stdgo.GoInt))) {
                return ("udp" : stdgo.GoString);
            } else {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_proto))?.__copy__();
            };
        };
    }
