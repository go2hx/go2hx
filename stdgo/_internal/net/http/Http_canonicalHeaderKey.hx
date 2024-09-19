package stdgo._internal.net.http;
function canonicalHeaderKey(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.textproto.Textproto_canonicalMIMEHeaderKey.canonicalMIMEHeaderKey(_s?.__copy__())?.__copy__();
    }
