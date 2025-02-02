package stdgo._internal.net.internal.socktest;
function _familyString(_family:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                return ("inet4" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                return ("inet6" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return ("local" : stdgo.GoString);
            } else {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_family))?.__copy__();
            };
        };
    }
