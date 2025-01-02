package stdgo._internal.net.http;
function _htmlEscape(_s:stdgo.GoString):stdgo.GoString {
        return @:check2r stdgo._internal.net.http.Http__htmlReplacer._htmlReplacer.replace(_s?.__copy__())?.__copy__();
    }
