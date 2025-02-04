package stdgo._internal.net.url;
function parseRequestURI(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.url.Url__parse._parse(_rawURL?.__copy__(), true), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _rawURL?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>)) };
        };
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
