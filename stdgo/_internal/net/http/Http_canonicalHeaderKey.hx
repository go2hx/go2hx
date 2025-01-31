package stdgo._internal.net.http;
function canonicalHeaderKey(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.http.Http__textproto._textproto.canonicalMIMEHeaderKey(_s?.__copy__())?.__copy__();
    }
