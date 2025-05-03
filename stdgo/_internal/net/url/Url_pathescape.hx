package stdgo._internal.net.url;
function pathEscape(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L282"
        return stdgo._internal.net.url.Url__escape._escape(_s?.__copy__(), (2 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__();
    }
