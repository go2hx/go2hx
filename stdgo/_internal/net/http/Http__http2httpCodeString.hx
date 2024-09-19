package stdgo._internal.net.http;
function _http2httpCodeString(_code:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _code;
            if (__value__ == ((200 : stdgo.GoInt))) {
                return ("200" : stdgo.GoString);
            } else if (__value__ == ((404 : stdgo.GoInt))) {
                return ("404" : stdgo.GoString);
            };
        };
        return stdgo._internal.strconv.Strconv_itoa.itoa(_code)?.__copy__();
    }
