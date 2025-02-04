package stdgo._internal.net.url;
function queryEscape(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.url.Url__escape._escape(_s?.__copy__(), (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
