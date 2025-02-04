package stdgo._internal.net.url;
function pathUnescape(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return stdgo._internal.net.url.Url__unescape._unescape(_s?.__copy__(), (2 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
    }
